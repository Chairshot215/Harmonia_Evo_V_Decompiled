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
.method private constructor <init>(Lcom/google/android/gsf/WebLoginView;)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/WebLoginView;Lcom/google/android/gsf/WebLoginView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;-><init>(Lcom/google/android/gsf/WebLoginView;)V

    return-void
.end method

.method private hideWebUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 255
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 257
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 258
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    return-void
.end method

.method private maybeFinish(Landroid/webkit/WebView;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-boolean v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 311
    :goto_0
    return v0

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 308
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #setter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/WebLoginView;->access$402(Lcom/google/android/gsf/WebLoginView;Z)Z

    .line 309
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 310
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginCompleted(Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 272
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web view ingoring loaded url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not finished at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$800(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mTitleView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$600(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 282
    const-string v1, ""

    .line 283
    const-string v2, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_1
    iget-object v1, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mTitleTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/gsf/WebLoginView;->access$900(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$700(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCancelButton:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$1000(Lcom/google/android/gsf/WebLoginView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto/16 :goto_0

    .line 291
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 299
    :cond_3
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v2}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " - loading"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$400(Lcom/google/android/gsf/WebLoginView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 225
    :cond_0
    :goto_1
    return-void

    .line 217
    :cond_1
    const-string v2, " - not loading"

    goto :goto_0

    .line 222
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
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

    .line 235
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/WebLoginView;->mIsLoading:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/WebLoginView;->access$402(Lcom/google/android/gsf/WebLoginView;Z)Z

    .line 236
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 237
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/WebLoginView$Error;->HttpError:Lcom/google/android/gsf/WebLoginView$Error;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginError(Lcom/google/android/gsf/WebLoginView$Error;ILjava/lang/String;)V

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    const-string v0, "WebLoginView"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->hideWebUI()V

    .line 249
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mCallback:Lcom/google/android/gsf/WebLoginView$Callback;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$500(Lcom/google/android/gsf/WebLoginView;)Lcom/google/android/gsf/WebLoginView$Callback;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/WebLoginView$Error;->TooManyRedirects:Lcom/google/android/gsf/WebLoginView$Error;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gsf/WebLoginView$Callback;->onWebLoginError(Lcom/google/android/gsf/WebLoginView$Error;ILjava/lang/String;)V

    .line 251
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 198
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web view is loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "//gls/callback?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "WebLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We will handle oauth:gls URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthDone:Z

    .line 204
    iput-object p2, p0, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->mOAuthUrl:Ljava/lang/String;

    .line 205
    invoke-direct {p0, p1}, Lcom/google/android/gsf/WebLoginView$MyWebViewClient;->maybeFinish(Landroid/webkit/WebView;)Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
