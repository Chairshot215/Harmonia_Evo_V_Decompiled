.class Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$QuickSelectWV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorTouchListener"
.end annotation


# static fields
.field static final ANCHOR_FLY_THRESHOLD_MILLI:J = 0x64L


# instance fields
.field private isPriorAnchor:Z

.field private mConfirmMove:Z

.field private mDownX:I

.field private mDownY:I

.field private mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

.field private mUpdateTime:J

.field final synthetic this$1:Landroid/webkit/WebView$QuickSelectWV;

.field private touchOffset:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$QuickSelectWV;)V
    .locals 2

    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    return-void
.end method

.method static synthetic access$16400(Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    return v0
.end method

.method private getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->PRIOR_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/SelectionAnchor;->POST_ANCHOR:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-nez v8, :cond_1

    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->getTouchAnchor(Landroid/view/View;)Lcom/htc/textselection/SelectionAnchor;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    :cond_1
    const/4 v8, 0x2

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v8, v5}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView$QuickSelectWV;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$16700(Landroid/webkit/WebView;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    aget v10, v5, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v9, v6, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v10}, Landroid/webkit/WebView;->access$16800(Landroid/webkit/WebView;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v5, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :pswitch_0
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v8}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v8

    sget-object v9, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v9, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v8, v9}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mConfirmMove:Z

    iget v8, v6, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    iput v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mDownX:I

    iget v8, v6, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iput v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mDownY:I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v8, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    sub-int/2addr v9, v0

    iput v9, v8, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v8, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_4
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->invalidate()V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$16900(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v5, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_2

    :cond_4
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_4

    :pswitch_1
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v8

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v8

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-result v3

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_6
    if-eqz v3, :cond_7

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v8}, Landroid/webkit/MagnifyView;->dismiss()V

    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v8, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_6
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$17000(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v5, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto :goto_5

    :cond_8
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->oSelStart:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->oSelEnd:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-virtual {v8, v0, v1, v9, v10}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v8, v9}, Landroid/webkit/WebView;->access$15300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v4, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-nez v8, :cond_d

    const/4 v8, 0x1

    :goto_7
    iput-boolean v8, v9, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iput-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    :cond_a
    :goto_8
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->oSelStart:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->oSelEnd:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    :cond_c
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #calls: Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V
    invoke-static {v8}, Landroid/webkit/WebView$QuickSelectWV;->access$17100(Landroid/webkit/WebView$QuickSelectWV;)V

    if-eqz v3, :cond_10

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v8}, Landroid/webkit/MagnifyView;->dismiss()V

    :goto_9
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_2

    :cond_d
    const/4 v8, 0x0

    goto :goto_7

    :cond_e
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v8, v9}, Landroid/webkit/WebView;->access$15300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v4, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    if-nez v8, :cond_f

    const/4 v8, 0x1

    :goto_a
    iput-boolean v8, v9, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iput-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto/16 :goto_8

    :cond_f
    const/4 v8, 0x0

    goto :goto_a

    :cond_10
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v8, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    :goto_b
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/WebView;->access$17200(Landroid/webkit/WebView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/4 v11, 0x0

    aget v11, v5, v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v10, v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v12, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->touchOffset:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_9

    :cond_11
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    goto :goto_b

    :pswitch_2
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v8}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v8}, Landroid/webkit/MagnifyView;->dismiss()V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->invalidate()V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v8}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const v10, 0x13e9a9

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v8, :cond_12

    const/4 v8, 0x1

    :goto_c
    iget-wide v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v8, v11}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    :goto_d
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    goto/16 :goto_2

    :cond_12
    const/4 v8, 0x0

    goto :goto_c

    :cond_13
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v8}, Landroid/webkit/SelectionUnitInfo;->reset()V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    iget v8, v8, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v8, :cond_16

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v8, v9}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    :cond_14
    :goto_e
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v8}, Landroid/webkit/SelectionUnitInfo;->reset()V

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    iget v8, v8, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v8, :cond_17

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v8, v9}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    :cond_15
    :goto_f
    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-eqz v8, :cond_18

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    :goto_10
    iget-wide v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->mUpdateTime:J

    #calls: Landroid/webkit/WebView$QuickSelectWV;->doAutoExtend(Landroid/webkit/SelectionUnitInfo;J)Z
    invoke-static {v9, v8, v10, v11}, Landroid/webkit/WebView$QuickSelectWV;->access$17300(Landroid/webkit/WebView$QuickSelectWV;Landroid/webkit/SelectionUnitInfo;J)Z

    move-result v8

    if-eqz v8, :cond_1b

    const/4 v2, -0x1

    const/4 v7, -0x1

    iget-boolean v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z

    if-nez v8, :cond_19

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v8, v8, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->right:I

    :goto_11
    if-eq v2, v7, :cond_1a

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    #getter for: Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;
    invoke-static {v8}, Landroid/webkit/WebView$QuickSelectWV;->access$17400(Landroid/webkit/WebView$QuickSelectWV;)Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-result-object v8

    const v9, 0x13e1da

    invoke-static {v8, v9, v2, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_d

    :cond_16
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v8, v8, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v8, :cond_14

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v8}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto/16 :goto_e

    :cond_17
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v8, v8, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v8, :cond_15

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v8}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto :goto_f

    :cond_18
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    goto :goto_10

    :cond_19
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v8, v8, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    iget-object v11, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v11, v11, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v8, v8, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    goto :goto_11

    :cond_1a
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_d

    :cond_1b
    iget-object v8, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, p0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->this$1:Landroid/webkit/WebView$QuickSelectWV;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_d

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
