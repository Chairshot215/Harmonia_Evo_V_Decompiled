.class Lcom/android/htcdialer/Dialer$2;
.super Landroid/os/Handler;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/Dialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 638
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 722
    :pswitch_0
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->handleCdmaMessage(Landroid/os/Message;)Z
    invoke-static {v2, p1}, Lcom/android/htcdialer/Dialer;->access$1000(Lcom/android/htcdialer/Dialer;Landroid/os/Message;)Z

    .line 728
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 641
    :pswitch_2
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$000(Lcom/android/htcdialer/Dialer;)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 643
    .local v1, moveTo:I
    :goto_1
    if-le v1, v4, :cond_0

    .line 644
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/htc/widget/HtcListView;->setSelectionFromTop(II)V

    .line 646
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v2}, Lcom/android/htcdialer/Dialer;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->forceLayout()V

    goto :goto_0

    .line 641
    .end local v1           #moveTo:I
    :cond_1
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mPosOfUserSelect:I
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$000(Lcom/android/htcdialer/Dialer;)I

    move-result v1

    goto :goto_1

    .line 651
    :pswitch_3
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->addVoiceMailNumberPanel()V
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$100(Lcom/android/htcdialer/Dialer;)V

    goto :goto_0

    .line 655
    :pswitch_4
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->dontAddVoiceMailNumber()V
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$200(Lcom/android/htcdialer/Dialer;)V

    goto :goto_0

    .line 673
    :pswitch_5
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/htcdialer/Dialer;->handleHomeDigit(Ljava/lang/Object;II)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/htcdialer/Dialer;->access$300(Lcom/android/htcdialer/Dialer;Ljava/lang/Object;II)V

    goto :goto_0

    .line 678
    :pswitch_6
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #calls: Lcom/android/htcdialer/Dialer;->switchDigitsMode(I)V
    invoke-static {v3, v2}, Lcom/android/htcdialer/Dialer;->access$400(Lcom/android/htcdialer/Dialer;I)V

    goto :goto_0

    .line 683
    :pswitch_7
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 685
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #setter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2, v5}, Lcom/android/htcdialer/Dialer;->access$502(Lcom/android/htcdialer/Dialer;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 686
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v2}, Lcom/android/htcdialer/Dialer;->finish()V

    goto :goto_0

    .line 692
    :pswitch_8
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v2}, Lcom/android/htcdialer/Dialer;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v3, 0x1

    #setter for: Lcom/android/htcdialer/Dialer;->mBgRemoved:Z
    invoke-static {v2, v3}, Lcom/android/htcdialer/Dialer;->access$602(Lcom/android/htcdialer/Dialer;Z)Z

    goto :goto_0

    .line 698
    :pswitch_9
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/AccumulatorText;

    move-result-object v3

    const/16 v4, 0x9a1

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/AccumulatorText;->setInputType(I)V

    .line 702
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v3}, Lcom/android/htcdialer/Dialer;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 708
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/AccumulatorText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htcdialer/widget/AccumulatorText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 710
    iget-object v3, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mTaskBar:Lcom/android/htcdialer/widget/ButtonGroup;
    invoke-static {v3}, Lcom/android/htcdialer/Dialer;->access$800(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/ButtonGroup;

    move-result-object v3

    const v4, 0x2020001

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/widget/ButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 711
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/DialerKeypad;

    move-result-object v2

    sget-object v3, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    invoke-virtual {v2, v3}, Lcom/android/htcdialer/widget/DialerKeypad;->toggleHandwriting(Lcom/android/htcdialer/widget/DialerKeypad$Type;)V

    goto/16 :goto_0

    .line 716
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_a
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$2;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDialerKeypad:Lcom/android/htcdialer/widget/DialerKeypad;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$900(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/DialerKeypad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htcdialer/widget/DialerKeypad;->onRecieveFromIME()V

    goto/16 :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
