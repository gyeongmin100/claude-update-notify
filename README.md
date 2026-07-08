# claude-update-notify

Claude Code 플러그인. 세션 시작할 때마다 `npm show @anthropic-ai/claude-code version`으로 최신 버전 확인하고, 설치된 `claude --version`이랑 다르면 업데이트 알림 한 줄 띄움.

Windows + PowerShell 필요. npm으로 설치했든 네이티브(`irm`) 설치든 상관없이 작동함 — 둘 다 같은 버전 번호로 배포됨.

## 설치

```
/plugin marketplace add gyeongmin100/claude-update-notify
/plugin install claude-update-notify
```

## 제거

```
/plugin uninstall claude-update-notify
```

## 요구사항

- `npm` PATH에 등록되어 있어야 함 (최신 버전 조회용, 패키지 설치는 안 함)
- PowerShell
