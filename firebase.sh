#!/bin/bash

day=$(date "+%d")
month="1233"

#curl "https://android.googleapis.com/gcm/send/fYFVeJQJ2CY:APA91bGrFGRmy-sY6NaF8atX11K0bKUUNXLVzkomGJFcP-lvne78UzYeE91IvWMxU2hBAUJkFlBVdYDkcwLG8vO8cYV0X3Wgvv6MbVodUfc0gls7HZcwJL4LFxjg0y0-ksEhKjpeFC5P" --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AAAANVIuLLA:APA91bFVym0UAy836uQh-__S8sFDX0_MN38aZaxGR2TsdbVgPeFxhZH0vXw_-E99y9UIczxPGHE1XC1CHXen5KPJlEASJ5bAnTUNMOzvrxsGuZFAX1_ZB-ejqBwaIo24RUU5QQkLQb9IBUFwLKCvaUH9tzOl9mPhFw"
server_key="AAAANVIuLLA:APA91bFVym0UAy836uQh-__S8sFDX0_MN38aZaxGR2TsdbVgPeFxhZH0vXw_-E99y9UIczxPGHE1XC1CHXen5KPJlEASJ5bAnTUNMOzvrxsGuZFAX1_ZB-ejqBwaIo24RUU5QQkLQb9IBUFwLKCvaUH9tzOl9mPhFw"
end_point_url="curl "https://fcm.googleapis.com/fcm/send/d1Gr6trwlS0:APA91bFThR6p4fwBFoKUVmPlpPI-Tqlb38ZJ9udJiiDQpuqwad2-GQkI2YI56LhCdTFYGG9jh2_NO8Y2ZRnKQpHbppsQ3Xhfu3dOaIyacvqS68cr5sNf5zfO8czcRxuMpbdBaD1EgJ9v"  --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AAAANVIuLLA:APA91bFVym0UAy836uQh-__S8sFDX0_MN38aZaxGR2TsdbVgPeFxhZH0vXw_-E99y9UIczxPGHE1XC1CHXen5KPJlEASJ5bAnTUNMOzvrxsGuZFAX1_ZB-ejqBwaIo24RUU5QQkLQb9IBUFwLKCvaUH9tzOl9mPhFw""
path="C:\Program Files\Git\mingw64\bin"


ECHO "day is $day"
ECHO "Month is $month"

# ris=`curl $end_point_url --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=$server_key"`0
echo $ris
# stampa= `echo $end_point_url --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=$server_key"`


ris=`curl "https://fcm.googleapis.com/fcm/send/d1Gr6trwlS0:APA91bFThR6p4fwBFoKUVmPlpPI-Tqlb38ZJ9udJiiDQpuqwad2-GQkI2YI56LhCdTFYGG9jh2_NO8Y2ZRnKQpHbppsQ3Xhfu3dOaIyacvqS68cr5sNf5zfO8czcRxuMpbdBaD1EgJ9v"  --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AAAANVIuLLA:APA91bFVym0UAy836uQh-__S8sFDX0_MN38aZaxGR2TsdbVgPeFxhZH0vXw_-E99y9UIczxPGHE1XC1CHXen5KPJlEASJ5bAnTUNMOzvrxsGuZFAX1_ZB-ejqBwaIo24RUU5QQkLQb9IBUFwLKCvaUH9tzOl9mPhFw"`
echo $ris


curl "https://fcm.googleapis.com/fcm/send/difXeQHhLWg:APA91bHIZ00MHrZubNwpPUociIdQnWOZ0sVJALEkNkISk6RZ5lNGRXVL7eG0mZuoZjNkW8NMqhFVb96CTNn5981CJSKEezRJMXmEjbNbNreBBEY4ELAXy8jQlo5vUw_2OW01EgZKTuoX"  --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=BH9Nq-8xXBPtWrqis9UK7u3vrVt9HEulFfzzSi2ujZU4ribE6VJcZcS9NUz4V9MPBAx6j9gr4GiRf9jpHgba96U="

curl "https://fcm.googleapis.com/fcm/send/d1Gr6trwlS0:APA91bFThR6p4fwBFoKUVmPlpPI-Tqlb38ZJ9udJiiDQpuqwad2-GQkI2YI56LhCdTFYGG9jh2_NO8Y2ZRnKQpHbppsQ3Xhfu3dOaIyacvqS68cr5sNf5zfO8czcRxuMpbdBaD1EgJ9v"  --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=BH9Nq-8xXBPtWrqis9UK7u3vrVt9HEulFfzzSi2ujZU4ribE6VJcZcS9NUz4V9MPBAx6j9gr4GiRf9jpHgba96U="
BH9Nq-8xXBPtWrqis9UK7u3vrVt9HEulFfzzSi2ujZU4ribE6VJcZcS9NUz4V9MPBAx6j9gr4GiRf9jpHgba96U=



https://plus.google.com/u/0/communities/116811218914790806708
https://developers.google.com/training/certification/mobile-web-specialist/StudyGuide_MobileWebSpecialist.pdf	
https://console.firebase.google.com/project/fpgdg-d63ab/settings/cloudmessaging/
http://localhost/PWA/mylab/pwa-training-labs/push-notification-lab/app/index.html
https://android.jlelse.eu/firebase-push-notification-using-curl-command-devoid-backend-e63795d282c4


curl "https://fcm.googleapis.com/fcm/send/cHdqUzB7Jho:APA91bGYjKxe9RBCZ8DSTNWAx-ViE0eo4nL2GX2IqVkOQ9G7SkbwQUx-Jr2iz12mTVCBsC4nl06w0HLCdlHrEuPPWfhkPWkVakedS4UWMFHdkhHSxg-DXeEht2aS5_k69dimkC7M0DSO"  --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AIzaSyAH3M_H4g8DZCRadV0vk_h8A9OgcdKSSbg"

https://fcm.googleapis.com/fcm/send/cHdqUzB7Jho:APA91bGYjKxe9RBCZ8DSTNWAx-ViE0eo4nL2GX2IqVkOQ9G7SkbwQUx-Jr2iz12mTVCBsC4nl06w0HLCdlHrEuPPWfhkPWkVakedS4UWMFHdkhHSxg-DXeEht2aS5_k69dimkC7M0DSO


curl "https://fcm.googleapis.com/fcm/send/cHdqUzB7Jho:APA91bGYjKxe9RBCZ8DSTNWAx-ViE0eo4nL2GX2IqVkOQ9G7SkbwQUx-Jr2iz12mTVCBsC4nl06w0HLCdlHrEuPPWfhkPWkVakedS4UWMFHdkhHSxg-DXeEht2aS5_k69dimkC7M0DSO"  --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AAAA7tsc2hc:APA91bHU0ZoAjYBny-zY7Mx4W1lige7OIbMfyC_cmHzjwuSQRUVUK0YXwgmUF-9S9kO4psyuLkKtkvO-9Qm3TNQyoXbErvBy3R_3rB8cmbjSZwkwUiVdvghpUgXrUxM1DADLDJacIgq5"
curl "https://fcm.googleapis.com/fcm/send/fLxZ3lm3ngk:APA91bEza5fK3JubczffB63NN_0vWCmCEnRdLU_XmkJQBQaLJXXlpq2y810b0UKvAadj_OxnLhM5OtL8hrM-yN91gLr55Vym5_wH1uT-2pecM2KL_2jsasMF-ZiWiYXxdaYnsYBL9tTn"  --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AAAA7tsc2hc:APA91bGTOlrRGBaN4WCd_VzZVVHe8hnbJXpUE5S4D52wlkTl9n17KZAv5p2_cIq7-7LstJYApEVDhWHgVX3kxvX_lIDe3VkxXYeWDH_DKVnKVprrZ4y3NFGBkGI9DKmNsSumnlwZXAOT"

https://fcm.googleapis.com/fcm/send/fnpybYxjQ1E:APA91bFmfv4Q6U1J4gIRDmI40Mmid75hTwzF2hqtJaLMdWeoCfiuhMJ8pBkrMZmxdtrRUsMk84SkdcAWlq45H-BfTWQw7w5o0b5KiDFt6uD3L-AA69yNDvQg4noiV7nRpwxEtoWrNCld

" --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AAAA5s-eJGI:APA91bGBBTWRYOERsR-N2UFBGGG6vjmDxQrfFowYIIalsQRcZPqn-M1iMi6PO50uUpAewxcq3ijfOYxnP-Q2fxMOLsCFqmNTDFmvQBrX-f5nMfhGsMROiVw6IU7j2GyTmR5XCvTe4tuC"
TTL: 60
Authorization: key=BFk7YdfLzzGuhFmsdHEIxbg4C8--OXrEj1PS0OCqe1zE8ODGEezMOWT2vLU0ACRnbFP1Q5LQG3BRNnlDWNIQCsE
Host: fcm.googleapis.com
Content-Length: 0


curl "https://android.googleapis.com/gcm/send/dAb5cB1BX3U:APA91bHaRRZL9WLvMJsVryFdZDsg0SuC0BUE2FcOrJCbjF4KtxTsgyAeQnrRlea84zU-Fqt1s4rBWlGhFh-7Y8hCS6Qy6wEAzwPAxm6Av8Et66XrUvXLgjf2jE4WNSoyjCTb7Z9x-Ftn" --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=AAAA5s-eJGI:APA91bGBBTWRYOERsR-N2UFBGGG6vjmDxQrfFowYIIalsQRcZPqn-M1iMi6PO50uUpAewxcq3ijfOYxnP-Q2fxMOLsCFqmNTDFmvQBrX-f5nMfhGsMROiVw6IU7j2GyTmR5XCvTe4tuC"

curl "https://fcm.googleapis.com/fcm/send/eSOvVN55Ouo:APA91bHl_sdv_gHvQiZTvxOa5BsvoBl7eK5BBMHLfTGNny6xOXmGE9bXi2XtW6vnQXKWtWOcCgir0DJ58MkuD-6SLCH0LJCmhfpQwKiPtYqv1p-neiGmvkX--8wT0ijTlezLDjmw7Nq2" --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: key=BFk7YdfLzzGuhFmsdHEIxbg4C8--OXrEj1PS0OCqe1zE8ODGEezMOWT2vLU0ACRnbFP1Q5LQG3BRNnlDWNIQCsE"

--header "Authorization: WebPush eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJodHRwczovL2ZjbS5nb29nbGVhcGlzLmNvbSIsImV4cCI6MTQ2NjY2ODU5NCwic3ViIjoibWFpbHRvOnNpbXBsZS1wdXNoLWRlbW9AZ2F1bnRmYWNlLmNvLnVrIn0.Ec0VR8dtf5qb8Fb5Wk91br-evfho9sZT6jBRuQwxVMFyK5S8bhOjk8kuxvilLqTBmDXJM5l3uVrVOQirSsjq0A" --header "Crypto-Key: p256ecdsa=BDd3_hVL9fZi9Ybo2UUzA284WG5FZR30_95YeZJsiApwXKpNcF1rRPF3foIiBHXRdJI2Qhumhf6_LFTeZaNndIo"



curl "https://fcm.googleapis.com/fcm/send/eSOvVN55Ouo:APA91bHl_sdv_gHvQiZTvxOa5BsvoBl7eK5BBMHLfTGNny6xOXmGE9bXi2XtW6vnQXKWtWOcCgir0DJ58MkuD-6SLCH0LJCmhfpQwKiPtYqv1p-neiGmvkX--8wT0ijTlezLDjmw7Nq2" --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Authorization: WebPush AAAA5s-eJGI:APA91bGBBTWRYOERsR-N2UFBGGG6vjmDxQrfFowYIIalsQRcZPqn-M1iMi6PO50uUpAewxcq3ijfOYxnP-Q2fxMOLsCFqmNTDFmvQBrX-f5nMfhGsMROiVw6IU7j2GyTmR5XCvTe4tuC" --header "Crypto-Key: p256ecdsa=BJkogMzfeYBlo3MZLsN_T95XuWEwnBEvF7jdyeVzEmqoKw88mW5CEgrDxqFmzfYkM--Z-rLCgnVsI1uwQxF6H-4="

curl "https://fcm.googleapis.com/fcm/send/eSOvVN55Ouo:APA91bHl_sdv_gHvQiZTvxOa5BsvoBl7eK5BBMHLfTGNny6xOXmGE9bXi2XtW6vnQXKWtWOcCgir0DJ58MkuD-6SLCH0LJCmhfpQwKiPtYqv1p-neiGmvkX--8wT0ijTlezLDjmw7Nq2" 
--request POST 
--header "TTL: 60" 
--header "Content-Length: 0" 
--header "Authorization: WebPush eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJodHRwczovL2ZjbS5nb29nbGVhcGlzLmNvbSIsImV4cCI6MTQ2NjY2ODU5NCwic3ViIjoibWFpbHRvOnNpbXBsZS1wdXNoLWRlbW9AZ2F1bnRmYWNlLmNvLnVrIn0.Ec0VR8dtf5qb8Fb5Wk91br-evfho9sZT6jBRuQwxVMFyK5S8bhOjk8kuxvilLqTBmDXJM5l3uVrVOQirSsjq0A" 
--header "Crypto-Key: p256ecdsa=BDd3_hVL9fZi9Ybo2UUzA284WG5FZR30_95YeZJsiApwXKpNcF1rRPF3foIiBHXRdJI2Qhumhf6_LFTeZaNndIo"



curl "https://fcm.googleapis.com/fcm/send/eSOvVN55Ouo:APA91bHl_sdv_gHvQiZTvxOa5BsvoBl7eK5BBMHLfTGNny6xOXmGE9bXi2XtW6vnQXKWtWOcCgir0DJ58MkuD-6SLCH0LJCmhfpQwKiPtYqv1p-neiGmvkX--8wT0ijTlezLDjmw7Nq2" 
--request POST 
--header "TTL: 60" 
--header "Content-Length: 0" 
--header "Authorization: WebPush eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiJ9.eyJhdWQiOiJodHRwczovL2ZjbS5nb29nbGVhcGlzLmNvbSIsImV4cCI6MTQ2NjY2ODU5NCwic3ViIjoibWFpbHRvOnNpbXBsZS1wdXNoLWRlbW9AZ2F1bnRmYWNlLmNvLnVrIn0.Ec0VR8dtf5qb8Fb5Wk91br-evfho9sZT6jBRuQwxVMFyK5S8bhOjk8kuxvilLqTBmDXJM5l3uVrVOQirSsjq0A" 
--header "Crypto-Key: p256ecdsa=BJkogMzfeYBlo3MZLsN_T95XuWEwnBEvF7jdyeVzEmqoKw88mW5CEgrDxqFmzfYkM--Z-rLCgnVsI1uwQxF6H-4="


curl "https://fcm.googleapis.com/fcm/send/eSOvVN55Ouo:APA91bHl_sdv_gHvQiZTvxOa5BsvoBl7eK5BBMHLfTGNny6xOXmGE9bXi2XtW6vnQXKWtWOcCgir0DJ58MkuD-6SLCH0LJCmhfpQwKiPtYqv1p-neiGmvkX--8wT0ijTlezLDjmw7Nq2" --request POST --header "TTL: 60" --header "Content-Length: 0" --header "Crypto-Key: dh=AAAA5s-eJGI:APA91bGBBTWRYOERsR-N2UFBGGG6vjmDxQrfFowYIIalsQRcZPqn-M1iMi6PO50uUpAewxcq3ijfOYxnP-Q2fxMOLsCFqmNTDFmvQBrX-f5nMfhGsMROiVw6IU7j2GyTmR5XCvTe4tuC;p256ecdsa=BJkogMzfeYBlo3MZLsN_T95XuWEwnBEvF7jdyeVzEmqoKw88mW5CEgrDxqFmzfYkM--Z-rLCgnVsI1uwQxF6H-4=""

dh=AAAA5s-eJGI:APA91bGBBTWRYOERsR-N2UFBGGG6vjmDxQrfFowYIIalsQRcZPqn-M1iMi6PO50uUpAewxcq3ijfOYxnP-Q2fxMOLsCFqmNTDFmvQBrX-f5nMfhGsMROiVw6IU7j2GyTmR5XCvTe4tuC,p256ecdsa=BJkogMzfeYBlo3MZLsN_T95XuWEwnBEvF7jdyeVzEmqoKw88mW5CEgrDxqFmzfYkM--Z-rLCgnVsI1uwQxF6H-4="















