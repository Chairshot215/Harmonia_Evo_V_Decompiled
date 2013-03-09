.class Lcom/htc/fusion/fx/controls/TextInputWorker$2;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize_OnUiThread(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    const-wide/16 v2, 0xfa

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v1}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "TextInputWorker"

    const-string v1, "mExitInputModeTimer.cancel()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxTextInput;->enterInputMode()V

    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->showSoftInput()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->hideSoftInput()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    new-instance v0, Lcom/htc/fusion/fx/controls/TextInputWorker$2$1;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/htc/fusion/fx/controls/TextInputWorker$2$1;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker$2;JJ)V

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker$2$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    #setter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v6, v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$202(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$2;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method
