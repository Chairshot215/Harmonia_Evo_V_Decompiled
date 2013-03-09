.class Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaMountStateMonitor"
.end annotation


# instance fields
.field private final mMediaIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;)V
    .locals 2
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1318
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->mMediaIntentFilter:Landroid/content/IntentFilter;

    .line 1319
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->mMediaIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->mMediaIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->mMediaIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1322
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->mMediaIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$MediaMountStateMonitor;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mHandler:Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$3(Lcom/google/android/marvin/talkback/SpeechController;)Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/SpeechController$SpeechHandler;->onMediaStateChanged(Ljava/lang/String;)V

    .line 1333
    return-void
.end method
