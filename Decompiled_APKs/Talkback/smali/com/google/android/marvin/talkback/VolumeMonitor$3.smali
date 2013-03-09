.class Lcom/google/android/marvin/talkback/VolumeMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "VolumeMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/VolumeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/VolumeMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$3;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    .line 330
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 333
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 336
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 339
    .local v2, type:I
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 338
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 341
    .local v3, value:I
    const-string v4, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 340
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 343
    .local v1, prevValue:I
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    if-gez v1, :cond_1

    .line 360
    .end local v1           #prevValue:I
    .end local v2           #type:I
    .end local v3           #value:I
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v1       #prevValue:I
    .restart local v2       #type:I
    .restart local v3       #value:I
    :cond_1
    iget-object v4, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$3;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    #getter for: Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;
    invoke-static {v4}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$1(Lcom/google/android/marvin/talkback/VolumeMonitor;)Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->onVolumeChanged(III)V

    goto :goto_0

    .line 348
    .end local v1           #prevValue:I
    .end local v2           #type:I
    .end local v3           #value:I
    :cond_2
    const-string v4, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const-string v4, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    .line 349
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 352
    .restart local v3       #value:I
    const-string v4, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    .line 351
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 354
    .restart local v1       #prevValue:I
    if-ltz v3, :cond_0

    if-ltz v1, :cond_0

    .line 358
    iget-object v4, p0, Lcom/google/android/marvin/talkback/VolumeMonitor$3;->this$0:Lcom/google/android/marvin/talkback/VolumeMonitor;

    #getter for: Lcom/google/android/marvin/talkback/VolumeMonitor;->mHandler:Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;
    invoke-static {v4}, Lcom/google/android/marvin/talkback/VolumeMonitor;->access$1(Lcom/google/android/marvin/talkback/VolumeMonitor;)Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;

    move-result-object v4

    const/16 v5, -0x64

    invoke-virtual {v4, v5, v3, v1}, Lcom/google/android/marvin/talkback/VolumeMonitor$VolumeHandler;->onVolumeChanged(III)V

    goto :goto_0
.end method
