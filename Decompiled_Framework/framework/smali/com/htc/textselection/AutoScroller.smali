.class public Lcom/htc/textselection/AutoScroller;
.super Ljava/lang/Object;
.source "AutoScroller.java"


# static fields
.field private static final AUTO_SCROLL_DELAY:I = 0x14

.field private static AUTO_SCROLL_STEP:F = 0.0f

.field private static final AUTO_SCROLL_STEP_MAGNIFICATION:F = 1.065f

.field private static final INITIAL_AUTO_SCROLL_DELAY:I = 0x12c

.field private static final INITIAL_AUTO_SCROLL_STEP:F = 0.07f

.field private static final MSG_AUTO_SCROLL:I = 0x1


# instance fields
.field private mAnchorRelatedPositionX:I

.field private mAnchorRelatedPositionY:I

.field private mAutoScrollChanged:Z

.field private mAutoScrollEnabled:Z

.field private mPrivateHandler:Landroid/os/Handler;

.field private mScrollableView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionX:I

    iput v0, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionY:I

    iput-boolean v0, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollChanged:Z

    iput-boolean v0, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollEnabled:Z

    iput-object v1, p0, Lcom/htc/textselection/AutoScroller;->mTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    new-instance v0, Lcom/htc/textselection/AutoScroller$1;

    invoke-direct {v0, p0}, Lcom/htc/textselection/AutoScroller$1;-><init>(Lcom/htc/textselection/AutoScroller;)V

    iput-object v0, p0, Lcom/htc/textselection/AutoScroller;->mPrivateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/textselection/AutoScroller;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/textselection/AutoScroller;->doAutoScroll(Landroid/os/Message;)V

    return-void
.end method

.method private doAutoScroll(Landroid/os/Message;)V
    .locals 14

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollChanged:Z

    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v7

    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v8

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x5d

    if-le v10, v11, :cond_1

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-gez v10, :cond_7

    const/4 v10, -0x1

    :goto_1
    int-to-float v10, v10

    sget v11, Lcom/htc/textselection/AutoScroller;->AUTO_SCROLL_STEP:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f40

    mul-float v1, v10, v11

    :cond_1
    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x5d

    if-le v10, v11, :cond_2

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-gez v10, :cond_8

    const/4 v10, -0x1

    :goto_2
    int-to-float v10, v10

    sget v11, Lcom/htc/textselection/AutoScroller;->AUTO_SCROLL_STEP:F

    mul-float v2, v10, v11

    :cond_2
    float-to-int v10, v1

    add-int v4, v7, v10

    float-to-int v10, v2

    add-int v5, v8, v10

    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    instance-of v10, v10, Landroid/widget/TextView;

    if-eqz v10, :cond_9

    iget-object v9, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v11

    add-int v6, v10, v11

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    sub-int/2addr v11, v6

    sub-int/2addr v10, v11

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v10, 0x0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v9, v3, v4, v5}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    :cond_3
    :goto_3
    iget v10, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionX:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x5d

    if-gt v10, v11, :cond_4

    iget v10, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionY:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v11, 0x5d

    if-le v10, v11, :cond_a

    :cond_4
    sget v10, Lcom/htc/textselection/AutoScroller;->AUTO_SCROLL_STEP:F

    iget-object v11, p0, Lcom/htc/textselection/AutoScroller;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLineHeight()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    sget v10, Lcom/htc/textselection/AutoScroller;->AUTO_SCROLL_STEP:F

    const v11, 0x3f8851ec

    mul-float/2addr v10, v11

    sput v10, Lcom/htc/textselection/AutoScroller;->AUTO_SCROLL_STEP:F

    :cond_5
    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    iget v12, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionX:I

    iget v13, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionY:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x14

    invoke-virtual {v10, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_4
    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScrollX()I

    move-result v10

    if-ne v7, v10, :cond_6

    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    if-eq v8, v10, :cond_b

    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollChanged:Z

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v10, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    instance-of v10, v10, Landroid/widget/ScrollView;

    if-eqz v10, :cond_3

    iget-object v9, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    check-cast v9, Landroid/widget/ScrollView;

    invoke-virtual {v9, v4, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollEnabled:Z

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollChanged:Z

    const v10, 0x3d8f5c29

    iget-object v11, p0, Lcom/htc/textselection/AutoScroller;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLineHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    sput v10, Lcom/htc/textselection/AutoScroller;->AUTO_SCROLL_STEP:F

    goto/16 :goto_0
.end method


# virtual methods
.method checkAutoScroll(FF)V
    .locals 7

    const/16 v6, 0x5d

    const/4 v5, 0x1

    const/high16 v4, 0x4348

    iget-object v2, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

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

    iput v2, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionX:I

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

    iput v2, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionY:I

    iget-boolean v2, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollEnabled:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v6, :cond_2

    iget v2, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_0

    :cond_2
    iput-boolean v5, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollEnabled:Z

    iget-object v2, p0, Lcom/htc/textselection/AutoScroller;->mPrivateHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionX:I

    iget v4, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionY:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const v2, 0x3d8f5c29

    iget-object v3, p0, Lcom/htc/textselection/AutoScroller;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sput v2, Lcom/htc/textselection/AutoScroller;->AUTO_SCROLL_STEP:F

    iget-object v2, p0, Lcom/htc/textselection/AutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method findScrollableView(Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/textselection/AutoScroller;->mTextView:Landroid/widget/TextView;

    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    goto :goto_0
.end method

.method isScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollChanged:Z

    return v0
.end method

.method stopScroll()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionX:I

    iput v0, p0, Lcom/htc/textselection/AutoScroller;->mAnchorRelatedPositionY:I

    iput-boolean v0, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollEnabled:Z

    iput-boolean v0, p0, Lcom/htc/textselection/AutoScroller;->mAutoScrollChanged:Z

    iget-object v0, p0, Lcom/htc/textselection/AutoScroller;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/htc/textselection/AutoScroller;->mTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/textselection/AutoScroller;->mScrollableView:Landroid/view/View;

    return-void
.end method
