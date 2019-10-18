book_author(endersGame, orsonScottCard).
book_author(speakerForTheDead, orsonScottCard).
book_author(xenocide, orsonScottCard).
book_author(childrenOfTheMind, orsonScottCard).
book_author(interviewWithTheVampire, anneRice).
book_author(theVampireLestat, anneRice).
book_author(gettingThingsDone, davidAllen).
book_author(codeGirls, lizaMundy).
book_author(theRichestManInBabylon, clasonGeorgeS).
book_author(theImpostersHandbook, robConery).
book_author(tuesdaysWithMorie, mitchAlbom).
book_author(surprisedByJoy, cSLewis).
book_author(theLionTheWitchAndTheWardrobe, cSLewis).
book_author(theProblemOfPain, cSLewis).

book_genre(endersGame, scifi).
book_genre(speakerForTheDead, scifi).
book_genre(xenocide, scifi).
book_genre(childrenOfTheMind, scifi).
book_genre(interviewWithTheVampire, horror).
book_genre(theVampireLestat, horror).
book_genre(gettingThingsDone, productivity).
book_genre(codeGirls, history).
book_genre(theRichestManInBabylon, finances).
book_genre(theImpostersHandbook, programming).
book_genre(tuesdaysWithMorie, memoir).
book_genre(surprisedByJoy, memoir).
book_genre(theLionTheWitchAndTheWardrobe, fantasy).
book_genre(theProblemOfPain, christian).

have_read(endersGame).
have_read(speakerForTheDead).
have_read(xenocide).
have_read(childrenOfTheMind).
have_read(interviewWithTheVampire).
have_read(theVampireLestat).
have_read(gettingThingsDone).
have_read(codeGirls).
have_read(theRichestManInBabylon).
have_read(theImpostersHandbook).
have_read(tuesdaysWithMorie).
have_read(surprisedByJoy).
have_read(theLionTheWitchAndTheWardrobe).

author_genre(X, Y) :- book_author(Z, X), book_genre(Z, Y).
