.class Lcom/google/android/gsf/WebLoginView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/WebLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field private mOAuthDone:Z

.field private mOAuthUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/WebLoginView;


# direct methods
.method private hideWebUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 254
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 256
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 257
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void
.end method

.method private maybeFinish(Landroid/webkit/WebView;)Z
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-boolean v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    if-nez v1, :cond_0

    .line 310
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 307
    iget-object v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #setter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v1, v0}, Lcom/google/android/gsf/WebLoginView;->access$402(Lcom/google/android/gsf/WebLoginView;Z)Z

    .line 308
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 309
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginCompleted(Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 271
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    const-string v3, "WebLoginView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Web view ingoring loaded url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 276
    const-string v3, "WebLoginView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not finished at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mProgressView:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$800(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 281
    .local v2, uri:Landroid/net/Uri;
    const-string v1, ""

    .line 282
    .local v1, titleString:Ljava/lang/String;
    const-string v3, "https"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, pageTitle:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mTitleTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$900(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mBottomBar:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCancelButton:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$1000(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 296
    iget-object v3, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    goto/16 :goto_0

    .line 290
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 298
    .end local v0           #pageTitle:Ljava/lang/String;
    .end local v1           #titleString:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    const-string v3, "WebLoginView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 216
    const-string v1, "WebLoginView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " - loading"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 224
    :cond_0
    :goto_1
    return-void

    .line 216
    :cond_1
    const-string v0, " - not loading"

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 233
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/WebLoginView;->access$402(Lcom/google/android/gsf/WebLoginView;Z)Z

    .line 235
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 236
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/WebLoginView$Error;->HttpError:Lcom/google/android/gsf/WebLoginView$Error;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginError(Lcom/google/android/gsf/WebLoginView$Error;ILjava/lang/String;)V

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 246
    const-string v0, "WebLoginView"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 248
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/WebLoginView$Error;->TooManyRedirects:Lcom/google/android/gsf/WebLoginView$Error;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginError(Lcom/google/android/gsf/WebLoginView$Error;ILjava/lang/String;)V

    .line 250
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 197
    const-string v1, "WebLoginView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Web view is loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//gls/callback?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "WebLoginView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We will handle oauth:gls URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    .line 203
    iput-object p2, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthUrl:Ljava/lang/String;

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v1

    .line 206
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
