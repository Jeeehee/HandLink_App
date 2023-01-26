# HandLink_iOS
HandLink 는 농인들과의 소통을 위해 만들어진, 실시간 수어 번역 앱입니다.  

직접 수어를 학습해 DataSet을 추출, `Python Mediapipe`와 `Tensorflow`를 이용해 `RNN - LSTM(Long Short Term Memory)` 으로 학습시켜 신경망을 구축했습니다.

해당 신경망 모델을 CoreML Model로 변환해, iOS App에 적용하였습니다.

<br>

## DataSet and Deep Learning Model

Deep Learning Model에 대한 자세한 정보는 [HandLink DataSet](https://github.com/Jeeehee/HandLink)에서 확인하실 수 있습니다.


<br>

## 개발자
|[Jee.e](https://github.com/Jeeehee)|황지희|<img width="130" alt="사진" src="https://user-images.githubusercontent.com/92635121/200990518-49c850d3-91b9-4818-8666-f0f0cc85479a.png">|
|--|--|--|

<br>

#### ✔️ 구현 언어
- RxSwift

#### ✔️ 프레임워크 및 라이브러리
- CoreML
- AV Foundation
