.class Lcom/htc/cs/activity/accountactivities/CS_login$8;
.super Landroid/webkit/WebViewClient;
.source "CS_login.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;->createTermDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter

    .prologue
    .line 2207
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 2211
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2212
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->termDB:Lcom/htc/cs/activity/accountactivities/CSAlertDialog;

    invoke-virtual {v0, v2}, Lcom/htc/cs/activity/accountactivities/CSAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 2214
    .local v7, tmpBut:Landroid/widget/Button;
    if-nez v7, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "tmpBut = null "

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2235
    :goto_0
    return-void

    .line 2219
    :cond_0
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2221
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 2222
    invoke-virtual {v7}, Landroid/widget/Button;->invalidate()V

    .line 2224
    new-instance v1, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;

    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;-><init>(Lcom/htc/cs/activity/accountactivities/CS_login;Lcom/htc/cs/activity/accountactivities/CS_login$1;)V

    .line 2226
    .local v1, removeProgress:Lcom/htc/cs/activity/accountactivities/CS_login$RemoveProgress;
    :try_start_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->legalTimer:Ljava/util/Timer;

    .line 2227
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->legalTimer:Ljava/util/Timer;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2232
    :catch_0
    move-exception v6

    .line 2233
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v4, 0x1

    .line 2239
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2240
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "url "

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2241
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v0, v4}, Lcom/htc/cs/activity/accountactivities/CS_login;->showDialog(I)V

    .line 2242
    const-string v0, "https://www.htcsense.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CS_login;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->TosURL:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$3900(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2246
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2252
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v0}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to Open HTC Sense Term of Services ("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    const-string v3, "): Error Code = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " Description = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    .line 2255
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2260
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 2261
    invoke-virtual {p1, p3, p4}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2262
    .local v0, up:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ne v1, v6, :cond_0

    .line 2263
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Handle"

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V

    .line 2264
    aget-object v1, v0, v4

    aget-object v2, v0, v5

    invoke-virtual {p2, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    :goto_0
    return-void

    .line 2267
    :cond_0
    iget-object v1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$8;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->logger:Lcom/htc/cs/util/Logger;
    invoke-static {v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$2300(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/util/Logger;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not find user/pass for domain :"

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    const-string v3, " with realm = "

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/cs/util/Logger;->error([Ljava/lang/Object;)V

    goto :goto_0
.end method
