.class Lcom/android/settings/HtcCdmaGPSLocationSettingV2$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaGPSLocationSettingV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcCdmaGPSLocationSettingV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;


# direct methods
.method constructor <init>(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$2;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    const-string v1, "HtcCdmaGPSLocationSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/HtcCdmaGPSLocationSettingV2$2;->this$0:Lcom/android/settings/HtcCdmaGPSLocationSettingV2;

    #calls: Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->updateButtonState()V
    invoke-static {v1}, Lcom/android/settings/HtcCdmaGPSLocationSettingV2;->access$000(Lcom/android/settings/HtcCdmaGPSLocationSettingV2;)V

    .line 179
    :cond_0
    return-void
.end method
