.class Lcom/android/browser/NfcHandler$1;
.super Landroid/os/Handler;
.source "NfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/NfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/NfcHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/NfcHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/browser/NfcHandler$1;->this$0:Lcom/android/browser/NfcHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/browser/NfcHandler$1;->this$0:Lcom/android/browser/NfcHandler;

    iget-object v1, p0, Lcom/android/browser/NfcHandler$1;->this$0:Lcom/android/browser/NfcHandler;

    iget-object v1, v1, Lcom/android/browser/NfcHandler;->mCurrentTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/browser/NfcHandler;->mIsPrivate:Z

    .line 71
    iget-object v0, p0, Lcom/android/browser/NfcHandler$1;->this$0:Lcom/android/browser/NfcHandler;

    iget-object v0, v0, Lcom/android/browser/NfcHandler;->mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 73
    :cond_0
    return-void
.end method
