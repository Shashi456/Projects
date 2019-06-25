# Content Authentication

<b>What is the idea</b>

- Content authentication - It can be anything your voice, your face, the art your create, the photos and videos you publish.  
- As far as is publishable content is considered , at its core, It would be something like each time you publish a piece of content you sign the content with your private key and your public key is available to everyone who can then use this key to authenticate your content. The idea originated from the joe rogan voice forgery, and one other separate application is a channel authentication based voice calling service. 
-  Primarily, I would like to work on images and text signing because videos can just be extrapolated by frames of images but might have some inherent issues of stitching together the signed frames.
- Another application, I thought of initially is a each time you call someone, how can you be sure that the person at the other end of the phone is someone real and not a bot who is just forging the persons voice? 
- In the deep fakes regime, if you could sign content you create/make sure of a way where in authentication is possible and something originates using technology which has you in it, then this might just protect you. 


<b>Why will it be useful?</b> 
- I think this one of the answers to deep fakes because if you have people signing the content they produce then no matter how well you replicate it, it would be very easy to figure out that the content is actually fake. 
- It could also be used in tackling fake news, I don't think the answer to that lies in training better discriminators, which would then spawn better generators. The answer here lies in a separate field, When you enforce this as a standard then any news produced will be accountable and the source can be figured out easily.
- How can you be sure that the person you are talking to on the other end is the person he claims to be and not a bot faking the persons voice? 

<b>Who is it for ?</b> 
- This is something i hope is usable by everyone who creates content. So if you are a podcast creator, a writer, a photographer, or just a general solution against deepfakes. What i'm trying to accomplish is content authentication in the sense that when you write a publish your content, it should be verifiable that it originated from you. 
- The voice channel authentication app, I hope that it becomes a defacto standard, but the user here is everyone who calls other people, this is just an added layer of security to make your experience seeamless.
- Deepfakes, I think curbing the usage of deepfakes to harm your image is extremely important and if all content was tied to a source, then it would be very easy to see that its fake. 


I'm pursuing this project as a part of pioneer.app .

## Week 1 Progress
- I had planned to research in the field and find papers as a proof of concept of my idea & replicating them, i.e is it possible to sign an image with a private key and authenticate it. The papers I found aren't secure and generalizable. I went back to the drawing board.
- I tried to find a cryptographic solution to this where in, I would just simply say create cryptographic public and private keys and sign the content youve published with these keys, Turns out that image signing has a variety of issues, and one viable way to sign the metadata and most other approaches are of encrypting the data, which would then again need homomorphic encryption which isn't generally scalable and viable IMO.
- So i thought up a solution where in we can use blockchains, I think a blockchain + IPFS combo might be one solution that i'm looking for. 


## Week 2 Targets 
- [ ] Make a basic Voice channel authentication app and complete the MVP for voice channels.
- [ ] Talk to a few Blockchain + IPFS solution founders who might be interested in creating the idea/ help me in the process
- [ ] Start on a content MVP


