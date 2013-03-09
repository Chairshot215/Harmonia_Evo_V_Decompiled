.class Landroid/webkit/EditableWebView$3;
.super Ljava/lang/Object;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v9, 0x2

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v4}, Landroid/webkit/EditableWebView;->getLocationInWindow([I)V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v4, v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    #calls: Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;
    invoke-static {v9, v10, v11}, Landroid/webkit/EditableWebView;->access$1300(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;

    move-result-object v5

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    float-to-int v10, v10

    iget-object v11, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v11}, Landroid/webkit/EditableWebView;->access$4800(Landroid/webkit/EditableWebView;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget v10, v5, Landroid/graphics/PointF;->y:F

    float-to-int v10, v10

    iget-object v11, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v11}, Landroid/webkit/EditableWebView;->access$4900(Landroid/webkit/EditableWebView;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v9, 0x1

    return v9

    :pswitch_0
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v10, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    add-int/lit8 v10, v1, -0xa

    add-int/lit8 v11, v2, -0xa

    add-int/lit8 v12, v1, 0xa

    add-int/lit8 v13, v2, 0xa

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    const/4 v10, 0x0

    #setter for: Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;
    invoke-static {v9, v10}, Landroid/webkit/EditableWebView;->access$1202(Landroid/webkit/EditableWebView;Lcom/htc/textselection/SelectionAnchor;)Lcom/htc/textselection/SelectionAnchor;

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v1, v2, v10, v11}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$900(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$900(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;

    move-result-object v9

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    :cond_1
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto :goto_0

    :pswitch_1
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v2, v9, :cond_3

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    :goto_1
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    :cond_2
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v1, v2, v10}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v9, :cond_4

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_1

    :cond_4
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    if-ge v1, v9, :cond_5

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_1

    :cond_5
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v9}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v9, v6}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    const/16 v10, 0x73

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v9, v7, v3}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5100(Landroid/webkit/EditableWebView;)Landroid/webkit/WebView$WrapActions;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    iget-object v10, p0, Landroid/webkit/EditableWebView$3;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;
    invoke-static {v10}, Landroid/webkit/EditableWebView;->access$5100(Landroid/webkit/EditableWebView;)Landroid/webkit/WebView$WrapActions;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/EditableWebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto/16 :goto_0

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
    .end packed-switch
.end method
