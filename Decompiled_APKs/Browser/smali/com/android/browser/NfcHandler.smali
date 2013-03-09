.class public Lcom/android/browser/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field static final GET_PRIVATE_BROWSING_STATE_MSG:I = 0x64


# instance fields
.field final mController:Lcom/android/browser/Controller;

.field mCurrentTab:Lcom/android/browser/Tab;

.field final mHandler:Landroid/os/Handler;

.field mIsPrivate:Z

.field mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/browser/Controller;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/browser/NfcHandler$1;

    invoke-direct {v0, p0}, Lcom/android/browser/NfcHandler$1;-><init>(Lcom/android/browser/NfcHandler;)V

    iput-object v0, p0, Lcom/android/browser/NfcHandler;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/browser/NfcHandler;->mController:Lcom/android/browser/Controller;

    .line 64
    return-void
.end method

.method public static register(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .locals 3
    .parameter "activity"
    .parameter "controller"

    .prologue
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 45
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    .local v1, handler:Lcom/android/browser/NfcHandler;
    if-eqz p1, :cond_1

    .line 50
    new-instance v1, Lcom/android/browser/NfcHandler;

    .end local v1           #handler:Lcom/android/browser/NfcHandler;
    invoke-direct {v1, p1}, Lcom/android/browser/NfcHandler;-><init>(Lcom/android/browser/Controller;)V

    .line 53
    .restart local v1       #handler:Lcom/android/browser/NfcHandler;
    :cond_1
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static unregister(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/browser/NfcHandler;->register(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    .line 60
    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v4, p0, Lcom/android/browser/NfcHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v4}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/NfcHandler;->mCurrentTab:Lcom/android/browser/Tab;

    .line 79
    iget-object v4, p0, Lcom/android/browser/NfcHandler;->mCurrentTab:Lcom/android/browser/Tab;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/NfcHandler;->mCurrentTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 82
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/browser/NfcHandler;->mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;

    .line 83
    iget-object v4, p0, Lcom/android/browser/NfcHandler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/browser/NfcHandler;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    :try_start_0
    iget-object v4, p0, Lcom/android/browser/NfcHandler;->mPrivateBrowsingSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/android/browser/NfcHandler;->mCurrentTab:Lcom/android/browser/Tab;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/browser/NfcHandler;->mIsPrivate:Z

    if-eqz v4, :cond_2

    .line 101
    :cond_1
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .line 95
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v4, p0, Lcom/android/browser/NfcHandler;->mCurrentTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, currentUrl:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 97
    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 98
    .local v3, record:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v4, v7, [Landroid/nfc/NdefRecord;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v2, v4}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 99
    .local v2, msg:Landroid/nfc/NdefMessage;
    goto :goto_0
.end method
