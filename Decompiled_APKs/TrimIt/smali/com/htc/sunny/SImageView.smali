.class public Lcom/htc/sunny/SImageView;
.super Lcom/htc/sunny/SView;
.source "SImageView.java"


# instance fields
.field private mIconHeight:I

.field private mIconPressTextureId:I

.field private mIconRestTextureId:I

.field private mIconSpriteId:I

.field private mIconWidth:I

.field protected mImagePressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageRestDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageTranslation:Lcom/htc/sunny/Vector3F;

.field protected mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

.field protected mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 3
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    .line 33
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 34
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 35
    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 37
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    .line 41
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 43
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny/SImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/sunny/SImageView;->freeImageDrawable()V

    return-void
.end method

.method private freeImageDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 167
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 169
    :cond_0
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 174
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 176
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    :cond_3
    return-void
.end method


# virtual methods
.method protected createResource()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 301
    invoke-super {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 302
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny/SImageView;->mIsSurfaceBinded:Z

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 309
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 314
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 315
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_4

    .line 316
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 317
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 322
    :cond_5
    const/4 v0, 0x0

    .line 323
    .local v0, bRenderable:Z
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_8

    .line 324
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-nez v1, :cond_6

    .line 325
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mViewNodeId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 326
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SImageView;->setIconDisplaySize(II)V

    .line 327
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 328
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 331
    :cond_6
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-nez v1, :cond_7

    .line 332
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 334
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v1, v2, v6, v6, v3}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 336
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 337
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 338
    const/4 v0, 0x1

    .line 339
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 340
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 341
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 346
    :cond_8
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_a

    .line 348
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-nez v1, :cond_9

    .line 349
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 352
    :cond_9
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v1, :cond_a

    .line 353
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 354
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 355
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    .line 356
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 357
    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 363
    :cond_a
    if-ne v7, v0, :cond_b

    .line 364
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 369
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SImageView;->mTouchable:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SImageView;->setTouchable(Z)V

    .line 370
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    goto/16 :goto_0

    .line 366
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 206
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 207
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 211
    .local v0, nHitSpriteId:I
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_2

    if-eqz v0, :cond_2

    .line 212
    iput-boolean v4, p0, Lcom/htc/sunny/SImageView;->mIsPressed:Z

    .line 213
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    .line 217
    .end local v0           #nHitSpriteId:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 219
    iget-boolean v1, p0, Lcom/htc/sunny/SImageView;->mIsPressed:Z

    if-ne v4, v1, :cond_3

    .line 220
    iput-boolean v5, p0, Lcom/htc/sunny/SImageView;->mIsPressed:Z

    .line 221
    invoke-virtual {p0, v5}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    .line 225
    .restart local v0       #nHitSpriteId:I
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    invoke-interface {v1}, Lcom/htc/sunny/SView$OnClickListener;->onClick()V

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 380
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 385
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 389
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    .line 391
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 392
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    .line 394
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 395
    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    .line 397
    invoke-super {p0}, Lcom/htc/sunny/SView;->freeResource()V

    goto :goto_0
.end method

.method protected onFocusChanged(Z)V
    .locals 5
    .parameter "bFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 184
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny/SImageView;->mIsPressed:Z

    if-ne v4, v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 188
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny/SImageView;->invalidate3DView()V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 195
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method protected setIconDisplaySize(II)V
    .locals 7
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 240
    iput p1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 241
    iput p2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    .line 243
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 244
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 247
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    .line 273
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v4, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    goto :goto_0

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 251
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 254
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_8

    .line 258
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 261
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    .line 264
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_3

    .line 265
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_9

    .line 266
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    .line 268
    :cond_9
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1
.end method

.method public setImage(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 148
    new-instance v0, Lcom/htc/sunny/SImageView$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$5;-><init>(Lcom/htc/sunny/SImageView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public setImage(IIII)V
    .locals 6
    .parameter "nPressResId"
    .parameter "nRestResId"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 119
    new-instance v0, Lcom/htc/sunny/SImageView$4;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$4;-><init>(Lcom/htc/sunny/SImageView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"

    .prologue
    .line 102
    new-instance v0, Lcom/htc/sunny/SImageView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$3;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 6
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 79
    new-instance v0, Lcom/htc/sunny/SImageView$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$2;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public setImagePosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 59
    new-instance v0, Lcom/htc/sunny/SImageView$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SImageView$1;-><init>(Lcom/htc/sunny/SImageView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "bTouchable"

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->setTouchable(Z)V

    .line 286
    new-instance v0, Lcom/htc/sunny/SImageView$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SImageView$6;-><init>(Lcom/htc/sunny/SImageView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method protected updateViewLayout()V
    .locals 5

    .prologue
    .line 156
    invoke-super {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    .line 158
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v2, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_0
.end method
