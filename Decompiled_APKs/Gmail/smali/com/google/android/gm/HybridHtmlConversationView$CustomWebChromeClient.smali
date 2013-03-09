.class Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "HybridHtmlConversationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomWebChromeClient"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1779
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 1780
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;->mContext:Landroid/content/Context;

    .line 1781
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8
    .parameter "consoleMessage"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 1813
    const-string v2, "GmailJs"

    invoke-static {v2, v4}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1814
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, source:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v0

    .line 1816
    .local v0, line:I
    const-string v2, "GmailJs"

    const-string v3, "[%s, line %d]: %s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1819
    .end local v0           #line:I
    .end local v1           #source:Ljava/lang/String;
    :cond_0
    return v7
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 1791
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0037

    new-instance v2, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$3;

    invoke-direct {v2, p0, p4}, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$3;-><init>(Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0039

    new-instance v2, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$2;

    invoke-direct {v2, p0, p4}, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$2;-><init>(Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient$1;-><init>(Lcom/google/android/gm/HybridHtmlConversationView$CustomWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1808
    const/4 v0, 0x1

    return v0
.end method
