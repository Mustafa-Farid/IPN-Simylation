crtmqm -u QMTHPBANKONE.DLQ -p 2412 QMTHPBANKONE

crtmqm -u QMTHPBANKTWO.DLQ -p 2413 QMTHPBANKTWO

crtmqm -u QMTHPBANKTHREE.DLQ -p 2414 QMTHPBANKTHREE

crtmqm -u QMBANKONE.DLQ -p 2421 QMBANKONE

crtmqm -u QMBANKTWO.DLQ -p 2431 QMBANKTWO

crtmqm -u QMBANKTHREE.DLQ -p 2441 QMBANKTHREE


strmqm QMTHPBANKONE

strmqm QMTHPBANKTWO

strmqm QMTHPBANKTHREE

strmqm QMBANKONE

strmqm QMBANKTWO

strmqm QMBANKTHREE


runmqsc QMTHPBANKONE < QMTHPBANKONE.mqsc

runmqsc QMBANKONE <	QMBANKONE.mqsc

runmqsc QMTHPBANKTWO < QMTHPBANKTWO.mqsc
	
runmqsc QMBANKTWO < QMBANKTWO.mqsc

runmqsc QMTHPBANKTHREE < QMTHPBANKTHREE.mqsc

runmqsc QMBANKTHREE < QMBANKTHREE.mqsc
