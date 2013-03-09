.class Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/BrowserActivity;Lcom/google/android/gsf/login/BrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;-><init>(Lcom/google/android/gsf/login/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .parameter "consoleMessage"

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/gsf/login/BrowserActivity$MyChromeClient;->this$0:Lcom/google/android/gsf/login/BrowserActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BrowserActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 302
    return-void
.end method
