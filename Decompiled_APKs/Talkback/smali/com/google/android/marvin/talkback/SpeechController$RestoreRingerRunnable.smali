.class Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreRingerRunnable"
.end annotation


# instance fields
.field private final mExpectedVolume:I

.field private final mRestoreVolume:I

.field final synthetic this$0:Lcom/google/android/marvin/talkback/SpeechController;


# direct methods
.method public constructor <init>(Lcom/google/android/marvin/talkback/SpeechController;II)V
    .locals 0
    .parameter
    .parameter "restoreVolume"
    .parameter "expectedVolume"

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    iput p2, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->mRestoreVolume:I

    .line 1288
    iput p3, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->mExpectedVolume:I

    .line 1289
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 1293
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/marvin/talkback/SpeechController;->mRestoreRingerAction:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/google/android/marvin/talkback/SpeechController;->access$14(Lcom/google/android/marvin/talkback/SpeechController;Ljava/lang/Runnable;)V

    .line 1295
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$15(Lcom/google/android/marvin/talkback/SpeechController;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1297
    .local v0, currentVolume:I
    iget v1, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->mExpectedVolume:I

    if-eq v0, v1, :cond_0

    .line 1298
    const-class v1, Lcom/google/android/marvin/talkback/SpeechController;

    const/4 v2, 0x5

    .line 1299
    const-string v3, "Current volume does not match expected volume!"

    new-array v4, v4, [Ljava/lang/Object;

    .line 1298
    invoke-static {v1, v2, v3, v4}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1308
    :goto_0
    return-void

    .line 1303
    :cond_0
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$16(Lcom/google/android/marvin/talkback/SpeechController;)Lcom/google/android/marvin/talkback/VolumeMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mVolumeMonitor:Lcom/google/android/marvin/talkback/VolumeMonitor;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$16(Lcom/google/android/marvin/talkback/SpeechController;)Lcom/google/android/marvin/talkback/VolumeMonitor;

    move-result-object v1

    iget v2, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->mRestoreVolume:I

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/marvin/talkback/VolumeMonitor;->setStreamVolume(III)V

    .line 1306
    :cond_1
    iget-object v1, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->this$0:Lcom/google/android/marvin/talkback/SpeechController;

    #getter for: Lcom/google/android/marvin/talkback/SpeechController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/google/android/marvin/talkback/SpeechController;->access$15(Lcom/google/android/marvin/talkback/SpeechController;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/google/android/marvin/talkback/SpeechController$RestoreRingerRunnable;->mRestoreVolume:I

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
