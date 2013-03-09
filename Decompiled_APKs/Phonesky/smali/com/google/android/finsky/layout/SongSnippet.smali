.class public Lcom/google/android/finsky/layout/SongSnippet;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "SongSnippet.java"


# instance fields
.field private mAddedDrawable:Landroid/widget/ImageView;

.field private mAddedState:Landroid/widget/TextView;

.field private mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mBuyButton:Landroid/widget/Button;

.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mInitialized:Z

.field private mIsNewPurchase:Z

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mShouldShowArtistName:Z

.field private mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

.field private mSongDocument:Lcom/google/android/finsky/api/model/Document;

.field private mSongDuration:Landroid/widget/TextView;

.field private mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

.field private mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

.field private mSongTitle:Landroid/widget/TextView;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private mTrackNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    new-instance v0, Lcom/google/android/finsky/layout/SongSnippet$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongSnippet$4;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 64
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/previews/PreviewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/layout/SongSnippet;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/SongSnippet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->resetUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/layout/SongIndex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/SongSnippet;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    return-void
.end method

.method private clearBuyButtonStyle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 281
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v2, 0x7f0b0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 283
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v2, 0x7f0a0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 284
    return-void
.end method

.method private resetUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 204
    return-void
.end method

.method private setBuyButtonStyle(II)V
    .locals 4
    .parameter "backgroundResourceId"
    .parameter "textColorId"

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 273
    return-void
.end method

.method private setHighlighted(Z)V
    .locals 9
    .parameter "isHighlighted"

    .prologue
    const v8, 0x7f0a0006

    const v7, 0x106000b

    .line 207
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 208
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 209
    const v5, 0x7f0a0033

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundResource(I)V

    .line 210
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    const v6, 0x7f0a0002

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTextColor(I)V

    .line 212
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setSelected(Z)V

    .line 225
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingLeft()I

    move-result v1

    .line 215
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingRight()I

    move-result v2

    .line 216
    .local v2, paddingRight:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingTop()I

    move-result v3

    .line 217
    .local v3, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getPaddingBottom()I

    move-result v0

    .line 218
    .local v0, paddingBottom:I
    const v5, 0x7f020062

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundResource(I)V

    .line 219
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/google/android/finsky/layout/SongSnippet;->setPadding(IIII)V

    .line 220
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    const v6, 0x7f0a0005

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTextColor(I)V

    .line 222
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateAddedState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 287
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsNewPurchase:Z

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateBuyButtonState()V
    .locals 12

    .prologue
    const v11, 0x7f0a004b

    const v10, 0x7f07023e

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 228
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    .line 231
    .local v2, library:Lcom/google/android/finsky/library/Library;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 232
    .local v0, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    .line 233
    .local v1, libraries:Lcom/google/android/finsky/library/Libraries;
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v5, v1, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    .line 235
    .local v3, owner:Landroid/accounts/Account;
    if-eqz v3, :cond_0

    .line 236
    const v5, 0x7f020047

    invoke-direct {p0, v5, v11}, Lcom/google/android/finsky/layout/SongSnippet;->setBuyButtonStyle(II)V

    .line 237
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v6, 0x7f070131

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 238
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 241
    .local v4, resources:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v6, 0x7f0a004c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    .end local v4           #resources:Landroid/content/res/Resources;
    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->updateAddedState()V

    .line 266
    return-void

    .line 242
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 243
    const v5, 0x7f020053

    invoke-direct {p0, v5, v11}, Lcom/google/android/finsky/layout/SongSnippet;->setBuyButtonStyle(II)V

    .line 244
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->clearBuyButtonStyle()V

    .line 248
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 254
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 251
    :pswitch_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->clearBuyButtonStyle()V

    .line 260
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    .line 261
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    .line 179
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    .line 181
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 69
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onAttachedToWindow()V

    .line 71
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 72
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v0

    .line 73
    .local v0, musicDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/SongSnippet;->setVisibility(I)V

    .line 138
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    iget v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setTrackNumber(I)V

    .line 79
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getDurationSec()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 89
    :goto_1
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->updateBuyButtonState()V

    .line 91
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/layout/SongSnippet$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/SongSnippet$1;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setClickable(Z)V

    .line 110
    new-instance v1, Lcom/google/android/finsky/layout/SongSnippet$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/SongSnippet$2;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget-object v1, Lcom/google/android/finsky/config/G;->prePurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Lcom/google/android/finsky/layout/SongSnippet$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/SongSnippet$3;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/previews/PreviewController;->getStatusUpdate(Lcom/google/android/finsky/previews/StatusListener;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    .line 143
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDetachedFromWindow()V

    .line 144
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 150
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongIndex;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    .line 151
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    .line 152
    const v0, 0x7f080175

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f080176

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 155
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    .line 157
    return-void
.end method

.method public setSongDetails(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .locals 0
    .parameter "bitmapLoader"
    .parameter "albumDocument"
    .parameter "songDocument"
    .parameter "trackNumber"
    .parameter "shouldShowArtistName"
    .parameter "navigationManager"
    .parameter "isNewPurchase"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 164
    iput-boolean p5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    .line 165
    iput-object p2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    .line 166
    iput-object p3, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    .line 167
    iput-object p6, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 168
    iput p4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    .line 169
    iput-boolean p7, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsNewPurchase:Z

    .line 170
    return-void
.end method

.method public setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 199
    :goto_0
    return-void

    .line 186
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
