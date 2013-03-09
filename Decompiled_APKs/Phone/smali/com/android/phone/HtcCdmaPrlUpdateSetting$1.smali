.class Lcom/android/phone/HtcCdmaPrlUpdateSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaPrlUpdateSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaPrlUpdateSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$1;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    const-string v1, "KDDI_HtcCdmaPrlUpdateSetting"

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

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    const-string v1, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 74
    const-string v1, "KDDI_HtcCdmaPrlUpdateSetting"

    const-string v2, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$1;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$1;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    #getter for: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->ERROR_NONE:I
    invoke-static {v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$000(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)I

    move-result v2

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->sendResult(I)V
    invoke-static {v1, v2}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$100(Lcom/android/phone/HtcCdmaPrlUpdateSetting;I)V

    .line 81
    :cond_0
    return-void
.end method
