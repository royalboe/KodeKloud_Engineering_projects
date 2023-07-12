SSH into App Server 1:
`` ssh tony@stapp01 ``  
`` sudo su - ``  

Delete lines that have the keyword 'software':  

`` sed -e '/software/d' /home/BSD.txt > /home/BSD_DELETE.txt ``  

Replace the keyword 'the' with 'is' making sure this change doesn't affect strings containing the keyword:  

`` sed 's/\<the\>/is/g' /home/BSD.txt > /home/BSD_REPLACE.txt ``