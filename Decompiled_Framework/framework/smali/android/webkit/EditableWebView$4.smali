.class Landroid/webkit/EditableWebView$4;
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

    iput-object p1, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x2

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v3}, Landroid/webkit/EditableWebView;->getLocationInWindow([I)V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    #calls: Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;
    invoke-static {v7, v8, v9}, Landroid/webkit/EditableWebView;->access$1300(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    iget-object v9, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5200(Landroid/webkit/EditableWebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget v8, v4, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    iget-object v9, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v9}, Landroid/webkit/EditableWebView;->access$5300(Landroid/webkit/EditableWebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v7, 0x1

    return v7

    :pswitch_0
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v8, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    add-int/lit8 v8, v1, -0xa

    add-int/lit8 v9, v2, -0xa

    add-int/lit8 v10, v1, 0xa

    add-int/lit8 v11, v2, 0xa

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v2, v8, v9}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->PEN_HIGHLIGHT:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v7}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v2, v7, :cond_2

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    :goto_1
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v2, v8}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    goto/16 :goto_0

    :cond_2
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v7, :cond_3

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v1, v7, :cond_4

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->modifySelection(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v7}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v7, v7, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v8, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v7, v5}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget-object v8, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    iget v8, v8, Landroid/webkit/WebView;->m_nSelectHighlightColor:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/webkit/EditableWebView;->SetBackColor(IZ)V

    iget-object v7, p0, Landroid/webkit/EditableWebView$4;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/EditableWebView;->access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v2, v8}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

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
