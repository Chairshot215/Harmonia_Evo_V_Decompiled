.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 44

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_0

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v4, v4, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    const/4 v5, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v2, v3, v4, v5}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mSentAutoScrollMessage:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4402(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mCurrentScrollingLayerId:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->pinScrollBy(IIZI)Z
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;IIZI)Z

    :goto_1
    const/16 v2, 0xb

    const-wide/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebView$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v4}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    #calls: Landroid/webkit/WebView;->scrollLayerTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;II)V

    goto :goto_1

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$5102(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->removeTouchHighlight()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    const/16 v2, 0x100

    move-object/from16 v0, v31

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, v31

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v7, v7, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v43, v0

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static/range {v43 .. v43}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)I

    move-result v43

    add-int v7, v7, v43

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchY:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v2, v3

    const/4 v2, 0x0

    move-object/from16 v0, v31

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;)Z

    move-result v2

    move-object/from16 v0, v31

    iput-boolean v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v31

    iget-object v4, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    move-object/from16 v0, v31

    iput v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v2

    move-object/from16 v0, v31

    iput-wide v2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v3, 0x8d

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreventDefault:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$4902(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v2, v2, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/graphics/Point;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;II)Z

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/WebViewCore$ViewState;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    move-object/from16 v0, v37

    iget v4, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move-object/from16 v0, v37

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebView;->nativeReplaceBaseContent(I)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;I)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/webkit/WebViewCore$DrawData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v12, v3}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_0

    :sswitch_e
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/view/WindowManager;

    invoke-interface/range {v40 .. v40}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v4

    #calls: Landroid/webkit/WebView;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v2, v3, v13, v4}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;ILjava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$6702(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7000(IZ)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    if-nez v32, :cond_11

    const-string v32, ""

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;Z)V

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$TextSelectionData;

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v3, v4, v5, v2}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v23

    if-eqz v23, :cond_12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v2 .. v7}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_0

    :sswitch_15
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->howToSelection:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;)I

    move-result v3

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v0, v2, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelection()V

    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateWebTextViewPosition()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->updatePositionRect()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    check-cast v2, Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->resumeSelctionUI()V

    goto :goto_2

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->clearTextEntry()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/graphics/Rect;

    if-nez v26, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v26

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8102(Landroid/webkit/WebView;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8202(Landroid/webkit/WebView;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_3
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$8302(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    :cond_16
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/WebViewCore$TouchEventData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;
    invoke-static {v2}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/webkit/WebView$TouchEventQueue;->enqueueTouchEvent(Landroid/webkit/WebViewCore$TouchEventData;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView$PrivateHandler;->removeMessages(I)V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$8400(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->mCustomFindMode:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;IZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_19
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_22
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    move/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v2, v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->enterFullScreenVideo(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/view/View;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "webview"

    const-string v3, "Should not have another full screen."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v3, v4, v0, v1}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;II)V

    iput-object v3, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v2}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_0

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeClearCursor()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->pauseTimers()V

    goto/16 :goto_0

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPausedTimerByZoom:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    goto/16 :goto_0

    :sswitch_28
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/webkit/WebViewCore$ShowRectData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)I

    move-result v41

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v39

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v38

    move/from16 v0, v39

    move/from16 v1, v38

    if-ge v0, v1, :cond_1b

    div-int/lit8 v2, v39, 0x2

    add-int v2, v2, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v38, 0x2

    sub-int/2addr v2, v3

    add-int v41, v41, v2

    :goto_5
    const/4 v2, 0x0

    add-int v3, v41, v38

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v38

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v41

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v36

    div-int/lit8 v2, v14, 0x2

    add-int v2, v2, v33

    div-int/lit8 v3, v36, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v9, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    int-to-float v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v42, v0

    const/4 v2, 0x0

    add-int v3, v42, v36

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v36

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v42

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I
    invoke-static {v3}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;)I

    move-result v3

    sub-int v3, v42, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v42

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v41

    #setter for: Landroid/webkit/WebView;->mPendingScrollX:I
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$9702(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v42

    #setter for: Landroid/webkit/WebView;->mPendingScrollY:I
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$9802(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x133

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;)I

    move-result v2

    sub-int v2, v18, v2

    add-int/lit8 v2, v2, -0x14

    add-int v41, v41, v2

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9902(Landroid/webkit/WebView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$10002(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #setter for: Landroid/webkit/WebView;->mPausedTimerByZoom:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$9202(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    iget-boolean v2, v2, Landroid/webkit/WebView;->m_bIsLoading:Z

    move/from16 v0, v30

    if-eq v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setIsLoading(Z)V

    goto/16 :goto_0

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/webkit/AccessibilityInjector;->onSelectionStringChange(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, v27

    #calls: Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :sswitch_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/WebView$SaveWebArchiveMessage;

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    move-object/from16 v0, v28

    iget-object v2, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v28

    iget-object v3, v0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3, v2}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAutoFillable(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Landroid/webkit/WebView;->nativeSelectAt(II)V
    invoke-static {v2, v3, v4}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->updateContentFromMessage(I)V

    goto/16 :goto_0

    :sswitch_34
    const-string v2, "KENLOG"

    const-string v3, "<WebView> SET_WILL_NOT_DRAW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :sswitch_35
    const-string v2, "KENLOG"

    const-string v3, "<WebView> SET_WILL_DRAW"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :sswitch_36
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebView;->access$10500(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/webkit/WebView;->setupPackageListener(Landroid/content/Context;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$10600(Landroid/webkit/WebView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebView;->access$10700(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v2

    #calls: Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V
    invoke-static {v2}, Landroid/webkit/WebView;->access$10800(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->updateSelectionColors()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebSelectionType(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->m_bIsBrowserApp:Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;)Z

    move-result v3

    #calls: Landroid/webkit/WebView;->nativeSetIsBrowser(Z)V
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    :sswitch_37
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_18
        0x8 -> :sswitch_1e
        0x9 -> :sswitch_1f
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0x65 -> :sswitch_9
        0x69 -> :sswitch_d
        0x6a -> :sswitch_15
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
        0x6d -> :sswitch_a
        0x6e -> :sswitch_14
        0x6f -> :sswitch_16
        0x70 -> :sswitch_11
        0x71 -> :sswitch_28
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_1a
        0x75 -> :sswitch_17
        0x76 -> :sswitch_1c
        0x77 -> :sswitch_20
        0x78 -> :sswitch_23
        0x79 -> :sswitch_24
        0x7a -> :sswitch_25
        0x7b -> :sswitch_c
        0x7c -> :sswitch_12
        0x7d -> :sswitch_13
        0x7e -> :sswitch_1d
        0x7f -> :sswitch_29
        0x80 -> :sswitch_10
        0x81 -> :sswitch_2a
        0x82 -> :sswitch_2d
        0x83 -> :sswitch_2e
        0x84 -> :sswitch_2f
        0x85 -> :sswitch_30
        0x86 -> :sswitch_31
        0x87 -> :sswitch_32
        0x88 -> :sswitch_21
        0x89 -> :sswitch_22
        0x8a -> :sswitch_5
        0x8b -> :sswitch_b
        0xc8 -> :sswitch_2b
        0xc9 -> :sswitch_0
        0xcc -> :sswitch_2c
        0xcd -> :sswitch_33
        0x12e -> :sswitch_34
        0x12f -> :sswitch_35
        0x130 -> :sswitch_36
        0x131 -> :sswitch_37
        0x136 -> :sswitch_26
        0x137 -> :sswitch_27
    .end sparse-switch
.end method
