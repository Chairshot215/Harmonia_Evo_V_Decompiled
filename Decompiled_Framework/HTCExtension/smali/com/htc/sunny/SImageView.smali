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

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SImageView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/sunny/SImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny/SImageView;->freeImageDrawable()V

    return-void
.end method

.method private freeImageDrawable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_0
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_2
    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void
.end method


# virtual methods
.method protected createResource()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/htc/sunny/SView;->createResource()V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_4
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_5
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SImageView;->setIconDisplaySize(II)V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SImageView;->mImageTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    :cond_6
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v1, v2, v6, v6, v3}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_8
    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    :cond_9
    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v8, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_a
    if-ne v7, v0, :cond_b

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v7}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SImageView;->setTouchable(Z)V

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v1, v2, v6}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v4, v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v1, :cond_3

    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    invoke-virtual {p0, v5}, Lcom/htc/sunny/SImageView;->onFocusChanged(Z)V

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    invoke-interface {v1}, Lcom/htc/sunny/SView$OnClickListener;->onClick()V

    goto :goto_0
.end method

.method protected freeResource()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-super {p0}, Lcom/htc/sunny/SView;->freeResource()V

    goto :goto_0
.end method

.method protected onFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconPressTextureId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny/SImageView;->invalidate3DView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconRestTextureId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method protected setIconDisplaySize(II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iput p2, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SImageView;->mIconSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    iget v4, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    :cond_5
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    :cond_7
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    if-ne v1, v0, :cond_9

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconWidth:I

    :cond_9
    iget v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SImageView;->mSunnyIconPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SImageView;->mIconHeight:I

    goto :goto_1
.end method

.method public setImage(II)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SImageView$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$5;-><init>(Lcom/htc/sunny/SImageView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImage(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SImageView$4;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$4;-><init>(Lcom/htc/sunny/SImageView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SImageView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SImageView$3;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SImageView$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SImageView$2;-><init>(Lcom/htc/sunny/SImageView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImagePosition(FFF)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SImageView$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SImageView$1;-><init>(Lcom/htc/sunny/SImageView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/sunny/SView;->setTouchable(Z)V

    new-instance v0, Lcom/htc/sunny/SImageView$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SImageView$6;-><init>(Lcom/htc/sunny/SImageView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SImageView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateViewLayout()V
    .locals 5

    invoke-super {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

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
