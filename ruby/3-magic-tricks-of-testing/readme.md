# Rails Conf 2013 The Magic Tricks of Testing by Sandi Metz

[Video](https://www.youtube.com/watch?v=URSWYvyc42M)

## Unit test Goals

- Thorough
- Stable
- Fast
- Few

## Messages

### Types

- Incoming
- Outgoing
- Sent to self

### Flavors

| Flavor  | Return           | Change           |
| ------- | ---------------- | ---------------- |
| Query   | return something | change nothing   |
| Command | return nothing   | change something |

Command message has side effects.
Some messages are **both** a query and a command. So, it has hidden side effects.

Popping something off a stack is both a query and command, because it returns the item off the top of the stack, and also mutates the stack.

## Chart

| Message      | Query          | Command                           |
| ------------ | -------------- | --------------------------------- |
| Incoming     | Assert result  | Assert direct public side effects |
| Sent to Self | Ignore         | Ignore                            |
| Outgoing     | Ignore         | Expect to send                    |

### Incoming

Test the interface, not the implementation. That means you can change the implementation without breaking the tests.

Direct side effects - responsibility of the last Ruby class

Receiver of incoming messages has sole responsibility for asserting the result of direct public side effects.

### Sent to Self

Testing private methods, locks you in to your current implementation, and make it hard to refactor. However, it may be valuable early on, as you're writing the code to give you errors near the offending line of code.

### Outgoing

One class' outgoing query message is another class' incoming query message.

#### Query

If a message has no-visible side-effects, the sender should **not** test it.

#### Command

Don't unit test distant side effects. That would be an integration test. It's not this class' job to do that side effect. It's just this class' job to send the message.

That requires a mock.

Code that allows change is stable.

The message that you're sending is more stable than the distant side effect.

It's also faster.

## Mocks

You have to keep mocks in sync with the API. There are ways to do this automatically.

## Summary

- Be a minimalist
- Use good judgement - you can break the rules sometimes
- Test everything once
- Test the interface - not the implementation
- Trust collaborators - mock
- Insist on simplicity
