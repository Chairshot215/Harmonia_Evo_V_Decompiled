.class Lcom/htc/android/mail/ReadScreen$35;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 4565
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 4567
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-static {v2}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4568
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    .line 4589
    :cond_0
    :goto_0
    return-void

    .line 4572
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v2}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4576
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z
    invoke-static {v2, v3}, Lcom/htc/android/mail/ReadScreen;->access$5902(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 4577
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->cur_w:Lcom/htc/android/mail/HtcWebView;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$4900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/HtcWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/HtcWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 4578
    .local v1, webViewSettings:Landroid/webkit/WebSettings;
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mShowHtmlImage:Z
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5900(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 4580
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mWaitForFetchRelatedInfos:Z
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6000(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4581
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->downloadHtmlImage(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/htc/android/mail/ReadScreen;->access$6100(Lcom/htc/android/mail/ReadScreen;Landroid/view/View;)V

    goto :goto_0

    .line 4583
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->hideDownloadHtmlImageButton()V
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6200(Lcom/htc/android/mail/ReadScreen;)V

    .line 4584
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestHandler:Lcom/htc/android/mail/ReadScreen$RequestHandler;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReadScreen$RequestHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4585
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$35;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestHandler:Lcom/htc/android/mail/ReadScreen$RequestHandler;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReadScreen$RequestHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ReadScreen$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4586
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
