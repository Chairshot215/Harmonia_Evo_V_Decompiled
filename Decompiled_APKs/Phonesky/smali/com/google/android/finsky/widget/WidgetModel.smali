.class public Lcom/google/android/finsky/widget/WidgetModel;
.super Ljava/lang/Object;
.source "WidgetModel.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;,
        Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;,
        Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mDocumentTypes:[I

.field private final mImageHeightResource:I

.field private final mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/google/android/finsky/api/model/DfeList;

.field private mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

.field private mLoadedImagesSoFar:I

.field private mMaxHeight:I

.field private final mMaxItems:I

.field private mSize:I

.field private mUpdatePending:Z


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;[ILcom/google/android/finsky/widget/WidgetModel$ImageSelector;II)V
    .locals 1
    .parameter "bitmapLoader"
    .parameter "validDocumentTypes"
    .parameter "imageSelector"
    .parameter "imageHeightResource"
    .parameter "maxItems"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    .line 42
    iput p5, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxItems:I

    .line 43
    invoke-static {p5}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetModel;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 45
    iput-object p2, p0, Lcom/google/android/finsky/widget/WidgetModel;->mDocumentTypes:[I

    .line 46
    iput-object p3, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    .line 47
    iput p4, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageHeightResource:I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/WidgetModel;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/widget/WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V

    return-void
.end method

.method private bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V
    .locals 7
    .parameter "document"
    .parameter "result"
    .parameter "imageType"

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    .line 184
    invoke-virtual {p2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    new-instance v0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;

    invoke-virtual {p2}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    move v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;-><init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/widget/WidgetModel;->loadViewsIfDone()V

    .line 189
    return-void
.end method

.method private isValidDocument(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 7
    .parameter "document"

    .prologue
    const/4 v5, 0x1

    .line 167
    iget-object v6, p0, Lcom/google/android/finsky/widget/WidgetModel;->mDocumentTypes:[I

    if-nez v6, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v5

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasDocumentType()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    .line 173
    .local v1, documentType:I
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mDocumentTypes:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 174
    .local v4, type:I
    if-eq v4, v1, :cond_0

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v0           #arr$:[I
    .end local v1           #documentType:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #type:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private loadViewsIfDone()V
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    iget v1, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

    invoke-interface {v0}, Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;->onData()V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public onDataChanged()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    iput-boolean v4, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    .line 134
    iput v4, p0, Lcom/google/android/finsky/widget/WidgetModel;->mLoadedImagesSoFar:I

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v0

    iget v2, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxItems:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 136
    .local v10, numItems:I
    iput v10, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    .line 137
    const/4 v8, 0x0

    .local v8, item:I
    :goto_0
    if-ge v8, v10, :cond_3

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    .line 139
    .local v6, document:Lcom/google/android/finsky/api/model/Document;
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    iget v2, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxHeight:I

    invoke-interface {v0, v6, v2}, Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;->getImageUrl(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, urlToLoad:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageSelector:Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;

    invoke-interface {v0, v6}, Lcom/google/android/finsky/widget/WidgetModel$ImageSelector;->getImageType(Lcom/google/android/finsky/api/model/Document;)I

    move-result v7

    .line 141
    .local v7, imageType:I
    invoke-direct {p0, v6}, Lcom/google/android/finsky/widget/WidgetModel;->isValidDocument(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mSize:I

    .line 143
    invoke-direct {p0}, Lcom/google/android/finsky/widget/WidgetModel;->loadViewsIfDone()V

    .line 137
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/widget/WidgetModel$1;

    invoke-direct {v3, p0, v6, v7}, Lcom/google/android/finsky/widget/WidgetModel$1;-><init>(Lcom/google/android/finsky/widget/WidgetModel;Lcom/google/android/finsky/api/model/Document;I)V

    iget v5, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v9

    .line 153
    .local v9, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v9}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0, v6, v9, v7}, Lcom/google/android/finsky/widget/WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V

    goto :goto_1

    .line 157
    .end local v1           #urlToLoad:Ljava/lang/String;
    .end local v6           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v7           #imageType:I
    .end local v9           #newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/widget/WidgetModel;->loadViewsIfDone()V

    .line 158
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;->onError(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public refresh(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;)V
    .locals 2
    .parameter "context"
    .parameter "dfeApi"
    .parameter "dfeUrl"
    .parameter "listener"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    .line 84
    iput-object p4, p0, Lcom/google/android/finsky/widget/WidgetModel;->mListener:Lcom/google/android/finsky/widget/WidgetModel$RefreshListener;

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/widget/WidgetModel;->mImageHeightResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mMaxHeight:I

    .line 90
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mList:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mUpdatePending:Z

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    return-void
.end method
