# 2017. 03. 17

## - Multipart form

- 다양한 데이터들이 모여있는 form
- Content Type

#### - Data Form

```obcj
--YOUR_BOUNDARY_STRING (여기서부터 시작이야 라는 느낌)

Content-Disposition:form-data; name="photo"; filename="calm.jpg"
Content-Type: image/jpeg

YOUR_IMAGE_DATA_GOES_HERE
```

####- Contents Disposition

```objc
--YOUR_BOUNDARY_STRING
Content-Disposition:form-data; name="photo"
Content-Type: image/jpeg (일반 스트링이면 생략 가능)

YOUR_IMAGE_DATA_GOES_HERE (실제 데이터)
```
[- 추가로 더 알아보기](https://goo.gl/gxE9Ce)