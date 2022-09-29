require 'json'
result = {
  "data": {
    "domains": [
      {
        "id": "0x43fcd34d8589090581e1d2bdcf5dc17feb05b2006401fb1c3fdded335a465b51",
        "labelName": "brantly",
        "name": "brantly.eth",
        "labelhash": "0x68562fc74af4dcfac633a803c2f57c2b826827b47f797b6ab4e468dc8607b5d0",
        "subdomains": [
          {
            "id": "0x1bd80197873de285b67cc9dcf3b2bf196ec112b701f34e89dfc4bfc9fb17b0b2",
            "name": "test2.brantly.eth",
            "subdomains": []
          },
          {
            "id": "0x792ef1526e73978355fb32b589a7bde11d8d61842d7d406c9ed9e52e3269be95",
            "name": "test3.brantly.eth",
            "subdomains": []
          },
          {
            "id": "0xca079e17571d71237dc229ef40f035d4bf2863a4a577fc339711378323cb73a4",
            "name": "ens.brantly.eth",
            "subdomains": []
          },
          {
            "id": "0xee8b9393b611241eb24751b3e9d5304ed84ded9195c81ee4b1da5b47c3f8cabe",
            "name": "test.brantly.eth",
            "subdomains": []
          }
        ],
        "subdomainCount": 3
      }
    ]
  }
}.to_json
hi = JSON.parse(result)
puts hi['data']['domains'][0]['subdomains']
ha = hi['data']['domains'][0]['subdomains']
a = ha.map {|e| e['id']}
puts a
