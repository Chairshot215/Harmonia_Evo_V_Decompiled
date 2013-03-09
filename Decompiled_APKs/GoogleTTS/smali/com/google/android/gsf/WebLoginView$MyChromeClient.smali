.class Lcom/google/android/gsf/WebLoginView$MyChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebLoginView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/WebLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/WebLoginView;


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 172
    const-string v0, "WebLoginView"

    const-string v1, "onCreateWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyChromeClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$200(Lcom/google/android/gsf/WebLoginView;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/gsf/WebLoginView$MyChromeClient;->this$0:Lcom/google/android/gsf/WebLoginView;

    #getter for: Lcom/google/android/gsf/WebLoginView;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/google/android/gsf/WebLoginView;->access$300(Lcom/google/android/gsf/WebLoginView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 181
    return-void
.end method
