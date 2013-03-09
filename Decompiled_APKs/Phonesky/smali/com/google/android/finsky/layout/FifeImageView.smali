.class public Lcom/google/android/finsky/layout/FifeImageView;
.super Landroid/widget/ImageView;
.source "FifeImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;
    }
.end annotation


# instance fields
.field mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

.field mIsLoaded:Z

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field mRequestCount:I

.field private mToFadeInAfterLoad:Z

.field private mToLoadOnce:Z

.field private mViewToFadeIn:Landroid/view/View;

.field private mWaitForLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/FifeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 38
    iput v2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    .line 60
    sget-object v1, Lcom/android/vending/R$styleable;->HeroGraphicView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, viewAttrs:Landroid/content/res/TypedArray;
    const v1, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    sget-object v1, Lcom/android/vending/R$styleable;->FifeImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToLoadOnce:Z

    .line 68
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToFadeInAfterLoad:Z

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/FifeImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FifeImageView;->invokeOnLoaded()V

    return-void
.end method

.method private getFifeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "baseUrl"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, width:I
    const/4 v0, 0x0

    .line 220
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 221
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v8, v9, :cond_3

    move v3, v5

    .line 222
    .local v3, matchParentWidth:Z
    :goto_0
    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v8, v9, :cond_4

    move v2, v5

    .line 223
    .local v2, matchParentHeight:Z
    :goto_1
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 224
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    .line 225
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    .line 226
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    if-lez v5, :cond_0

    .line 227
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 229
    :cond_0
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    if-lez v5, :cond_1

    .line 230
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 232
    :cond_1
    if-eqz v4, :cond_2

    if-nez v0, :cond_8

    :cond_2
    move-object v5, v7

    .line 264
    :goto_2
    return-object v5

    .end local v2           #matchParentHeight:Z
    .end local v3           #matchParentWidth:Z
    :cond_3
    move v3, v6

    .line 221
    goto :goto_0

    .restart local v3       #matchParentWidth:Z
    :cond_4
    move v2, v6

    .line 222
    goto :goto_1

    .line 235
    .restart local v2       #matchParentHeight:Z
    :cond_5
    if-eqz v3, :cond_9

    .line 236
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    .line 237
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    if-lez v5, :cond_6

    .line 238
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 240
    :cond_6
    if-nez v4, :cond_7

    move-object v5, v7

    .line 241
    goto :goto_2

    .line 243
    :cond_7
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_8

    .line 244
    iget v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 264
    :cond_8
    :goto_3
    invoke-static {p1, v4, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 246
    :cond_9
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_a

    .line 247
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    .line 248
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_8

    .line 249
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 251
    :cond_a
    if-eqz v2, :cond_d

    .line 252
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    .line 253
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    if-lez v5, :cond_b

    .line 254
    iget v5, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 256
    :cond_b
    if-nez v0, :cond_c

    move-object v5, v7

    .line 257
    goto :goto_2

    .line 259
    :cond_c
    iget v4, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    goto :goto_3

    .line 261
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    .line 262
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v0

    goto :goto_3
.end method

.method private getImageUrlToLoad(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Ljava/lang/String;
    .locals 3
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .line 128
    if-nez p1, :cond_1

    move-object v0, v1

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, imageUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->getFifeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invokeOnLoaded()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;->onLoaded(Landroid/widget/ImageView;)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public delayLoadingUntilLayout()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mWaitForLayout:Z

    .line 99
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->invalidate()V

    .line 288
    return-void
.end method

.method protected getImageToLoad()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    return-object v0
.end method

.method protected getPlaceholder()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadImageIfNecessary()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToLoadOnce:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mWaitForLayout:Z

    if-eqz v0, :cond_2

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v4

    .line 154
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v5

    .line 155
    .local v5, height:I
    if-nez v4, :cond_3

    if-eqz v5, :cond_1

    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getImageToLoad()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v7

    .line 160
    .local v7, imageToLoad:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-direct {p0, v7}, Lcom/google/android/finsky/layout/FifeImageView;->getImageUrlToLoad(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, urlToLoad:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 163
    .local v10, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v10, :cond_1

    .line 164
    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 170
    .end local v10           #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getPlaceholder()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 173
    .local v2, placeholder:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 174
    .restart local v10       #oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 175
    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 177
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eq v6, v2, :cond_5

    .line 178
    .local v8, isLoaded:Z
    :goto_1
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    goto :goto_0

    .end local v8           #isLoaded:Z
    :cond_5
    move v8, v11

    .line 177
    goto :goto_1

    .line 181
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v10}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 186
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    .line 187
    new-instance v3, Lcom/google/android/finsky/layout/FifeImageView$1;

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mToFadeInAfterLoad:Z

    iget-object v12, p0, Lcom/google/android/finsky/layout/FifeImageView;->mViewToFadeIn:Landroid/view/View;

    invoke-direct {v3, p0, p0, v0, v12}, Lcom/google/android/finsky/layout/FifeImageView$1;-><init>(Lcom/google/android/finsky/layout/FifeImageView;Landroid/widget/ImageView;ZLandroid/view/View;)V

    .line 202
    .local v3, thumbnailListener:Lcom/google/android/finsky/layout/ThumbnailListener;
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v9

    .line 204
    .local v9, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {p0, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setTag(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v9}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 206
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .line 207
    if-eq v6, v2, :cond_8

    .line 208
    .restart local v8       #isLoaded:Z
    :goto_2
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/FifeImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    .line 210
    invoke-direct {p0}, Lcom/google/android/finsky/layout/FifeImageView;->invokeOnLoaded()V

    goto :goto_0

    .end local v8           #isLoaded:Z
    :cond_8
    move v8, v11

    .line 207
    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 277
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 281
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 282
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 269
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mWaitForLayout:Z

    .line 271
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary()V

    .line 272
    return-void
.end method

.method public setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "image"
    .parameter "bitmapLoader"

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mImage:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 85
    iput-object p2, p0, Lcom/google/android/finsky/layout/FifeImageView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setLoaded(Z)V

    .line 87
    iput v0, p0, Lcom/google/android/finsky/layout/FifeImageView;->mRequestCount:I

    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FifeImageView;->loadImageIfNecessary()V

    .line 90
    return-void
.end method

.method declared-synchronized setLoaded(Z)V
    .locals 1
    .parameter "isLoaded"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 80
    iput p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxHeight:I

    .line 81
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxWidth"

    .prologue
    .line 75
    iput p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mMaxWidth:I

    .line 76
    return-void
.end method

.method public setOnLoadedListener(Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;)V
    .locals 0
    .parameter "onLoadedListener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mOnLoadedListener:Lcom/google/android/finsky/layout/FifeImageView$OnLoadedListener;

    .line 103
    return-void
.end method

.method public setViewToFadeIn(Landroid/view/View;)V
    .locals 0
    .parameter "viewToFadeIn"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/layout/FifeImageView;->mViewToFadeIn:Landroid/view/View;

    .line 113
    return-void
.end method
