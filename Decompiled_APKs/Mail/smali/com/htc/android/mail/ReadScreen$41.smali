.class Lcom/htc/android/mail/ReadScreen$41;
.super Landroid/webkit/WebChromeClient;
.source "ReadScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 5101
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
    .parameter "view"
    .parameter "progress"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x11

    const/16 v1, 0xc

    const/4 v2, 0x1

    .line 5104
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v0

    iput-boolean v2, v0, Lcom/htc/android/mail/HtcWebView;->mCheckFirstHeightChange:Z

    .line 5106
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 5107
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5115
    :cond_0
    :goto_0
    return-void

    .line 5108
    :cond_1
    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_0

    .line 5109
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ReadScreen"

    const-string v1, "ENTER progress changed"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5110
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mWasScaleChanged:Z
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$8100(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5111
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->mWasScaleChanged:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/ReadScreen;->access$8102(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 5112
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$41;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
