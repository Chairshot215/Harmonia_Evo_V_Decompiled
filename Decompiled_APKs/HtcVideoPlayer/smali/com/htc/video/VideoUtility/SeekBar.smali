.class public Lcom/htc/video/VideoUtility/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;
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

.field private mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

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
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/video/VideoUtility/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/video/VideoUtility/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    .line 34
    iput v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    .line 35
    iput v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbStartTop:I

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mShadow:Landroid/graphics/Paint;

    .line 94
    iput-boolean v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mFocusFlag:Z

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    .line 96
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    .line 143
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMax:I

    .line 153
    iput v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mX:I

    .line 45
    invoke-virtual {p0, v2}, Lcom/htc/video/VideoUtility/SeekBar;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/htc/video/VideoUtility/SeekBar;->setFocusableInTouchMode(Z)V

    .line 48
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mShadow:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20804c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_progress_full"

    const v3, 0x20804c1

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    .local v0, DM:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    .line 63
    invoke-static {p1}, Lcom/htc/video/Common/Constants;->getSeekbarWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mWidth:I

    .line 69
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mHeight:I

    .line 71
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    .line 72
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbHeight:I

    .line 75
    iget v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mWidth:I

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMesureWidth:I

    .line 78
    iput v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    .line 81
    iget v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbStartTop:I

    .line 84
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mHeight:I

    iget v6, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mHeight:I

    iget v6, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbStartTop:I

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbStartTop:I

    iget v6, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mWidth:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    iget-boolean v0, p0, Lcom/htc/video/VideoUtility/SeekBar;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    iget-object v0, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 100
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 101
    .local v0, seekbarBound:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 102
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 103
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 107
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 109
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return v7

    .line 111
    :pswitch_0
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch()V

    .line 114
    :cond_1
    iput-boolean v7, p0, Lcom/htc/video/VideoUtility/SeekBar;->mFocusFlag:Z

    goto :goto_0

    .line 118
    :pswitch_1
    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    sub-int v3, v1, v3

    int-to-double v3, v3

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMax:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMesureWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    .line 120
    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    if-gez v3, :cond_2

    .line 121
    iput v8, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    .line 122
    :cond_2
    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    invoke-virtual {p0, v3}, Lcom/htc/video/VideoUtility/SeekBar;->setProgress(I)V

    .line 124
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    invoke-interface {v3, v4, v7}, Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    goto :goto_0

    .line 130
    :pswitch_2
    iput-boolean v8, p0, Lcom/htc/video/VideoUtility/SeekBar;->mFocusFlag:Z

    .line 131
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch()V

    goto :goto_0

    .line 109
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
    .parameter "enabled"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mEnabled:Z

    .line 151
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMax:I

    .line 146
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mListener:Lcom/htc/video/VideoUtility/SeekBar$OnSeekBarChangeListener;

    .line 210
    return-void
.end method

.method public setProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 155
    iput p1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    .line 156
    iget v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mProgress:I

    int-to-double v1, v1

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMax:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMesureWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 158
    .local v0, x:I
    if-gez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 164
    :cond_0
    iget v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMesureWidth:I

    if-le v0, v1, :cond_1

    .line 165
    iget v0, p0, Lcom/htc/video/VideoUtility/SeekBar;->mMesureWidth:I

    .line 167
    :cond_1
    iput v0, p0, Lcom/htc/video/VideoUtility/SeekBar;->mX:I

    .line 173
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbStartTop:I

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbStartTop:I

    iget v6, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/video/VideoUtility/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/htc/video/VideoUtility/SeekBar;->invalidate()V

    .line 190
    return-void

    .line 184
    :cond_2
    if-lez v0, :cond_3

    .line 185
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mThumbWidth:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/video/VideoUtility/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/htc/video/VideoUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/video/VideoUtility/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/video/VideoUtility/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method
