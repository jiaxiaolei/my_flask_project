

siege -c 1000 -r 100 -b http://127.0.0.1:13579/3344

# an example
"""
$ siege -c 1000 -r 100 -b http://127.0.0.1:13579/3344


HTTP/1.0 200     0.02 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.01 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.00 secs:      49 bytes ==> GET  /3344
[error] socket: -2136484096 connection timed out.: Connection timed out
[error] socket: 849221376 connection timed out.: Connection timed out
[error] socket: 1327605504 connection timed out.: Connection timed out
[error] socket: -2010593536 connection timed out.: Connection timed out
[error] socket: 1344390912 connection timed out.: Connection timed out
[error] socket: 1596172032 connection timed out.: Connection timed out
HTTP/1.0 200     0.00 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.00 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.00 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.00 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.01 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.01 secs:      49 bytes ==> GET  /3344
HTTP/1.0 200     0.01 secs:      49 bytes ==> GET  /3344


Transactions:		       25361 hits
Availability:		       99.45 %
Elapsed time:		      261.27 secs
Data transferred:	        1.19 MB
Response time:		        1.30 secs
Transaction rate:	       97.07 trans/sec
Throughput:		        0.00 MB/sec
Concurrency:		      126.50
Successful transactions:       25361
Failed transactions:	         139
Longest transaction:	      168.89
Shortest transaction:	        0.03
"""
