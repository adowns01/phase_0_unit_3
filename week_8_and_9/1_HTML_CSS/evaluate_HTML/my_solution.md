## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

Everything seems to be a span. For example, there are a lot of code that has class = "comhead" with only one little bit of text in it. 
bash 
```bash 
<span class="comhead"> (usabilitypost.com) 
</span>
```

Instead they could've used syntactic tags and created a <comhead></comhead> tag.
But everything does seem to have logical names, which make it easy to follow.

 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? 
Did you like the way they used HTML tags?  Please use examples with your arguments.


I couldn't find a class or id that was used improperly. There are a lot of ids named things like "score_7798823, score_7799520,  down_7798823, down_7799520, up_7798823 etc" this makes sense for this site since there are SO many pages that are created. 

All of the html tags that I saw were closed properly, the only problem I had with them is detailed in the question above. 



 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.

I was very surprised to see how small the CSS file was. Though it is a basic website, I was just surprised after seeing the length of the html. 

They used CSS inline and included a CSS document as well. The major stuff seems to be in the CSS document. The CSS added in the html seems to be for spacing reasons. For example: 
```bash 
<tr style="height:5px">
</tr>
```

That code is repeated 30 times in the html document. If instead they created a class for it then they wouldn't have had to write out so much code each time. 


4) Did the authors include anything you didn't immediately understand? 
If so, what?

I haven't used tables in HTML since the pre phase 0 prep, so I had forgotten a lot of those related tags. For example: 
```bash 
<tr></tr>is a table row 
<th></th> is a table heading
```

5) How did the authors organize the CSS file? Was it DRY?

Like I said earlier, the css file is actually very short and easy to read compared to the html, though not completely dry. 
The most obvious non-DRY aspect is the font-family. All of the font on the page (except for two) are Verdana. So instead of defining it for each object, they couldn've set them all to Verdana, and then had exceptions for the other two. Here are the lines I am talking about:
```bash 
.admin td   { font-family:Verdana; font-size:8.5pt; color:#000000; }
.subtext td { font-family:Verdana; font-size:  7pt; color:#828282; }

input    { font-family:Courier; font-size:10pt; color:#000000; }
input[type=\"submit\"] { font-family:Verdana; }
textarea { font-family:Courier; font-size:10pt; color:#000000; }

.default { font-family:Verdana; font-size: 10pt; color:#828282; }
.admin   { font-family:Verdana; font-size:8.5pt; color:#000000; }
.title   { font-family:Verdana; font-size: 10pt; color:#828282; }
.adtitle { font-family:Verdana; font-size:  9pt; color:#828282; }
.subtext { font-family:Verdana; font-size:  7pt; color:#828282; }
.yclinks { font-family:Verdana; font-size:  8pt; color:#828282; }
.pagetop { font-family:Verdana; font-size: 10pt; color:#222222; }
.comhead { font-family:Verdana; font-size:  8pt; color:#828282; }
.comment { font-family:Verdana; font-size:  9pt; }
.dead    { font-family:Verdana; font-size:  9pt; color:#dddddd; }
```


6) Did the authors incorporate any responsive design into the site?

The site is reponsive. When you make it smaller/larger the content area decreases/increases so the text wraps with your screen. However, nothing else like font size or layout changes. 
 
7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?


I personally think that it is a super ugly website. Even though the coding isn't the DRYist it is easy to understand.


## REFLECTION

I couldn't figure out a way to un-consolidate the HTML code in sublime, so I used this resource: 
http://www.textfixer.com/html/uncompress-html-code.php
which worked very well. I'm glad I found it becasue there is no way I was going through by hand!

What I found most interesting in this challenge was seeing how a dynamic website worked and how the JS interacted with 
the HTML/CSS. For example this piece in the CSS
```bash
input[type=\"submit\"] { font-family:Verdana; }
```

I also find it interesting that these are the only two languages where no one comments anything. 

