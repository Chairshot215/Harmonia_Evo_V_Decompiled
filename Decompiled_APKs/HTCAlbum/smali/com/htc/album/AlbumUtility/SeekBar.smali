.class public Lcom/htc/album/AlbumUtility/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;
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

.field private mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

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
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/album/AlbumUtility/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/AlbumUtility/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
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

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    .line 37
    iput v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    .line 38
    iput v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbStartTop:I

    .line 45
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mShadow:Landroid/graphics/Paint;

    .line 97
    iput-boolean v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mFocusFlag:Z

    .line 98
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    .line 146
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMax:I

    .line 156
    iput v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mX:I

    .line 48
    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumUtility/SeekBar;->setFocusable(Z)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/htc/album/AlbumUtility/SeekBar;->setFocusableInTouchMode(Z)V

    .line 51
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mShadow:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20804c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_progress_full"

    const v3, 0x20804c1

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 64
    .local v0, DM:Landroid/util/DisplayMetrics;
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_HIGH_SPEED_SUPPORT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FOR_CMCC_PROJECT:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1

    .line 66
    invoke-static {p1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getSeekbarWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mWidth:I

    .line 72
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mHeight:I

    .line 74
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    .line 75
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbHeight:I

    .line 78
    iget v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mWidth:I

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMesureWidth:I

    .line 81
    iput v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    .line 84
    iget v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbStartTop:I

    .line 87
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mHeight:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mHeight:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbStartTop:I

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbStartTop:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mWidth:I

    goto/16 :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    iget-boolean v0, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 103
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    .local v0, seekbarBound:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 105
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 106
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 107
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 110
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 112
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return v7

    .line 114
    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch()V

    .line 117
    :cond_1
    iput-boolean v7, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mFocusFlag:Z

    goto :goto_0

    .line 121
    :pswitch_1
    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    sub-int v3, v1, v3

    int-to-double v3, v3

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMax:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMesureWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    .line 123
    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    if-gez v3, :cond_2

    .line 124
    iput v8, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    .line 125
    :cond_2
    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    invoke-virtual {p0, v3}, Lcom/htc/album/AlbumUtility/SeekBar;->setProgress(I)V

    .line 127
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    invoke-interface {v3, v4, v7}, Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;->onProgressChanged(IZ)V

    goto :goto_0

    .line 133
    :pswitch_2
    iput-boolean v8, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mFocusFlag:Z

    .line 134
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3}, Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch()V

    goto :goto_0

    .line 112
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
    .line 153
    iput-boolean p1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mEnabled:Z

    .line 154
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 148
    iput p1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMax:I

    .line 149
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mListener:Lcom/htc/album/AlbumUtility/SeekBar$OnSeekBarChangeListener;

    .line 213
    return-void
.end method

.method public setProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 158
    iput p1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    .line 159
    iget v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mProgress:I

    int-to-double v1, v1

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMax:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMesureWidth:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 161
    .local v0, x:I
    if-gez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 167
    :cond_0
    iget v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMesureWidth:I

    if-le v0, v1, :cond_1

    .line 168
    iget v0, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mMesureWidth:I

    .line 170
    :cond_1
    iput v0, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mX:I

    .line 176
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbStartTop:I

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbStartTop:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/SeekBar;->invalidate()V

    .line 193
    return-void

    .line 187
    :cond_2
    if-lez v0, :cond_3

    .line 188
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mThumbWidth:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mDrawPlayed:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v3, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v4, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartLeft:I

    iget v5, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mStartTop:I

    iget v6, p0, Lcom/htc/album/AlbumUtility/SeekBar;->mHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method
