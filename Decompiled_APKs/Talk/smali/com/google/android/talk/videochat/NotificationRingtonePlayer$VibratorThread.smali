.class Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;
.super Ljava/lang/Thread;
.source "NotificationRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/NotificationRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;Lcom/google/android/talk/videochat/NotificationRingtonePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;-><init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-boolean v0, v0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mContinueVibrating:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$VibratorThread;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 228
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method
