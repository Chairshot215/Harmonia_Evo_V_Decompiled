.class Lcom/android/htcdialer/Dialer$7;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->resolveIntent()V
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
    .line 1695
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$7;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$7;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/Dialer$7;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$7;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$500(Lcom/android/htcdialer/Dialer;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 1702
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$7;->this$0:Lcom/android/htcdialer/Dialer;

    const/4 v1, 0x0

    #setter for: Lcom/android/htcdialer/Dialer;->otaDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v0, v1}, Lcom/android/htcdialer/Dialer;->access$502(Lcom/android/htcdialer/Dialer;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$7;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htcdialer/Dialer;->access$1900(Lcom/android/htcdialer/Dialer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1708
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$7;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->finish()V

    .line 1709
    const/4 v0, 0x0

    return v0
.end method
