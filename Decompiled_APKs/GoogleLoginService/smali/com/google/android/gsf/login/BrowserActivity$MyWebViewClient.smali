.class Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;Lcom/google/android/gsf/login/BrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;-><init>(Lcom/google/android/gsf/login/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/login/BrowserActivity;->mIsInitialLoad:Z
    invoke-static {v0, v1}, Lcom/google/android/gsf/login/BrowserActivity;->access$302(Lcom/google/android/gsf/login/BrowserActivity;Z)Z

    .line 347
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-virtual {v0, p2}, Lcom/google/android/gsf/login/BrowserActivity;->onPageLoadFinished(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 322
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/4 v4, 0x0

    .line 327
    const-string v0, "GLSActivity"

    const-string v1, "onReceivedError: errorCode %d, description: %s, url: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    #setter for: Lcom/google/android/gsf/login/BrowserActivity;->mIsLoading:Z
    invoke-static {v0, v4}, Lcom/google/android/gsf/login/BrowserActivity;->access$202(Lcom/google/android/gsf/login/BrowserActivity;Z)Z

    .line 332
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVER_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gsf/login/BrowserActivity;->onWebLoginError(Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;)V

    .line 334
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 339
    const-string v0, "GLSActivity"

    const-string v1, "onTooManyRedirects"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyWebViewClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVER_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/login/BrowserActivity;->onWebLoginError(Lcom/google/android/gsf/loginservice/GLSUser$Status;ILjava/lang/String;)V

    .line 342
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method
