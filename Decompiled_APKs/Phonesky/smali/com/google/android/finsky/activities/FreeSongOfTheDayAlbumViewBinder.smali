.class public Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "FreeSongOfTheDayAlbumViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCookie:Ljava/lang/String;

.field private mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mReferrerUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->retryRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mReferrerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private attachToInternalRequest()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->prepareAndPopulateContent()V

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeDetails;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    goto :goto_0
.end method

.method private detachListeners()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 71
    :cond_0
    return-void
.end method

.method private prepareAndPopulateContent()V
    .locals 10

    .prologue
    .line 131
    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    .line 134
    .local v1, doc:Lcom/google/android/finsky/api/model/Document;
    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 135
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 139
    .local v0, creator:Lcom/google/android/finsky/layout/DecoratedTextView;
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/DocImageView;

    .line 143
    .local v2, thumbnailView:Lcom/google/android/finsky/layout/DocImageView;
    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 145
    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mContext:Landroid/content/Context;

    const v6, 0x7f0701e3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    new-instance v5, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;

    invoke-direct {v5, p0, v1}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;-><init>(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method

.method private retryRequest()V
    .locals 4

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->detachListeners()V

    .line 163
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 164
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->attachToInternalRequest()V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    .line 166
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "doc"
    .parameter "url"
    .parameter "referrerUrl"

    .prologue
    .line 59
    const v0, 0x7f070250

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 61
    iput-object p3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mReferrerUrl:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->setupView()V

    .line 64
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "cookie"

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 48
    iput-object p4, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 49
    iput-object p5, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mCookie:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->prepareAndPopulateContent()V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->detachListeners()V

    .line 159
    return-void
.end method

.method public setupView()V
    .locals 7

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800d6

    const v3, 0x7f0801a3

    const v4, 0x7f080058

    new-instance v5, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$1;-><init>(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)V

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->detachListeners()V

    .line 93
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 94
    invoke-direct {p0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->attachToInternalRequest()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
