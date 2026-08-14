# PixelBatch AI Studio & Cervex Connector

Une application web SaaS moderne et ultra-rapide de traitement d'images par lots (Batch Processing), 100% exécutée côté client grâce à l'API Canvas HTML5, React, Tailwind CSS et JSZip, avec connecteur Cloud Cervex.

---

## 🌟 Fonctionnalités Principales

### 1. Upload & Galerie par Lots (Drag & Drop)
- Zone de glisser-déposer grand format supportant les formats **JPG, PNG, WebP, SVG, GIF, BMP**.
- Galerie responsive avec sélection par cases à cocher, boutons "Tout cocher", "Tout décocher", "Inverser", "Restaurer original".
- Bouton de démonstration pour charger en un clic **6 images d'exemple HD** (portraits, produits, baskets, paysages, gadgets).
- Badge de dimensions originales et actuelles en direct.

### 2. Éditeur d'Arrière-plan en Lot (Batch Background)
- **Détourage IA / Suppression d'arrière-plan** : Détection et élimination intelligente de l'arrière-plan côté client avec curseur de tolérance et lissage de contour.
- **Remplacement instantané** :
  - **Couleurs unies** : Transparent (damier), Blanc pur, Noir studio, Indigo cyber, Émeraude, Orange coucher de soleil, sélecteur de couleur hexadécimal libre.
  - **Dégradés modernes** : Sunset Glow, Cyberpunk Neon, Cosmic Indigo, Aurora Emerald, Luxury Champagne, Pure Frost.
  - **Fonds Photo HD & Studio** : Studio minimal, Bureau moderne, Montagne & Lac, Rue Tokyo Neon, Intérieur Marbre, Vagues 3D.
  - **Fond personnalisé** : Importez n'importe quelle image comme arrière-plan pour l'ensemble du lot.

### 3. Recadrage en Lot (Batch Crop)
- Ratios prédéfinis : **Libre, 1:1 (Instagram), 16:9 (YouTube), 4:3 (Standard), 9:16 (Story/TikTok/Reels), 3:2**.
- Sélection d'une **Image Modèle / Référence** avec visualisation de la boîte de découpe interactive.
- Bouton **« Appliquer le recadrage à tout »** qui projette les coordonnées normalisées sur toutes les images cochées.

### 4. Redimensionnement en Lot (Batch Resize)
- Champs Largeur & Hauteur en pixels avec **cadenas de verrouillage du ratio d'aspect**.
- Boutons d'échelle rapide : **75%, 50%, 25%**.
- **Préréglages réseaux sociaux en un clic** :
  - 📸 Instagram Carré (1080 × 1080)
  - 📱 Story / TikTok / Reels (1080 × 1920)
  - 🎬 YouTube Miniature (1920 × 1080)
  - 🛍️ E-Commerce HD (1200 × 1200)
  - 💼 Bannière Web & X (1500 × 500)
  - 🖥️ Full HD 1080p (1920 × 1080) & 4K UHD (3840 × 2160)

### 5. Filigrane en Lot (Batch Watermark)
- Deux modes : **Texte personnalisé** ou **Logo / Image PNG avec transparence**.
- **Grille interactive 3×3** (9 points d'ancrage : Haut-Gauche, Centre, Bas-Droite, etc.).
- Curseur d'**Opacité** (10% à 100%) et de **Rotation** (-90° à +90°).
- Personnalisation typographique (Plus Jakarta Sans, JetBrains Mono, Playfair, Pacifico), couleur, badge d'arrière-plan et ombre portée.

### 6. Filtres & Ajustements d'Image (Adjustments)
- Réglages fins : Luminosité, Contraste, Saturation.
- Filtres préconfigurés : Normal, Vibrant, Noir & Blanc, Cinéma, Vintage, Contraste +.

### 7. Exportation & Téléchargement
- Choix du format de sortie : **PNG (avec transparence), JPG (avec réglage de qualité 20-100%), WebP**.
- Renommage automatique avec préfixe et suffixe configurables.
- Téléchargement individuel par image ou groupé en un seul fichier **ZIP compressé (JSZip + FileSaver)**.
- **Curseur de Comparaison Avant / Après (Split slider)** en plein écran pour chaque image.

### 8. Hub de Connexion Cervex
- Modal de configuration Cervex (Clé API secrète, ID de projet, Webhook URL, Endpoint API).
- Synchronisation en 1 clic de tout le lot avec les pipelines de stockage et d'IA Cervex.
- Journal temps réel des transactions Cervex.

---

## 🚀 Comment lancer l'application

Ouvrez simplement le fichier `index.html` dans n'importe quel navigateur moderne (Chrome, Edge, Firefox, Safari) :

```powershell
Start-Process "C:\Users\PC\.gemini\antigravity\scratch\batch-image-studio\index.html"
```
