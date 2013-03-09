.class public Lcom/htc/widget/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDrawBg:Landroid/graphics/drawable/Drawable;

.field private mDrawPlayed:Landroid/graphics/drawable/Drawable;

.field private mDrawThumb:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mFocusFlag:Z

.field private mHeight:I

.field private mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

.field private mMax:I

.field private mMesureWidth:I

.field private mProgress:I

.field mShadow:Landroid/graphics/Paint;

.field private mStartLeft:I

.field private mStartTop:I

.field private mThumbHeight:I

.field private mThumbStartTop:I

.field private mThumbWidth:I

.field private mWidth:I

.field mX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iput v3, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iput v3, p0, Lcom/htc/widget/SeekBar;->mThumbStartTop:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->mShadow:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/htc/widget/SeekBar;->mFocusFlag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/widget/SeekBar;->mMax:I

    iput v3, p0, Lcom/htc/widget/SeekBar;->mX:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/SeekBar;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/SeekBar;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mShadow:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20804c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_progress_full"

    const v2, 0x20804c1

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->mWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->mHeight:I

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->mThumbHeight:I

    iget v0, p0, Lcom/htc/widget/SeekBar;->mWidth:I

    iget v1, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/SeekBar;->mMesureWidth:I

    iput v3, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2050086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v0, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v1, p0, Lcom/htc/widget/SeekBar;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/widget/SeekBar;->mThumbHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/SeekBar;->mThumbStartTop:I

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/SeekBar;->mHeight:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/SeekBar;->mHeight:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v2, p0, Lcom/htc/widget/SeekBar;->mThumbStartTop:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/SeekBar;->mThumbStartTop:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/htc/widget/SeekBar;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v7

    :pswitch_0
    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch()V

    :cond_1
    iput-boolean v7, p0, Lcom/htc/widget/SeekBar;->mFocusFlag:Z

    goto :goto_0

    :pswitch_1
    iget v3, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    sub-int v3, v1, v3

    int-to-double v3, v3

    iget v5, p0, Lcom/htc/widget/SeekBar;->mMax:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/htc/widget/SeekBar;->mMesureWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    if-gez v3, :cond_2

    iput v8, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    :cond_2
    iget v3, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    invoke-virtual {p0, v3}, Lcom/htc/widget/SeekBar;->setProgress(I)V

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    iget v4, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    invoke-interface {v3, v4, v7}, Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    goto :goto_0

    :pswitch_2
    iput-boolean v8, p0, Lcom/htc/widget/SeekBar;->mFocusFlag:Z

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/SeekBar;->mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/SeekBar;->mEnabled:Z

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/SeekBar;->mMax:I

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/SeekBar;->mListener:Lcom/htc/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 7

    iput p1, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    iget v1, p0, Lcom/htc/widget/SeekBar;->mProgress:I

    int-to-double v1, v1

    iget v3, p0, Lcom/htc/widget/SeekBar;->mMax:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/htc/widget/SeekBar;->mMesureWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/htc/widget/SeekBar;->mMesureWidth:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/SeekBar;->mMesureWidth:I

    :cond_1
    iput v0, p0, Lcom/htc/widget/SeekBar;->mX:I

    iget-object v1, p0, Lcom/htc/widget/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/htc/widget/SeekBar;->mThumbStartTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbStartTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->mThumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/SeekBar;->invalidate()V

    return-void

    :cond_2
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/htc/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->mThumbWidth:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/widget/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/widget/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/widget/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method
