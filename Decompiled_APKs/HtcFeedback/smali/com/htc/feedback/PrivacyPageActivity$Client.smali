.class Lcom/htc/feedback/PrivacyPageActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "PrivacyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/feedback/PrivacyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/PrivacyPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PrivacyPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/feedback/PrivacyPageActivity;->access$500(Lcom/htc/feedback/PrivacyPageActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->readExpTos:Z
    invoke-static {v1}, Lcom/htc/feedback/PrivacyPageActivity;->access$600(Lcom/htc/feedback/PrivacyPageActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #setter for: Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/htc/feedback/PrivacyPageActivity;->access$202(Lcom/htc/feedback/PrivacyPageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;

    invoke-direct {v1, p0}, Lcom/htc/feedback/PrivacyPageActivity$Client$ParsingVersionRunnable;-><init>(Lcom/htc/feedback/PrivacyPageActivity$Client;)V

    const-string v2, "ParsingVersionThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 187
    .local v0, parsingThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/feedback/PrivacyPageActivity;->access$300(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/feedback/PrivacyPageActivity;->access$300(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 192
    .end local v0           #parsingThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/feedback/PrivacyPageActivity;->access$300(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    #getter for: Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/feedback/PrivacyPageActivity;->access$300(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 207
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 208
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 196
    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, emailIntent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity$Client;->this$0:Lcom/htc/feedback/PrivacyPageActivity;

    invoke-virtual {v1, v0}, Lcom/htc/feedback/PrivacyPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    const/4 v1, 0x1

    .line 202
    .end local v0           #emailIntent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
