.class Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowStorageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 7254
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$LowStorageMonitor;->this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 7255
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 7258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7260
    .local v0, action:Ljava/lang/String;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LowStorageMonitor] onReceive intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7262
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7263
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->access$002(Z)Z

    .line 7265
    :cond_0
    return-void
.end method
