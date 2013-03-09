.class Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;
.super Ljava/lang/Object;
.source "NotificationRingtonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->resetVolume(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

.field final synthetic val$newVolume:I

.field final synthetic val$origVolume:I

.field final synthetic val$streamType:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iput p2, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->val$origVolume:I

    iput p3, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->val$newVolume:I

    iput p4, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->val$streamType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 369
    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->this$0:Lcom/google/android/talk/videochat/NotificationRingtonePlayer;

    iget v1, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->val$origVolume:I

    iget v2, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->val$newVolume:I

    iget v3, p0, Lcom/google/android/talk/videochat/NotificationRingtonePlayer$2;->val$streamType:I

    #calls: Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->resetVolume(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/NotificationRingtonePlayer;->access$500(Lcom/google/android/talk/videochat/NotificationRingtonePlayer;III)V

    .line 373
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method
