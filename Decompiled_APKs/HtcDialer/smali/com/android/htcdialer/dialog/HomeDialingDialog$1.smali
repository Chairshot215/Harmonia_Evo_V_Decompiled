.class Lcom/android/htcdialer/dialog/HomeDialingDialog$1;
.super Landroid/os/Handler;
.source "HomeDialingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/dialog/HomeDialingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/dialog/HomeDialingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;->this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 454
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 457
    :pswitch_0
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;->this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;
    invoke-static {v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->access$400(Lcom/android/htcdialer/dialog/HomeDialingDialog;)Lcom/android/htcdialer/util/KeypadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;->this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;
    invoke-static {v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->access$400(Lcom/android/htcdialer/dialog/HomeDialingDialog;)Lcom/android/htcdialer/util/KeypadUtils;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/util/KeypadUtils;->playTone(I)V

    goto :goto_0

    .line 464
    :pswitch_1
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;->this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;
    invoke-static {v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->access$400(Lcom/android/htcdialer/dialog/HomeDialingDialog;)Lcom/android/htcdialer/util/KeypadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;->this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;
    invoke-static {v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->access$400(Lcom/android/htcdialer/dialog/HomeDialingDialog;)Lcom/android/htcdialer/util/KeypadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->stopTone()V

    .line 466
    iget-object v0, p0, Lcom/android/htcdialer/dialog/HomeDialingDialog$1;->this$0:Lcom/android/htcdialer/dialog/HomeDialingDialog;

    #getter for: Lcom/android/htcdialer/dialog/HomeDialingDialog;->mKeypadUtils:Lcom/android/htcdialer/util/KeypadUtils;
    invoke-static {v0}, Lcom/android/htcdialer/dialog/HomeDialingDialog;->access$400(Lcom/android/htcdialer/dialog/HomeDialingDialog;)Lcom/android/htcdialer/util/KeypadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htcdialer/util/KeypadUtils;->releaseToneGenerator()V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
