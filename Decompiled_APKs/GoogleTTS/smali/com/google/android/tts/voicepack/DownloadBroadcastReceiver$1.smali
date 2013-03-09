.class Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;
.super Ljava/lang/Thread;
.source "DownloadBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->this$0:Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;

    iput-object p2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->this$0:Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    #calls: Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->handleCompletedDownload(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)Z
    invoke-static {v1, v2, v3}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->access$000(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)Z

    move-result v0

    .line 54
    .local v0, success:Z
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->this$0:Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;

    #calls: Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->broadcastDownloadComplete(Z)V
    invoke-static {v1, v0}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->access$100(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Z)V

    .line 55
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->this$0:Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;

    #calls: Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->showDownloadCompleteNotification(Z)V
    invoke-static {v1, v0}, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;->access$200(Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver;Z)V

    .line 57
    iget-object v1, p0, Lcom/google/android/tts/voicepack/DownloadBroadcastReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 58
    return-void
.end method
