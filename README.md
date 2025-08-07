# Symbal

**TikTok for Gaming - Turn any idea into a playable game in under 3 minutes.**

Symbal is an AI-powered mobile platform that transforms natural language prompts into fully playable games, with rewards and an in-app economy based on Solana.


## 🎯 Core Workflows
1. **Game Creation:** User prompt → AI generates HTML5 game → Preview & edit
2. **Deployment:** Select payment method → Process SOL/BONK transaction → Deploy to blockchain
3. **Discovery:** Browse community games → Play & share → Creator monetization

## ✨ Features

- **🤖 AI Game Generation**: Chat with AI to create games from any idea
- **⚡ Instant Creation**: From prompt to playable game in under 3 minutes
- **🔗 Blockchain Integration**: Deploy games to Solana with SOL/BONK payments
- **📱 Mobile-First**: Native Flutter app with seamless Web3 wallet integration
- **🎨 Creator Economy**: Built-in monetization and game sharing
- **🔄 Version Control**: Iterate and improve games with chat history

## 🚀 Quick Start

### Prerequisites
- Flutter 3.x
- Dart SDK
- Supabase account
- Solana wallet (for blockchain features)

### Installation

```bash
# Clone the repository
git clone https://github.com/antonineutron/symbal_fl.git
cd symbal_fl

# Install dependencies
flutter pub get

# Run the app
flutter run
```
## Architecture
```
lib/
├── features/
│   ├── auth/          # Authentication & user management
│   ├── game/          # Game creation & deployment
│   ├── wallet/        # Solana wallet integration
│   └── profile/       # User profiles & game history
├── core/              # Shared utilities & services
└── main.dart          # App entry point

server/
└── supabase/
    └── functions/     # Edge functions for AI & blockchain

```