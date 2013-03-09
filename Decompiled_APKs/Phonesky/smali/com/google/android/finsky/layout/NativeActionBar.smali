.class public Lcom/google/android/finsky/layout/NativeActionBar;
.super Ljava/lang/Object;
.source "NativeActionBar.java"

# interfaces
.implements Lcom/google/android/finsky/layout/CustomActionBar;


# static fields
.field private static final ICS_OR_NEWER:Z


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private mActivity:Landroid/app/Activity;

.field private mCurrentBackendId:I

.field private mMyCollectionItem:Landroid/view/MenuItem;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mRequestedTitle:Ljava/lang/String;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShareItem:Landroid/view/MenuItem;

.field private mUseActionBarTabs:Z

.field private mWishlistItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 84
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->clearSearchIfNecessary()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/NativeActionBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/NativeActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/NativeActionBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/NativeActionBar;->syncWishlistStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/NativeActionBar;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private clearSearchIfNecessary()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 245
    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0
.end method

.method private setupCorpusIcon()V
    .locals 7

    .prologue
    .line 291
    sget-boolean v4, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-nez v4, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    .line 296
    .local v3, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->hasIconOverrideUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v2

    .line 298
    .local v2, bl:Lcom/google/android/finsky/utils/BitmapLoader;
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getIconOverrideUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/finsky/layout/NativeActionBar$3;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/layout/NativeActionBar$3;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v1

    .line 306
    .local v1, bc:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 307
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 309
    .local v0, actionBarIcon:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private syncActionBar()V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V

    .line 253
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDetailsPageMenuItem()V

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canSearch()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canGoUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    iget v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusMyCollectionIcon(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 265
    :cond_1
    return-void
.end method

.method private syncDetailsPageMenuItem()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 268
    iget-object v8, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    .line 269
    .local v0, currentPageType:I
    const/4 v8, 0x5

    if-ne v0, v8, :cond_3

    move v3, v6

    .line 270
    .local v3, isDetailsPage:Z
    :goto_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    if-eqz v8, :cond_0

    .line 271
    iget-object v8, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v8, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 273
    :cond_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    if-eqz v8, :cond_2

    .line 274
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    .line 275
    .local v1, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    iget-object v8, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    .line 276
    .local v2, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-static {v2, v1}, Lcom/google/android/finsky/utils/WishlistHelper;->shouldHideWishlistAction(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/DfeApi;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    move v5, v6

    .line 278
    .local v5, shouldHideWishlist:Z
    :goto_1
    if-eqz v5, :cond_5

    .line 279
    iget-object v6, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 286
    .end local v1           #dfeApi:Lcom/google/android/finsky/api/DfeApi;
    .end local v2           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v5           #shouldHideWishlist:Z
    :cond_2
    :goto_2
    return-void

    .end local v3           #isDetailsPage:Z
    :cond_3
    move v3, v7

    .line 269
    goto :goto_0

    .restart local v1       #dfeApi:Lcom/google/android/finsky/api/DfeApi;
    .restart local v2       #doc:Lcom/google/android/finsky/api/model/Document;
    .restart local v3       #isDetailsPage:Z
    :cond_4
    move v5, v7

    .line 276
    goto :goto_1

    .line 281
    .restart local v5       #shouldHideWishlist:Z
    :cond_5
    iget-object v7, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    invoke-interface {v1}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/finsky/utils/WishlistHelper;->isInWishlist(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v4

    .line 283
    .local v4, isInWishlist:Z
    invoke-direct {p0, v4}, Lcom/google/android/finsky/layout/NativeActionBar;->syncWishlistStatus(Z)V

    goto :goto_2
.end method

.method private syncDisplayTitle()V
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f0700d1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 125
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    .line 126
    .local v1, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v1, :cond_0

    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    if-eqz v2, :cond_0

    .line 127
    iget v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 128
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    .end local v0           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private syncWishlistStatus(Z)V
    .locals 2
    .parameter "isInWishlist"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f02008f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f070172

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f02008e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    const v1, 0x7f070171

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public addTab(Ljava/lang/String;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V
    .locals 3
    .parameter "text"
    .parameter "tabListener"

    .prologue
    .line 339
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mUseActionBarTabs:Z

    if-nez v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 344
    .local v0, newTab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 345
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 349
    :cond_1
    new-instance v1, Lcom/google/android/finsky/layout/NativeActionBar$4;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/layout/NativeActionBar$4;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;Lcom/google/android/finsky/layout/CustomActionBar$TabListener;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 366
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 367
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 368
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public clearTabs()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 379
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 381
    return-void
.end method

.method public configureMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 6
    .parameter "activity"
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    .line 145
    const v2, 0x7f080011

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    .line 149
    sget-boolean v2, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    .local v0, context:Landroid/content/Context;
    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    .line 157
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 159
    const v2, 0x7f080010

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    .line 160
    const v2, 0x7f08000f

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    .line 163
    const v2, 0x7f08023c

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mMyCollectionItem:Landroid/view/MenuItem;

    .line 165
    const-string v2, "search"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 167
    .local v1, searchManager:Landroid/app/SearchManager;
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 169
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mShareItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mWishlistItem:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 175
    :cond_0
    return-void

    .line 152
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #searchManager:Landroid/app/SearchManager;
    :cond_1
    move-object v0, p1

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_0
.end method

.method public getBreadcrumbText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentBackendId()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;)V
    .locals 3
    .parameter "navigationManager"
    .parameter "parent"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 92
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->setupCorpusIcon()V

    .line 93
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 94
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v2, Lcom/google/android/finsky/layout/NativeActionBar$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/NativeActionBar$1;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 102
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mUseActionBarTabs:Z

    .line 104
    return-void
.end method

.method public searchButtonClicked(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/finsky/layout/NativeActionBar;->ICS_OR_NEWER:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 331
    :goto_0
    const/4 v0, 0x1

    .line 334
    :goto_1
    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelectedTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 374
    return-void
.end method

.method public shareButtonClicked(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    iget-object v2, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    .line 180
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/IntentUtils;->buildShareIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Landroid/content/Intent;

    move-result-object v1

    .line 183
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

    .line 185
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

    .line 188
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

    .line 193
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 191
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
    .line 117
    iput-object p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mRequestedTitle:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    .line 119
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 120
    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .parameter "backendId"

    .prologue
    .line 108
    iput p1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    .line 110
    iget v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mCurrentBackendId:I

    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setCurrentBackendId(I)V

    .line 111
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncDisplayTitle()V

    .line 112
    invoke-direct {p0}, Lcom/google/android/finsky/layout/NativeActionBar;->syncActionBar()V

    .line 113
    return-void
.end method

.method public updateSearchQuery(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 318
    iget-object v0, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 320
    :cond_0
    return-void
.end method

.method public wishlistButtonClicked(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 197
    new-instance v0, Lcom/google/android/finsky/layout/NativeActionBar$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/NativeActionBar$2;-><init>(Lcom/google/android/finsky/layout/NativeActionBar;)V

    .line 207
    .local v0, listener:Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;
    iget-object v1, p0, Lcom/google/android/finsky/layout/NativeActionBar;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/utils/WishlistHelper;->processWishlistClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;)V

    .line 209
    return-void
.end method
