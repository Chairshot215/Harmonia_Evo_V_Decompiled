.class public Landroid/webkit/HTCZoomView;
.super Ljava/lang/Object;
.source "HTCZoomView.java"


# static fields
.field static final FRAME_PER_SEC:F = 30.0f

.field static final LOGTAG:Ljava/lang/String; = "HTCZoomView"

.field static final UPDATE_INTERVAL:I = 0x21

.field private static final ZOOM_BITS:I = 0x86


# instance fields
.field TOTAL_FRAME:F

.field frameCount:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mInAnimation:Z

.field private mIntervalScale:F

.field private mIntervalX:I

.field private mIntervalY:I

.field private mMatrixValues:[F

.field private mOffX:I

.field private mOffY:I

.field private mOriginalScale:F

.field private mOriginalX:I

.field private mOriginalY:I

.field private mPicture:Landroid/graphics/Picture;

.field private mStartTime:J

.field private mViewScrollX:I

.field private mViewScrollY:I

.field private mWebView:Landroid/webkit/WebView;

.field private mZoomDuration:I

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field private tmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/HTCZoomView;->mStartTime:J

    iput-object v2, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    const/16 v0, 0x190

    iput v0, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    iput-object v2, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    iput v3, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    iput v3, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/HTCZoomView;->mZoomFilter:Landroid/graphics/DrawFilter;

    iput v3, p0, Landroid/webkit/HTCZoomView;->frameCount:I

    const/high16 v0, 0x41f0

    iput v0, p0, Landroid/webkit/HTCZoomView;->TOTAL_FRAME:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    iput v3, p0, Landroid/webkit/HTCZoomView;->mViewScrollX:I

    iput v3, p0, Landroid/webkit/HTCZoomView;->mViewScrollY:I

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/HTCZoomView;->mMatrixValues:[F

    iput-object p1, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method private createAnimation(IIFF)V
    .locals 7

    const/16 v6, 0x190

    const/high16 v5, 0x4296

    const-wide/high16 v3, 0x4010

    iput p3, p0, Landroid/webkit/HTCZoomView;->mOriginalScale:F

    sub-float v1, p4, p3

    iput v1, p0, Landroid/webkit/HTCZoomView;->mIntervalScale:F

    cmpl-float v1, p3, p4

    if-lez v1, :cond_1

    div-float v0, p3, p4

    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    iput v6, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    :goto_0
    const-string v1, "HTCZoomView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p1

    iget v2, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HTCZoomView;->mIntervalX:I

    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    iget v1, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p2

    iget v2, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/HTCZoomView;->mIntervalY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/HTCZoomView;->mStartTime:J

    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/HTCZoomView;->frameCount:I

    iget v1, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x4204

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/HTCZoomView;->TOTAL_FRAME:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    iget-object v1, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    return-void

    :cond_0
    mul-float v1, v5, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    goto :goto_0

    :cond_1
    div-float v0, p4, p3

    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    iput v6, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    goto :goto_0

    :cond_2
    mul-float v1, v5, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Landroid/webkit/HTCZoomView;->mZoomDuration:I

    goto/16 :goto_0
.end method

.method private createBitmap(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    const/4 v6, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v7, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v5, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v7, v1, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v0}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v7, :cond_2

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    :goto_0
    iput v5, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-le v5, v7, :cond_1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, v5, v6

    :cond_1
    iput v6, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string v5, "HTCZoomView"

    const-string v6, "OOM !"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method private createPicture(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    iput-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    :cond_0
    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v4, :cond_2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    :goto_0
    iput v2, p0, Landroid/webkit/HTCZoomView;->mOffX:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v2, v3

    :cond_1
    iput v3, p0, Landroid/webkit/HTCZoomView;->mOffY:I

    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public InAnimation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    return v0
.end method

.method public StartAnimationZoom(Landroid/graphics/Rect;FF)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCZoomView;->mViewScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getScrollY()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCZoomView;->mViewScrollY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCZoomView;->mViewScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCZoomView;->mViewScrollY:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCZoomView;->mViewScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HTCZoomView;->mViewScrollY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v22

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v12

    if-nez p1, :cond_2

    const-string v24, "HTCZoomView"

    const-string/jumbo v25, "nodeRect is NULL"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    sub-int v5, v24, v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v6, v24, v9

    const/16 v20, 0x0

    const/16 v21, 0x0

    shr-int/lit8 v24, v23, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v15

    shr-int/lit8 v24, v22, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    sub-int v24, v24, v15

    if-gez v24, :cond_5

    move/from16 v20, v8

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v24, v24, v14

    add-int/lit8 v25, v11, -0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    add-int v21, v9, v11

    :cond_4
    :goto_2
    new-instance v19, Landroid/graphics/Rect;

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, p2

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    add-int v24, v24, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v25, p2

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v25

    add-int v25, v25, v9

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v24, v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v25, v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v26, v26, v20

    shl-int/lit8 v27, v15, 0x1

    add-int v26, v26, v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v27, v27, v21

    shl-int/lit8 v28, v14, 0x1

    add-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTCZoomView;->createBitmap(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_3
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p3

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v21

    const-string v24, "HTCZoomView"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "shift x = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", shift y = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/HTCZoomView;->createAnimation(IIFF)V

    goto/16 :goto_0

    :cond_5
    sub-int v20, v15, v5

    move/from16 v0, v23

    if-lt v13, v0, :cond_6

    move v10, v13

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    sub-int v17, v10, v24

    move/from16 v0, v17

    if-ge v0, v15, :cond_3

    sub-int v24, v15, v17

    add-int v20, v20, v24

    const-string v24, "HTCZoomView"

    const-string/jumbo v25, "over scroll x"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move/from16 v10, v23

    goto :goto_4

    :cond_7
    sub-int v21, v14, v6

    move/from16 v0, v22

    if-lt v12, v0, :cond_8

    move v7, v12

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v24

    sub-int v18, v7, v24

    move/from16 v0, v18

    if-ge v0, v14, :cond_4

    sub-int v24, v14, v18

    add-int v21, v21, v24

    const-string v24, "HTCZoomView"

    const-string/jumbo v25, "over scroll y"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move/from16 v7, v22

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkit/HTCZoomView;->createPicture(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-boolean v6, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    iget-boolean v6, v6, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iput v6, p0, Landroid/webkit/HTCZoomView;->mViewScrollX:I

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, p0, Landroid/webkit/HTCZoomView;->mViewScrollY:I

    :goto_0
    iget v6, p0, Landroid/webkit/HTCZoomView;->mViewScrollX:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/HTCZoomView;->mViewScrollY:I

    iget-object v8, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/webkit/HTCZoomView;->mStartTime:J

    sub-long v2, v6, v8

    iget v6, p0, Landroid/webkit/HTCZoomView;->frameCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkit/HTCZoomView;->frameCount:I

    iget v6, p0, Landroid/webkit/HTCZoomView;->frameCount:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/HTCZoomView;->TOTAL_FRAME:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, p0, Landroid/webkit/HTCZoomView;->frameCount:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/HTCZoomView;->TOTAL_FRAME:F

    div-float v0, v6, v7

    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalX:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v4, v6, v7

    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalY:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v5, v6, v7

    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalScale:F

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalScale:F

    mul-float/2addr v7, v0

    add-float v1, v6, v7

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v6, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->invalidate()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    iput v6, p0, Landroid/webkit/HTCZoomView;->mViewScrollX:I

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    iput v6, p0, Landroid/webkit/HTCZoomView;->mViewScrollY:I

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/HTCZoomView;->mInAnimation:Z

    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalX:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalX:I

    add-int v4, v6, v7

    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalY:I

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalY:I

    add-int v5, v6, v7

    iget v6, p0, Landroid/webkit/HTCZoomView;->mOriginalScale:F

    iget v7, p0, Landroid/webkit/HTCZoomView;->mIntervalScale:F

    add-float v1, v6, v7

    goto :goto_1

    :cond_4
    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    goto :goto_2

    :cond_5
    iput-object v10, p0, Landroid/webkit/HTCZoomView;->mPicture:Landroid/graphics/Picture;

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v10, p0, Landroid/webkit/HTCZoomView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebViewCore;->contentDraw()V

    iget-object v6, p0, Landroid/webkit/HTCZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_3
.end method
