Tasks = new Mongo.Collection("tasks");

if (Meteor.isClient) {
	// This code only runs on the client
	Meteor.subscribe("tasks");

	Template.task.helpers({
		isOwner: function() {
			return this.owner === Meteor.userId();
		}
	});

	Template.body.helpers({
		tasks: function() {
			if (Session.get("hideCompleted")) {
				return Tasks.find({checked: {$ne: true}}, {sort: {createdAt: -1}});
			} else {
				return Tasks.find({}, {sort: {createdAt: -1}});
			}
		},
		hideCompleted: function() {
			return Session.get("hideCompleted");
		},
		incompleteCount: function() {
			return Tasks.find({checked: {$ne: true}}).count();
		}
	});

	Template.body.events({
		"submit .new-task": function(event) {
			var text = event.target.text.value;

			Meteor.call("addTask", text);

			event.target.text.value = '';

			return false;
		},
		"click .toggle-checked": function() {
			Meteor.call("setChecked", this._id, ! this.checked);
		},
		"click .delete": function() {
			Meteor.call("deleteTask", this._id);
		},
		"click .hide-completed input": function(event) {
			Session.set("hideCompleted", event.target.checked);
		},
		"click .toggle-private": function() {
			Meteor.call("setPrivate", this._id, ! this.private);
		}
	});

	Accounts.ui.config({
		passwordSignupFields: "USERNAME_ONLY"
	});
}

Meteor.methods({
	addTask: function(text) {
		if (! Meteor.user()) {
			throw new Meteor.Error("not-authorized");
		}

		Tasks.insert({
			text: text,
			createdAt: new Date(),
			owner: Meteor.userId(),
			username: Meteor.user().username
		});
	},
	deleteTask: function(taskId) {
		var task = Tasks.findOne(taskId);

		if (task.private && task.owner !== Meteor.userId()) {
			throw new Meteor.Error("not-authorized");
		}

		Tasks.remove(this._id);
	},
	setChecked: function(taskId, setChecked) {
		var task = Tasks.findOne(taskId);

		if (task.private && task.owner !== Meteor.userId()) {
			throw new Meteor.Error("not-authorized");
		}

		Tasks.update(taskId, {$set: {checked: setChecked}});
	},
	setPrivate: function(taskId, setToPrivate) {
		var task = Tasks.findOne(taskId);

		if (task.owner !== Meteor.userId()) {
			throw new Meteor.Error("not-authorized");
		}

		Tasks.update(taskId, {$set: {private: setToPrivate}});
	}
});

if (Meteor.isServer) {
	Meteor.publish("tasks", function() {
		return Tasks.find({
			$or: [
				{ private: {$ne: true} },
				{ owner: this.userId }
			]
		});
	});
}
