<div style="border-radius: 3px; margin: 0.75rem 0 0; padding: 0.5rem; display: flex; position: relative; align-items: normal; word-break: break-word; background-color: #e9f7ff";>
    ℹ️ dasdfasdf
</div>

<div style="border-radius: 3px; margin: 0.75rem 0 0; padding: 0.5rem; display: flex; position: relative; align-items: normal; word-break: break-word; background-color: #e9ffef";>
    ✅ dasdfasdf
</div>

<div style="border-radius: 3px; margin: 0.75rem 0 0; padding: 0.5rem; display: flex; position: relative; align-items: normal; word-break: break-word; background-color: #fffee0";>
    ⚠️ dasdfasdf
</div>

<div style="border-radius: 3px; margin: 0.75rem 0 0; padding: 0.5rem; display: flex; position: relative; align-items: normal; word-break: break-word; background-color: #ffe9e9";>
    ⛔ dasdfasdf
</div>


# 1. OSI 7 계층

- 네트워크의 동작을 7 계층으로 나눠, 통신용 규약을 최대한 하나로 통합한 것
- 대부분 TCP/IP 프로토콜 스택 기반
- 네트워크 프로토콜을 모듈별로 개발할 수 있음



> 계층별 프로토콜 및 장비

| Layer |     Name     |                      Protocols                       |             장비             |
| :---: | :----------: | :--------------------------------------------------: | :--------------------------: |
|   7   | Application  |      HTTP, SMP, SMTP, STUN, TFTP, TELNET, POP3       |        ADC, NGFW, WAF        |
|   6   | Presentation |                    TLS, AFP, SSH                     |                              |
|   5   |   Session    |         L2TP, PPTP, NFS, RPC, RTCP, SIP, SSH         |                              |
|   4   |  Transport   |            TCP, UDP, SCTP, DCCP, AH, AEP             |   Load Balancer, Firewall    |
|   3   |   Network    |  ARP, IPv4, IPv6, NAT, APSec, VRRP, 라우팅 프로토콜  |      Router, L3 Switch       |
|   2   |  Data Link   | IEEE 802.2, RAPA, PPP, Frame Relay, ATM, Fiber Cable | Switch, Bridge, Network Card |
|   1   |   Physical   |          RS232, 100BaseTX, ISDN 등의 케이블          |       Cable, Hub, TAP        |

- 애플리케이션 계층 (상위 계층)

  - 7 ~ 5 계층
  - 애플리케이션 개발자는 상위 계층만을 고려
  - 데이터를 표현하는 데에 초점을 맞춤
  - Top-down

- 하위 계층

  - 1 ~ 4 계층

  - 네트워크 엔지니어는 하위 계층만을 고려

  - 데이터를 상대방에게 잘 전달하는 역할

  - Bottom-up



> OSI 7 Layer


![image-20240205230859000](Assets/01_OSI_7_Layer.assets/image-20240205230859000.png)



# 2. TCP/IP 프로토콜

- 이론보다 실용성에 중심을 둔 프로토콜
- 4 계층으로 구분



> OSI 7 계층과 TCP/IP 프로토콜

![image-20240205230859001](Assets/01_OSI_7_Layer.assets/image-20240205230859001.png)

- OSI 7 계층은 Data Flow 하위 계층과 Application 상위 계층으로 묶어서 구분
  - 이는 데이터 전달에 집중하는 영역과 애플리케이션에 집중하는 영역으로 구분한 것
- 애플리케이션 엔지니어와 네트워크 엔지니어가 고려할 부분에 대한 구분이 TCP/IP 프로토콜에서 더 명확하게 드러남



# 3. OSI 계층별 이해

## 3.1. Physical 계층 (1 계층)

<div style="border-radius: 3px; margin: 0.75rem 0 0; padding: 0.5rem; display: flex; position: relative; align-items: normal; word-break: break-word; background-color: #e9f7ff";>
    <div style="height: 24px; width: 24px; box-sizing: content-box; padding-right: 8px; text-align: center; margin-top: 0.1rem;">
    	ℹ️
    </div>
    <div style="margin: 1px 0; flex: 1 0 0;">
        <p style="margin: 0;">물리적 연결과 관련된 정보를 정의하는 계층</p>
    </div>
</div>
### 3.1.1. 역할


- 주로 **전기 신호를 송수신**하는 데에 초점
  - 데이터를 전기 신호나 광 신호로 변환
  - 들어온 전기 신호를 잘 전달하는 것이 목적
  - 주소의 개념이 없어, 전기 신호가 들어온 포트를 제외한 모든 포트에 동일한 전기 신호를 전송
  - 전송 방법, 제어 신호, 기계적 속성 등을 정의



### 3.1.2. 주요 장비

- **허브**(Hub), **리피터**(Repeater)
  - 신호를 멀리 보내기 위한 증폭 장치
  - 허브는 리피터와 다르게 여러 장비를 연결할 수 있음
- **케이블**(Cable)
  - 데이터를 전송하기 위한 물리적 장치
  - 이더넷, 광섬유 등
- **트랜시버**(Tranceiver)
  - 컴퓨터의 랜 카드와 케이블을 연결하는 장비
  - 송신기와 수신기를 포함
    - 데이터를 전기 신호로 변환하여 케이블에 송출
    - 수신된 전기 신호를 데이터로 변환
- **탭**(TAP)
  - 네트워크 모니터링 & 패킷 분석을 위해 전기 신호를 다른 장비로 복제하는 장비



### 3.1.3. 참고




## 3.2. Data Link 계층 (2 계층)

<div style="border-radius: 3px; margin: 0.75rem 0 0; padding: 0.5rem; display: flex; position: relative; align-items: normal; word-break: break-word; background-color: #e9f7ff";>
    <div style="height: 24px; width: 24px; box-sizing: content-box; padding-right: 8px; text-align: center; margin-top: 0.1rem;">
    	ℹ️
    </div>
    <div style="margin: 1px 0; flex: 1 0 0;">
        <p style="margin: 0;">물리적 장비를 통해 전송되는 데이터의 오류를 검출 및 수정하여, 신뢰성 있는 데이터 전송을 보장하는 계층</p>
    </div>
</div>
### 3.2.1. 역할

- **주소 정보**를 정의하고 **정확한 주소로 통신**하는 데에 초점
  - 출발지와 도착지의 MAC 주소를 확인하고, 정확히 보내졌는지 검사한 뒤 데이터를 처리
  - ✨ **MAC 주소**
    - 2 계층의 **물리적 주소** 체계로, MAC 주소를 통해 통신해야 할 포트를 지정하여 내보낼 수 있음
    - **네트워크 인터페이스 카드**에는 고유 MAC 주소가 존재
      - MAC 주소를 이용해 전기 신호가 자신에게 오는 게 맞는지 확인
      - 맞을 경우 상위 계층에서 처리할 수 있도록 메모리에 적재

    - 스위치를 통해 단말의 MAC 주소와 연결 포트를 알 수 있음



### 3.2.2. 기능


- **Addressing**(주소 부여)

  - 고유한 주소 및 논리적 주소를 부여




- **Framing**(단위화)
  - NIC는 전기 신호(Bit)를 ✨**프레임**(Frame) 단위로 묶어서 분리
  - 프레임
    - 네트워크 통신에서 데이터를 전송하는 단위
    - 프레임 구분을 위한 길이를 나누는 방법은 Character Oriented(바이트 단위)와 Bit Oriented(비트 단위) 방법이 있음
    - 프레임은 Header, Data, Trailer의 요소로 구성되어 있음
      - **Header**: 출발지와 도착지의 MAC 주소가 포함되며, 프레임이 올바른 목적지로 전달되도록 함
      - **Data**: 실제 전송되는 데이터
      - **Trailer**: 오류 검출을 위한 CRC(Cyclic Redundancy Check)와 같은 오류 검출 코드를 포함하여, 데이터 전송 중 발생한 오류를 수신 측이 감지할 수 있음




- **Flow Control**(흐름 제어)
  - 송신자와 수신자의 처리 속도 차이를 해결하기 위한 제어
  - 수신자가 송신자에게 피드백을 주어, 데이터 전송 속도를 조절
  - 빠른 송신자가 느린 수신자를 압도하지 못하도록 함
  - 종류
    - Stop and Wait: 수신측이 ACK를 수신한 경우에만 다음 프레임을 전송
    - Sliding Windows: 위의 방식에서 번호를 붙인 프레임을 연속으로 보냄으로써, Utilization을 높임




- **Error Control**(에러 제어)
  - 데이터에 대한 에러 탐지 및 수정을 담당
    - 송신자는 데이터를 Framing한 후, 이를 0과 1로 이루어진 비트로 변환하여 전송
    - 전기 신호는 외부 영향에 취약하여, 위 과정에서 물리적 손실 또는 변형이 일어날 수 있음
    - 따라서 **수신측의 Data Link 계층에서** 전기 신호를 Framing하는 과정에서 에러를 검출함
  - Data Link 계층 외 **end-to-end에서도 별도의 에러 처리**를 진행함
    - out-of-order delivery 현상을 해결하기 위해서 수행
    - out-of-order delivery는 데이터가 전송된 순서와는 다른 순서로 도착하는 현상
  - Detection(검출)
    - Parity Check, CRC, Checksum, Hamming Code 등
  - Correction(수정)
    - FEC, BEC 등
    - 이더넷 기반의 2 계층에서는 에러 탐지 역할만 수행
      - 손상된 Frame은 버림




- **Automatic Repeat Request**(ARQ, 재전송)

  - Stop and Wait: 일정 시간 내 ACK이 오지 않는 경우 재전송
  - Go Back N: Sliding Windows 기반

    - 수신측: 에러가 있는 프레임이 정상적으로 수신될 때까지 모든 프레임을 저장하지 않음
    - 송신측: 에러가 있는 프레임부터 모든 프레임을 재전송함

  - Selective Repeat: 재대로 온 프레임은 수신측이 버퍼링 수행



> Flow Control

![image-20240206230859001](Assets/01_OSI_7_Layer.assets/image-20240206230859001.png)




> IEEE 802.3 Ethernet Frame

![image-20240208230859002](Assets/01_OSI_7_Layer.assets/image-20240208230859002.png)



### 3.2.3. 프로토콜


- 대표적 프로토콜
  - 회선 제어, 흐름 제어, 오류 제어 등을 위한 규칙
  - HDLC, LLC/MAC(Ethernet), PPP 등
  - 분류
    - 비동기식 프로토콜: 거의 사용되지 않음
    - 동기식 프로토콜
      - 문자(바이트) 위주 프로토콜
        - 프레임을 Byte로 구성되는 문자들의 연속된 열로 간주함
        - 문자 단위로 전송
        - 비효율적이며 ARQ를 지원하지 않기에 거의 사용되지 않음

      - **비트 위주 프로토콜**
        - 프레임을 비트열로 간주함
        - 국제 표준화된 HDLC와, 그로부터 파생된 LAPB, LAPD, LAPM 프로토콜이 대표적임
        - HDLC로부터 발전된 프로토콜에는 PPP가 있음





- **HDLC 프로토콜**

  - 컴퓨터가 일대일 혹은 일대다로 연결된 환경에서의 데이터 송수신 기능을 제공

  - 용어

    - 호스트(Host): 데이터 통신을 위해 연결된 각각의 컴퓨터
    - 주국(Primary Station): 명령을 전송하는 호스트
    - 종국(Secondary Station): 명령에 응답하는 호스트
    - 혼합국(Combined Station): 주국과 종국의 기능을 모두 가지는 호스트
    - 명령(Command): 주국에서 전송되는 메시지
    - 응답(Response): 종국으로부터 회신되는 메시지

  - 프레임 구조

    ![image-20240208230859003](Assets/01_OSI_7_Layer.assets/image-20240208230859003.png)

    - **01111110**: 프레임의 시작과 끝을 구분하는 용도로 사용됨
    - **Address**: 일대다 환경에서 호스트를 구분할 때 사용됨
      - 주국은 Address에 종국의 주소를 저장
      - 종국은 Address에 자신의 주소를 저장
    - **Control**: 프레임의 종류를 구분하는 용도로 사용됨
      - 정보 프레임: 네트워크 계층의 데이터 전송을 담당
      - 감독 프레임: 정보 프레임에 대한 응답
      - 비번호 프레임
    - **Data**: 크기가 가변적이며, 네트워크 계층의 패킷이 캡슐화된 것
    - **Checksum**: CRC 오류 검출 용도로 사용됨

  - 프레임 종류

    - Control에 따라 달라짐
    - 정보 프레임(Information Frame): 네트워크 계층의 데이터 전송을 수행
      - Seq
        - Sliding Windows 프로토콜 사용
        - 송신용 순서 번호(3bit)로 사용 → 0~7의 번호만 사용 가능
      - Next
        - Piggybacking을 이용하여 응답
          - Piggybacking: 호스트 간 데이터 송수신 시 정보 프레임 안에 응답도 함께 전송
        - 수신측은 데이터를 받고, 송신측은 상대가 잘 받았음을 확인할 수 있음
          - 잘 받았다는 증거로, Next 안에 다음으로 전송받아야 할 프레임 순서 번호가 담겨 있음
          - 그러면 송신측은 해당 응답을 받은 후 다음 프레임을 전송
        - Next에도 순서 번호가 있으므로 3bit를 할당받음
      - P/F
        - 주국이 다수의 종국을 제어하기 위해 사용
        - 값이 1인 경우에 의미가 있음
          - 주국 → 종국: 데이터를 전송할 컴퓨터가 있는지 조사 (Poll)
          - 종국 → 주국: 주국으로부터 전송 허가를 받았음을 알림 (Final)
    - 감독 프레임(Supervisor Frame): 정보 프레임에 대한 응답 기능을 수행
      - Type의 2bit 값에 따라 유형이 다름
        - 00(RR, Receive Ready): 긍정 응답으로, 다음 프레임을 받을 준비가 되었음을 알림
        - 01(REJ, Reject): 부정 응답으로, Next 필드에 재전송되어야 하는 프레임의 번호를 저장한 후 응답
        - 10(RNR, Receive Not Ready): Next 필드의 앞 번호 프레임까지 제대로 받았으나, 더이상 프레임을 수신하지 않겠다는 의미
        - 11(SREJ, Selective Reject): 선택적 재전송 방식에서의 부정 응답으로 사용되며, Next에 재전송되어야 할 프레임 번호가 저장됨
    - 비번호 프레임(Unnumbered Frame): 순서 번호가 없는 프레임을 정의하며, 주로 연결 제어 시에 사용
      - 연결에는 3가지 종류가 있음
        - 정규 응답(Normal Response)
          - 주국과 종국으로 이루어짐
          - 종국은 반드시 주국의 허락을 받아야만 데이터 전송이 가능
        - 비동기 균형(Asynchronous Balanced)
          - 주국과 종국이 아닌, 두 개의 호스트가 동일한 힘을 가진 혼합국으로 이루어짐
          - LAPB 프로토콜이 이에 해당
        - 비동기 응답(Asynchronous Response)
          - 주국과 종국으로 이루어짐
          - 종국은 주국의 허락이 없어도 데이터 전송이 가능
          - LAP 프로토콜이 이에 해당

    

  - 📌 ARP



### 3.2.4. 주요 장비

- **네트워크 인터페이스 카드(NIC)**
  - PC나 서버에 네트워크를 연결해 주는 카드나 인터페이스
  - 랜 카드, 물리 네트워크 인터페이스, 이더넷 카드, 네트워크 어뎁터 등의 별칭이 존재
  - 동작 방식
    - 전기 신호를 데이터 형태로 변환
    - 목적지와 출발지의 MAC 주소 확인
    - 네트워크 인터페이스 카드의 MAC 주소 확인
    - 두 MAC 주소가 맞으면 데이터를 처리하고, 아니면 데이터를 폐기
- **스위치**
  - 네트워크 중간에서 패킷을 받아, 필요한 곳에만 보내주는 중재자 역할
  - 단말의 MAC 주소와 단말의 포트 주소를 매핑한 📌 **MAC 주소 테이블**을 가짐
    - MAC 주소, 📌 VLAN, 포트 정보를 매핑하여 저장
    - 📌 Broadcasting Domain/Traffic
    - 📌 Frame Flooding
- **브리지**
  - 네트워크 세그먼트(큰 네트워크를 구성하는 작은 네트워크 집합)를 서로 연결하는 장치
  - 📌 세그먼트 (Broadcast domain - 라우터가 구성하는 범위..? 같은 느낌)



### 3.2.5. 참고

- [Chapter 11. Data-Link Layer](https://velog.io/@wilko97/Chapter-11.-Data-Link-Layer)
- [데이터 링크 계층(Data Link Layer) - Error Control](https://east-star.tistory.com/26)
- [데이터링크 프로토콜](https://velog.io/@chlvlftn22/%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%A7%81%ED%81%AC-%ED%94%84%EB%A1%9C%ED%86%A0%EC%BD%9C)
- [[데이터통신] 9. Data Link Control Protocols](https://velog.io/@bsu1209/%EB%8D%B0%EC%9D%B4%ED%84%B0%ED%86%B5%EC%8B%A0-Data-Link-Control-Protocols)
- [HDLC 프로토콜( High-Level Data Link Control )](https://lordofkangs.tistory.com/61)
- [https://ddingz.tistory.com/158](https://ddingz.tistory.com/158)



## 3.3. Network 계층 (3 계층)

<div style="border-radius: 3px; margin: 0.75rem 0 0; padding: 0.5rem; display: flex; position: relative; align-items: normal; word-break: break-word; background-color: #e9f7ff";>
    <div style="height: 24px; width: 24px; box-sizing: content-box; padding-right: 8px; text-align: center; margin-top: 0.1rem;">
    	ℹ️
    </div>
    <div style="margin: 1px 0; flex: 1 0 0;">
        <p style="margin: 0;">논리적 주소(IP)를 정의하며, 라우팅과 포워딩을 통해 패킷(Packet)을 전송하는 계층</p>
    </div>
</div>

- 📌 Datagram (Network Layer) vs Segment (Transport Layer)
  - Sending Side
    - Transport Layer에서 Segment를 Datagram으로 Encaptulation(캡슐화)
  - Receiving Side
    - Datagram에서 Segment를 추출하여 Transport Layer로 전달
- 📌 두 가지 역할
  - Routing
    - Forwarding 전에 패킷을 어떤 경로로 보낼 것인지 결정하는 것
    - 라우팅 알고리즘
  - Forwarding
    - 복수 개의 Output(MAC Address? Switch?)이 연결되어 있는 Router에 패킷이 들어왔을 때, 어느 Port로 보내줄 것인지 결정하는 것
    - 포워딩 테이블
- 📌 두 가지 평면
  - Data Plane: 입력 링크에서 출력 링크로 데이터그램을 전달
  - Control Plane: 
    - Per-router Control Plane
    - Logically Centralized Control Plane
- 📌 Network Service Model
- 📌 ARP (Address Resolution Protocol)
  - 주소 해결 프로토콜
  - 수신자의 MAC 주소를 알기 위해 사용하는 프로토콜
  - IP 주소 - MAC 주소를 매핑한 ARP 테이블을 가짐
    - 해당 테이블은 일정 시간 경과 시 파기
  - 초기 송신에서는 Default Gateway를 통해 ARP를 수행
    - Default Gateway의 IP를 알고 있어야 함
    - 해당 IP는 고정되어 있거나, DHCP 서버로부터 할당받음
- ✨ IP 주소
  - 



![image-20240214230859004](Assets/01_OSI_7_Layer.assets/image-20240214230859004.png)




---

- https://catsbi.notion.site/3560cc4231a64165a97334e8a714fa91
- https://www.guru99.com/layers-of-osi-model.html



- https://community.fs.com/article/tcpip-vs-osi-whats-the-difference-between-the-two-models.html
- https://kumarjanglu.online/7-layers-of-osi-model-ccna-course/



- 2 계층
  - https://m.blog.naver.com/joo1020_kr/221471086900
  - https://egstory.net/edge-study/tech-lesson/aos-cx-switching/544/
  - [[네트워크] VLAN 총정리 (개념, 명령어, 설정)](https://m.blog.naver.com/lunarispars/221440105402)

- 3 계층
  - [[OSI 모델 Layer 3] - 네트워크 계층](https://velog.io/@jinh2352/OSI-%EB%AA%A8%EB%8D%B8-Layer-3-%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC-%EA%B3%84%EC%B8%B5)
  - 🎬 [IP 주소를 묶는 방법, CIDR란?](https://youtu.be/kYiQGpPVnyI)
  - [[네트워크] Network layer](https://inyongs.tistory.com/63)
  - [네트워크 - Network Layer](https://dev-ahn.tistory.com/78)
  - [Network Layer(네트워크 계층)](https://velog.io/@jeongbeom4693/Network-Layer%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC-%EA%B3%84%EC%B8%B5)