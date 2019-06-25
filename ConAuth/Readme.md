# Content Authentication
So the idea is to make Cryptographic Signing for content, At its core, It would be something like each time you publish a piece of content you sign the content with your private key and your public key is available to everyone who can then use this key to authenticate your content. I would actually like to make it agnostic of the underlying crypto algorithm and think of the algorithm as something like a kernel within my framework, so if you want to make it more secure you just change the kernel to a higher level, so on so forth.
Primarily, I would like to work on images and text signing because videos can just be extrapolated by frames of images but might have some inherent issues of stitching together the signed frames. I've read some ongoing research to make this possible but I'm not entirely sure if this can be done. 
Why will it be useful? I think this one of the answers to deep fakes because if you have people signing the content they produce then no matter how well you replicate it, it would be very easy to figure out that the content is actually fake. It could also be used in tackling fake news, I don't think the answer to that lies in training better discriminators, which would then spawn better generators. The answer here lies in a separate field, When you enforce this as a standard then any news produced will be accountable and the source can be figured out easily. 


I'm pursuing this project as a part of pioneer.app

## Week 1 Progress
-I had planned to research in the field and find papers as a proof of concept of my idea & replicating them, i.e is it possible to sign an image with a private key and authenticate it. The papers I found aren't secure and generalizable. I went back to the drawing board.

