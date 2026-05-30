<details>

- Git 초기 세팅 완료  
  Gitの初期設定完了

- feature 브랜치 생성  
  featureブランチ作成

- 프로젝트 폴더 구조 정리  
  プロジェクトフォルダ構成整理

- README 작성 시작  
  README作成開始

</details>

# Git Commit Convention

## Commit Format

<type>: <summary>

Example:

feat: add card flip animation
fix: resolve SwiftData fetch bug
docs: update README

---

# 한국어

## Types

### feat

새로운 기능 추가

Example:
feat: implement study session timer

### fix

버그 수정

Example:
fix: correct review date calculation

### refactor

기능 변경 없이 코드 구조 개선

Example:
refactor: separate repository layer

### design

UI / UX 디자인 변경

Example:
design: update onboarding layout

### docs

문서 수정

Example:
docs: add architecture section to README

### chore

빌드, 설정, 패키지 관리 등 기타 작업

Example:
chore: configure SwiftLint

### test

테스트 코드 추가 및 수정

Example:
test: add CardRepository tests

### rename

파일 / 폴더 이름 변경

Example:
rename: change StudyView to StudyScreen

### remove

불필요한 코드 및 파일 삭제

Example:
remove: delete unused mock data

---

## Rules

- 하나의 commit에는 하나의 목적만 담기
- commit message는 짧고 명확하게 작성
- 현재형 동사 사용
- 무엇을 변경했는지 명확하게 작성

Good:
feat: add spaced repetition algorithm

Bad:
feat: many updates

---

# 日本語

## Types

### feat

新機能の追加

Example:
feat: implement study session timer

### fix

バグ修正

Example:
fix: correct review date calculation

### refactor

機能変更を伴わないコード改善・構造整理

Example:
refactor: separate repository layer

### design

UI / UX デザイン変更

Example:
design: update onboarding layout

### docs

ドキュメント修正

Example:
docs: add architecture section to README

### chore

ビルド・設定・依存関係などの雑務

Example:
chore: configure SwiftLint

### test

テストコード追加・修正

Example:
test: add CardRepository tests

### rename

ファイル・フォルダ名変更

Example:
rename: change StudyView to StudyScreen

### remove

不要コード・ファイル削除

Example:
remove: delete unused mock data

---

## Rules

- 1つのcommitには1つの目的だけを含める
- commit messageは簡潔に書く
- 現在形の動詞を使用する
- 「なぜ」より「何を変更したか」を明確にする

Good:
feat: add spaced repetition algorithm

Bad:
feat: many updates

---

# Branch Naming

feature/swiftdata
feature/study-view
fix/card-animation
docs/readme
refactor/viewmodel-cleanup
