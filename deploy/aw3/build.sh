cd aw3
echo "(Aw3) Installing Dependencies..."
npm install
npm install @sveltejs/adapter-vercel
# Is This How Aw3 Builds? Please Can You Fix If Wrong (8to16)
echo "(Aw3) Running Build..."
npm run build