.class Lcom/android/phone/Ringer$2;
.super Landroid/content/BroadcastReceiver;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- intent.getAction() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 182
    :cond_2
    return-void
.end method
