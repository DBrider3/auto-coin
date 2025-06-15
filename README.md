# 🤖 비트코인 AI 트레이딩 시스템

기술적 분석, 뉴스 감성 분석, AI 기반 의사결정을 결합하여 빗썸 거래소에서 암호화폐 거래를 자동화하는 지능형 비트코인 트레이딩 시스템입니다.

## 🌟 주요 기능

- **AI 기반 거래 결정**: GPT-4를 활용하여 시장 상황을 분석하고 거래 결정을 내림
- **다중 시간대 분석**: 여러 시간대(1시간, 4시간, 일간)의 비트코인 가격 데이터 분석
- **뉴스 감성 분석 통합**: 실시간 비트코인 뉴스 분석을 거래 결정에 반영
- **자동화된 거래**: 빗썸 거래소에서 자동으로 거래 실행
- **실시간 대시보드**: 거래 성과를 모니터링하기 위한 Streamlit 대시보드
- **예약 거래**: 특정 시간(09:00, 15:00, 21:00 KST)에 자동 거래 실행
- **리스크 관리**: 비율 기반 포지션 사이징과 최소 주문 요구사항 구현
- **종합 로깅**: 상세한 거래 내역과 성과 추적

## 📊 대시보드 기능

- 실시간 포트폴리오 가치 추적
- 손익 시각화
- 매수/매도 마커가 있는 BTC 가격 차트
- 상세 거래 내역
- AI 의사결정 이유
- BTC 및 KRW 잔고 추적

## 🛠️ 기술 스택

- Python 3.x
- OpenAI GPT-4
- Streamlit
- Plotly
- SQLite
- 빗썸 API
- SerpAPI (뉴스 데이터용)

## ⚙️ 설치 방법

1. **저장소 클론**
   ```bash
   git clone [repository-url]
   cd auto-coin
   ```

2. **의존성 설치**
   ```bash
   pip install -r requirements.txt
   ```

3. **환경 변수 설정**
   다음 변수들을 포함하는 `.env` 파일 생성:
   ```
   BITHUMB_ACCESS_KEY=your_bithumb_access_key
   BITHUMB_SECRET_KEY=your_bithumb_secret_key
   SERPAPI_API_KEY=your_serpapi_key
   OPENAI_API_KEY=your_openai_api_key
   ```

4. **데이터베이스 초기화**
   시스템은 첫 실행 시 자동으로 SQLite 데이터베이스를 생성합니다.

## 🚀 사용 방법

1. **트레이딩 시스템 시작**
   ```bash
   python autotrade.py
   ```

2. **대시보드 실행**
   ```bash
   streamlit run main.py
   ```

## 🔄 거래 일정

시스템은 다음 시간에 자동으로 거래를 실행합니다:
- 09:00 KST
- 15:00 KST
- 21:00 KST

## 📈 트레이딩 전략

AI 트레이딩 시스템은 다음 핵심 원칙을 따릅니다:
1. 절대 돈을 잃지 않는다
2. 규칙 1을 절대 잊지 않는다

시스템은 다음을 분석합니다:
- 여러 시간대의 기술적 지표
- 최근 비트코인 뉴스와 시장 심리
- 현재 포트폴리오 잔고와 최근 거래 내역
- 시장 상황과 가격 움직임

## ⚠️ 위험 경고

암호화폐 거래는 상당한 위험을 수반합니다. 이 시스템은 교육 목적으로만 사용되어야 합니다. 항상:
- 소액으로 시작하세요
- 시스템을 정기적으로 모니터링하세요
- 관련된 위험을 이해하세요
- 감당할 수 있는 금액 이상을 투자하지 마세요

## 📝 라이선스

MIT License

Copyright (c) 2025 ChoDaeBeom

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## 🤝 기여하기

기여를 환영합니다! Pull Request를 자유롭게 제출해 주세요.

## 📧 연락처

[연락처 정보]
