.class public Landroid/webkit/WebViewAutoScroller;
.super Ljava/lang/Object;
.source "WebViewAutoScroller.java"


# static fields
.field private static final AUTO_SCROLL_DELAY:I = 0x14

.field private static final AUTO_SCROLL_STEP_MAGNIFICATION:F = 1.065f

.field private static final INITIAL_AUTO_SCROLL_DELAY:I = 0xfa

.field private static final INITIAL_AUTO_SCROLL_STEP:F = 0.07f

.field private static final LINE_HEIGHT:I = 0x14

.field private static final MSG_AUTO_SCROLL:I = 0x1


# instance fields
.field private AUTO_SCROLL_STEP:F

.field private mAnchorRelatedPositionX:I

.field private mAnchorRelatedPositionY:I

.field private mAutoScrollChanged:Z

.field private mAutoScrollEnabled:Z

.field private mPrivateHandler:Landroid/os/Handler;

.field private mScreenOffset:[I

.field private mScrollableView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    new-instance v0, Landroid/webkit/WebViewAutoScroller$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewAutoScroller$1;-><init>(Landroid/webkit/WebViewAutoScroller;)V

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/webkit/WebViewAutoScroller;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebViewAutoScroller;->doAutoScroll(Landroid/os/Message;)V

    return-void
.end method

.method private doAutoScroll(Landroid/os/Message;)V
    .locals 14

    const/4 v9, -0x1

    const/16 v12, 0x5d

    const/4 v10, 0x1

    const/4 v13, 0x0

    iput-boolean v13, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v5

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v6

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_1

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-gez v8, :cond_7

    move v8, v9

    :goto_1
    int-to-float v8, v8

    iget v11, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    mul-float/2addr v8, v11

    const/high16 v11, 0x3f40

    mul-float v1, v8, v11

    :cond_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_2

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-gez v8, :cond_8

    :goto_2
    int-to-float v8, v9

    iget v9, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    mul-float v2, v8, v9

    :cond_2
    float-to-int v8, v1

    add-int v3, v5, v8

    float-to-int v8, v2

    add-int v4, v6, v8

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    instance-of v8, v8, Landroid/webkit/WebView;

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    check-cast v8, Landroid/webkit/WebView;

    invoke-virtual {v8, v3, v4, v13, v13}, Landroid/webkit/WebView;->myScrollTo(IIZI)V

    :cond_3
    :goto_3
    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v12, :cond_4

    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v12, :cond_a

    :cond_4
    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    const/high16 v9, 0x41a0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    iget v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    const v9, 0x3f8851ec

    mul-float/2addr v8, v9

    iput v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    :cond_5
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    iget v9, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    iget v11, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-virtual {v8, v10, v9, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x14

    invoke-virtual {v8, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_4
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    if-ne v5, v8, :cond_6

    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v8

    if-eq v6, v8, :cond_b

    :cond_6
    iput-boolean v10, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    goto/16 :goto_0

    :cond_7
    move v8, v10

    goto :goto_1

    :cond_8
    move v9, v10

    goto :goto_2

    :cond_9
    iget-object v8, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    instance-of v8, v8, Landroid/widget/ScrollView;

    if-eqz v8, :cond_3

    iget-object v7, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v7, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_3

    :cond_a
    iput-boolean v13, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    goto :goto_4

    :cond_b
    iput-boolean v13, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    const v8, 0x3fb33333

    iput v8, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    goto/16 :goto_0
.end method


# virtual methods
.method checkAutoScroll(FF)V
    .locals 7

    const/16 v6, 0x5a

    const/4 v5, 0x1

    const/high16 v4, 0x4348

    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    iget-boolean v2, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v6, :cond_2

    iget v2, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_0

    :cond_2
    iput-boolean v5, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    iget v4, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const v2, 0x3fb33333

    iput v2, p0, Landroid/webkit/WebViewAutoScroller;->AUTO_SCROLL_STEP:F

    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method checkAutoScroll(FFZ)V
    .locals 2

    if-nez p3, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewAutoScroller;->checkAutoScroll(FF)V

    return-void
.end method

.method findScrollableView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iput-object p1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    iget-object v2, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    aput v3, v1, v3

    iget-object v1, p0, Landroid/webkit/WebViewAutoScroller;->mScreenOffset:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    goto :goto_1
.end method

.method isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopScroll()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionX:I

    iput v0, p0, Landroid/webkit/WebViewAutoScroller;->mAnchorRelatedPositionY:I

    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollEnabled:Z

    iput-boolean v0, p0, Landroid/webkit/WebViewAutoScroller;->mAutoScrollChanged:Z

    iget-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewAutoScroller;->mScrollableView:Landroid/view/View;

    return-void
.end method
