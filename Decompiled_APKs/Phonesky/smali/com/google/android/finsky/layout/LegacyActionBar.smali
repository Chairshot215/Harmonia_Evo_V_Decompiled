.class public Lcom/google/android/finsky/layout/LegacyActionBar;
.super Landroid/widget/LinearLayout;
.source "LegacyActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBreadcrumb:Landroid/widget/TextView;

.field private mCorpusChevronIcon:Landroid/widget/ImageView;

.field private mCorpusUpPack:Landroid/view/View;

.field private mCurrentBackendId:I

.field private final mGoUpClickListener:Landroid/view/View$OnClickListener;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequestedTitle:Ljava/lang/String;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mShareButton:Landroid/widget/ImageButton;

.field private mWishlistButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Lcom/google/android/finsky/layout/LegacyActionBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$1;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    .line 97
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupBackground()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/LegacyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/LegacyActionBar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/LegacyActionBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/LegacyActionBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncWishlistStatus(Z)V

    return-void
.end method

.method private setupBackground()V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 103
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method private setupCorpusIcon()V
    .locals 2

    .prologue
    .line 190
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    .line 194
    return-void
.end method

.method private setupSearchButton()V
    .locals 2

    .prologue
    .line 174
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    .line 175
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$3;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method

.method private setupShareButton()V
    .locals 2

    .prologue
    .line 197
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    .line 198
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$4;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private setupWishlistButton()V
    .locals 2

    .prologue
    .line 207
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$5;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method private syncActionBar()V
    .locals 15

    .prologue
    .line 220
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v5

    .line 221
    .local v5, currentPageType:I
    const/4 v12, 0x5

    if-ne v5, v12, :cond_3

    const/4 v8, 0x1

    .line 222
    .local v8, isDetailsPage:Z
    :goto_0
    iget-object v13, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mShareButton:Landroid/widget/ImageButton;

    if-eqz v8, :cond_4

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v13, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v6

    .line 225
    .local v6, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    .line 226
    .local v7, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    invoke-static {v7, v6}, Lcom/google/android/finsky/utils/WishlistHelper;->shouldHideWishlistAction(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_0
    const/4 v10, 0x1

    .line 228
    .local v10, shouldHideWishlist:Z
    :goto_2
    if-eqz v10, :cond_6

    .line 229
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 236
    :goto_3
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v3

    .line 237
    .local v3, canGoUp:Z
    iget-object v13, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v12, v3}, Landroid/view/View;->setClickable(Z)V

    .line 239
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    invoke-virtual {v12, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 241
    iget-object v13, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v13, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mSearchButton:Landroid/widget/ImageButton;

    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v13, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 245
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 246
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setClickable(Z)V

    .line 247
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusUpPack:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 248
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCorpusChevronIcon:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v13, 0x7f0701d5

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 254
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v11

    .line 255
    .local v11, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeToc;->hasIconOverrideUrl()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 256
    const v12, 0x7f08000d

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 257
    .local v4, corpusIcon:Landroid/widget/ImageView;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    .line 258
    .local v2, bl:Lcom/google/android/finsky/utils/BitmapLoader;
    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeToc;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-instance v14, Lcom/google/android/finsky/layout/LegacyActionBar$6;

    invoke-direct {v14, p0, v4}, Lcom/google/android/finsky/layout/LegacyActionBar$6;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    .line 265
    .local v1, bc:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 266
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v0, actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    .end local v0           #actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bc:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v2           #bl:Lcom/google/android/finsky/utils/BitmapLoader;
    .end local v4           #corpusIcon:Landroid/widget/ImageView;
    :cond_2
    return-void

    .line 221
    .end local v3           #canGoUp:Z
    .end local v6           #dfeApi:Lcom/google/android/finsky/api/DfeApi;
    .end local v7           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v8           #isDetailsPage:Z
    .end local v10           #shouldHideWishlist:Z
    .end local v11           #toc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 222
    .restart local v8       #isDetailsPage:Z
    :cond_4
    const/16 v12, 0x8

    goto/16 :goto_1

    .line 226
    .restart local v6       #dfeApi:Lcom/google/android/finsky/api/DfeApi;
    .restart local v7       #doc:Lcom/google/android/finsky/api/model/Document;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 231
    .restart local v10       #shouldHideWishlist:Z
    :cond_6
    iget-object v12, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 232
    invoke-interface {v6}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v9

    .line 233
    .local v9, isInWishlist:Z
    invoke-direct {p0, v9}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncWishlistStatus(Z)V

    goto/16 :goto_3

    .line 237
    .end local v9           #isInWishlist:Z
    .restart local v3       #canGoUp:Z
    :cond_7
    const/4 v12, 0x4

    goto/16 :goto_4

    .line 241
    :cond_8
    const/4 v12, 0x4

    goto/16 :goto_5

    .line 243
    :cond_9
    const/16 v12, 0x8

    goto/16 :goto_6
.end method

.method private syncDisplayTitle()V
    .locals 4

    .prologue
    .line 152
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const v3, 0x7f0700d1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 154
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 155
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_0

    .line 156
    iget v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 157
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v0, :cond_0

    .line 158
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 166
    return-void

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private syncWishlistStatus(Z)V
    .locals 3
    .parameter "isInWishlist"

    .prologue
    .line 311
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 314
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f070172

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 318
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mWishlistButton:Landroid/widget/ImageButton;

    const v2, 0x7f070171

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .locals 0
    .parameter "text"
    .parameter "tabListener"

    .prologue
    .line 347
    return-void
.end method

.method public clearTabs()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 0
    .parameter "activity"
    .parameter "menu"

    .prologue
    .line 274
    return-void
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentBackendId()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 325
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setVisibility(I)V

    .line 326
    return-void
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .locals 2
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 116
    iput-object p2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mActivity:Landroid/app/Activity;

    .line 117
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/LegacyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mBreadcrumb:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mGoUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupSearchButton()V

    .line 120
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupWishlistButton()V

    .line 121
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupShareButton()V

    .line 122
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->setupCorpusIcon()V

    .line 124
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v1, Lcom/google/android/finsky/layout/LegacyActionBar$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$2;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 131
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 133
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public setSelectedTab(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 351
    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 278
    iget-object v2, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 279
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    .line 282
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f07018e

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 284
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "share?doc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v5, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "share"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "cidi"

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string v2, "Tried to share an item but there is no document active"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mRequestedTitle:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    .line 148
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 149
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backendId"

    .prologue
    .line 137
    iput p1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    .line 139
    iget v0, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncDisplayTitle()V

    .line 141
    invoke-direct {p0}, Lcom/google/android/finsky/layout/LegacyActionBar;->syncActionBar()V

    .line 142
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 336
    return-void
.end method

.method public wishlistButtonClicked(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 296
    new-instance v0, Lcom/google/android/finsky/layout/LegacyActionBar$7;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/LegacyActionBar$7;-><init>(Lcom/google/android/finsky/layout/LegacyActionBar;)V

    .line 306
    .local v0, listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;
    iget-object v1, p0, Lcom/google/android/finsky/layout/LegacyActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    .line 308
    return-void
.end method
