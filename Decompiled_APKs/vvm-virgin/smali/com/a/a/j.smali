.class final Lcom/a/a/j;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/a/a/i;


# direct methods
.method synthetic constructor <init>(Lcom/a/a/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/j;-><init>(Lcom/a/a/i;B)V

    return-void
.end method

.method private constructor <init>(Lcom/a/a/i;B)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v0}, Lcom/a/a/i;->c(Lcom/a/a/i;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v1}, Lcom/a/a/i;->d(Lcom/a/a/i;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v0}, Lcom/a/a/i;->b(Lcom/a/a/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v0}, Lcom/a/a/i;->b(Lcom/a/a/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v0}, Lcom/a/a/i;->a(Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v0

    new-instance v1, Lcom/a/a/d;

    invoke-direct {v1, p3, p2, p4}, Lcom/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/d;)V

    iget-object v0, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->dismiss()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "Facebook-WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Lcom/a/a/k;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v1}, Lcom/a/a/i;->a(Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/a/a/g;->a(Landroid/os/Bundle;)V

    :goto_0
    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-virtual {v1}, Lcom/a/a/i;->dismiss()V

    :goto_1
    return v0

    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v1}, Lcom/a/a/i;->a(Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/g;->a()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v2}, Lcom/a/a/i;->a(Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v2

    new-instance v3, Lcom/a/a/h;

    invoke-direct {v3, v1}, Lcom/a/a/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/a/a/g;->a(Lcom/a/a/h;)V

    goto :goto_0

    :cond_4
    const-string v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-static {v1}, Lcom/a/a/i;->a(Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/g;->a()V

    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-virtual {v1}, Lcom/a/a/i;->dismiss()V

    goto :goto_1

    :cond_5
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/a/a/j;->a:Lcom/a/a/i;

    invoke-virtual {v1}, Lcom/a/a/i;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
