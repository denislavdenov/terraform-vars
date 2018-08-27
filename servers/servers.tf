{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 variable \'93ami\'94 \{\}\
variable \'93instance_type\'94 \{\}\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 resource "aws_instance" "example" \{\
  ami           		= \'93$\{var.ami\}\'94\
  instance_type 		= \'93$\{var.instance_type\}\'94\
\}\
\
output \'93public_ip\'94\
\{\
value = \'93$(aws_instance.example.public_ip)\'94\
\
\}\
}