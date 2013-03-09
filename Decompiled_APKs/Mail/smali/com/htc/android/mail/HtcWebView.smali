.class public Lcom/htc/android/mail/HtcWebView;
.super Landroid/webkit/WebView;
.source "HtcWebView.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final MAX_SCAN_NODE:I = 0xa

.field public static final TARGET_FONT_SIZE:I = 0xe


# instance fields
.field firstSelecting:Z

.field heightChanged:Z

.field isPreventParentIntecept:Z

.field private mBottomBar:Landroid/view/View;

.field private mBottomViewHeight:I

.field mCheckFirstHeightChange:Z

.field private mContext:Landroid/content/Context;

.field mDownX:F

.field mDownY:F

.field private mEnableEditorWhenActionUp:Z

.field private mIsEnableQuickSelection:Z

.field private mLastContentHeight:I

.field private mLastTitleHeight:I

.field private mNowTitleHeight:I

.field private mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

.field private mTitleBar:Landroid/view/View;

.field private mWebViewScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomViewHeight:I

    .line 25
    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mLastContentHeight:I

    .line 26
    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mLastTitleHeight:I

    .line 28
    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mNowTitleHeight:I

    .line 29
    iput-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->mEnableEditorWhenActionUp:Z

    .line 30
    iput-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->mIsEnableQuickSelection:Z

    .line 33
    iput v1, p0, Lcom/htc/android/mail/HtcWebView;->mWebViewScale:F

    .line 92
    iput-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->mCheckFirstHeightChange:Z

    .line 93
    iput-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->heightChanged:Z

    .line 156
    iput v1, p0, Lcom/htc/android/mail/HtcWebView;->mDownX:F

    .line 157
    iput v1, p0, Lcom/htc/android/mail/HtcWebView;->mDownY:F

    .line 158
    iput-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->isPreventParentIntecept:Z

    .line 159
    iput-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->firstSelecting:Z

    .line 37
    iput-object p1, p0, Lcom/htc/android/mail/HtcWebView;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->isEnableQuickSelection()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->mIsEnableQuickSelection:Z

    .line 39
    return-void
.end method


# virtual methods
.method public FindNextTableNode(I)I
    .locals 1
    .parameter "pointer"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCore;->nativeFindNextTableNode(I)I

    move-result v0

    return v0
.end method

.method public GetNodeRect(IZI)Landroid/graphics/Rect;
    .locals 1
    .parameter "pointer"
    .parameter "absolute"
    .parameter "defaultTextWidth"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/HTCWebCore;->nativeGetNodeRect(IZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/HtcWebView;->clearCache(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->setScrollView(Lcom/htc/android/mail/ReadScreenScrollView;)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/htc/android/mail/HtcWebView;->SetOwnerActivityContext(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method protected clearMemory()V
    .locals 0

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->freeMemory()V

    .line 405
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->clearWebCoreMemoryCache()V

    .line 406
    return-void
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/htc/android/mail/HtcWebView;->mBottomViewHeight:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    iget v1, p0, Lcom/htc/android/mail/HtcWebView;->mScrollX:I

    iget-object v2, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 127
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getNodeCapture(III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "pointer"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/HTCWebCore;->getNodeCapture(III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getViewHeight()I
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getHeight()I

    move-result v0

    .line 299
    .local v0, height:I
    return v0
.end method

.method public getZoomRatio()F
    .locals 9

    .prologue
    const/high16 v8, 0x4160

    const/high16 v4, 0x3f80

    .line 369
    iget-object v5, p0, Lcom/htc/android/mail/HtcWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v5, :cond_0

    .line 395
    :goto_0
    return v4

    .line 372
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/HtcWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/HTCWebCore;->nativeFindNextTextNode(I)I

    move-result v1

    .line 373
    .local v1, node:I
    const/16 v3, 0xe

    .line 374
    .local v3, smallestFont:I
    const-string v5, "HtcWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " next node:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v5, 0xa

    if-ge v0, v5, :cond_1

    .line 376
    if-nez v1, :cond_2

    .line 389
    :cond_1
    const-string v5, "HtcWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "final smallestFont is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/16 v5, 0xe

    if-lt v3, v5, :cond_5

    .line 391
    const-string v5, "HtcWebView"

    const-string v6, "return 1"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/HtcWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v5, v1}, Landroid/webkit/HTCWebCore;->nativeGetFontPixelSizeOfTextNode(I)I

    move-result v2

    .line 380
    .local v2, size:I
    iget-object v5, p0, Lcom/htc/android/mail/HtcWebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v5, v1}, Landroid/webkit/HTCWebCore;->nativeFindNextTextNode(I)I

    move-result v1

    .line 381
    const-string v5, "HtcWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", next node:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 375
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_4
    if-le v3, v2, :cond_3

    .line 385
    move v3, v2

    .line 386
    const-string v5, "HtcWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smallestFont is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 394
    .end local v2           #size:I
    :cond_5
    const-string v4, "HtcWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-float v6, v3

    div-float v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    int-to-float v4, v3

    div-float v4, v8, v4

    goto/16 :goto_0
.end method

.method public isEnableQuickSelection()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->mIsEnableQuickSelection:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 149
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "htcWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of memory in onDraw():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 226
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 231
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 234
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 333
    iget v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomViewHeight:I

    add-int/2addr v0, p2

    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 334
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 89
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 108
    const-string v0, "htcWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after call Set New Layout Height w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mWebViewScale:F

    .line 120
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 177
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 178
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 180
    .local v3, y:F
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v4, :cond_0

    .line 181
    const-string v4, "HtcWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcWebView::onTouchEvent] >> ev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 218
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 186
    :pswitch_0
    iput v1, p0, Lcom/htc/android/mail/HtcWebView;->mDownX:F

    .line 187
    iput v3, p0, Lcom/htc/android/mail/HtcWebView;->mDownY:F

    goto :goto_0

    .line 193
    :pswitch_1
    iget-boolean v4, p0, Lcom/htc/android/mail/HtcWebView;->firstSelecting:Z

    if-nez v4, :cond_1

    .line 194
    iget-boolean v4, p0, Lcom/htc/android/mail/HtcWebView;->isPreventParentIntecept:Z

    if-nez v4, :cond_3

    .line 195
    iget v4, p0, Lcom/htc/android/mail/HtcWebView;->mDownX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 196
    .local v2, xDiff:F
    const/high16 v4, 0x4120

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 198
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/android/mail/HtcWebView;->isPreventParentIntecept:Z

    .line 199
    iget v4, p0, Lcom/htc/android/mail/HtcWebView;->mDownY:F

    sub-float v4, v3, v4

    invoke-virtual {p1, v7, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    .line 201
    :cond_2
    iget v4, p0, Lcom/htc/android/mail/HtcWebView;->mDownX:F

    iget v5, p0, Lcom/htc/android/mail/HtcWebView;->mDownY:F

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 204
    .end local v2           #xDiff:F
    :cond_3
    iget v4, p0, Lcom/htc/android/mail/HtcWebView;->mDownY:F

    sub-float v4, v3, v4

    invoke-virtual {p1, v7, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_0

    .line 212
    :pswitch_2
    iput-boolean v8, p0, Lcom/htc/android/mail/HtcWebView;->isPreventParentIntecept:Z

    .line 213
    iput-boolean v8, p0, Lcom/htc/android/mail/HtcWebView;->firstSelecting:Z

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 360
    .local v0, bRet:Z
    return v0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 166
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->performLongClick()Z

    move-result v0

    .line 171
    .local v0, ret:Z
    return v0
.end method

.method public pinLocXInternal(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getWidth()I

    move-result v1

    .line 238
    .local v1, viewMax:I
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->computeHorizontalScrollRange()I

    move-result v0

    .line 240
    .local v0, docMax:I
    if-ge v0, v1, :cond_1

    .line 241
    const/4 p1, 0x0

    .line 247
    :cond_0
    :goto_0
    return p1

    .line 242
    :cond_1
    if-gez p1, :cond_2

    .line 243
    const/4 p1, 0x0

    goto :goto_0

    .line 244
    :cond_2
    add-int v2, p1, v1

    if-le v2, v0, :cond_0

    .line 245
    sub-int p1, v0, v1

    goto :goto_0
.end method

.method public pinLocYInternal(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getHeight()I

    move-result v2

    .line 252
    .local v2, viewMax:I
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->computeVerticalScrollRange()I

    move-result v0

    .line 253
    .local v0, docMax:I
    iget-object v3, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 255
    .local v1, titleHeight:I
    :goto_0
    if-ge p1, v1, :cond_1

    move v3, p1

    .line 267
    :goto_1
    return v3

    .line 253
    .end local v1           #titleHeight:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 258
    .restart local v1       #titleHeight:I
    :cond_1
    sub-int/2addr p1, v1

    .line 260
    if-ge v0, v2, :cond_3

    .line 261
    const/4 p1, 0x0

    .line 267
    :cond_2
    :goto_2
    add-int v3, p1, v1

    goto :goto_1

    .line 262
    :cond_3
    if-gez p1, :cond_4

    .line 263
    const/4 p1, 0x0

    goto :goto_2

    .line 264
    :cond_4
    add-int v3, p1, v2

    if-le v3, v0, :cond_2

    .line 265
    sub-int p1, v0, v2

    goto :goto_2
.end method

.method public removeEmbeddedBottomBar()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomViewHeight:I

    .line 327
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/HtcWebView;->removeView(Landroid/view/View;)V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    .line 329
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public resetEmbeddedBottomLoc()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 304
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getContentHeight()I

    move-result v0

    .line 305
    .local v0, contentHeight:I
    iget v1, p0, Lcom/htc/android/mail/HtcWebView;->mLastContentHeight:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/htc/android/mail/HtcWebView;->mLastTitleHeight:I

    iget-object v2, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const-string v1, "htcWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetEmbeddedBottomLoc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mLastContentHeight:I

    .line 310
    iget-object v1, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/HtcWebView;->mLastTitleHeight:I

    .line 312
    iget-object v1, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    if-nez v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setEmbeddedBottomBar(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "height"

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    if-nez v0, :cond_2

    .line 281
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/HtcWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mLastTitleHeight:I

    .line 293
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mBottomBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 294
    iput p2, p0, Lcom/htc/android/mail/HtcWebView;->mBottomViewHeight:I

    .line 295
    :cond_1
    return-void

    .line 285
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/HtcWebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    .line 72
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public setEnableQuickSelection(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/htc/android/mail/HtcWebView;->mIsEnableQuickSelection:Z

    if-eq v0, p1, :cond_0

    .line 348
    iput-boolean p1, p0, Lcom/htc/android/mail/HtcWebView;->mIsEnableQuickSelection:Z

    .line 349
    invoke-virtual {p0}, Lcom/htc/android/mail/HtcWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setEnableQuickSelection(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public setNewZoomScale(FZ)V
    .locals 0
    .parameter "scale"
    .parameter "force"

    .prologue
    .line 401
    return-void
.end method

.method public setScrollView(Lcom/htc/android/mail/ReadScreenScrollView;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/android/mail/HtcWebView;->mReadScreenScrollView:Lcom/htc/android/mail/ReadScreenScrollView;

    .line 66
    return-void
.end method

.method public updateEmbeddedTitleBar(I)V
    .locals 4
    .parameter "changeHeight"

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/android/mail/HtcWebView;->mNowTitleHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/HtcWebView;->mNowTitleHeight:I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/htc/android/mail/HtcWebView;->mTitleBar:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/android/mail/HtcWebView;->mNowTitleHeight:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    :cond_1
    const-string v0, "HtcWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " title "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/HtcWebView;->mNowTitleHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
