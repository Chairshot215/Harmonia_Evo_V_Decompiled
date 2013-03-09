.class Lcom/android/phone/HtcCdmaPhoneApp$3;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaPhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPhoneApp$3;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1481
    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1482
    .local v1, batteryLevel:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1483
    .local v2, batteryScale:I
    iget-object v3, p0, Lcom/android/phone/HtcCdmaPhoneApp$3;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mBacklightUtils:Lcom/android/phone/HtcCdmaBacklightUtils;
    invoke-static {v3}, Lcom/android/phone/HtcCdmaPhoneApp;->access$2400(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/HtcCdmaBacklightUtils;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1484
    iget-object v3, p0, Lcom/android/phone/HtcCdmaPhoneApp$3;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mBacklightUtils:Lcom/android/phone/HtcCdmaBacklightUtils;
    invoke-static {v3}, Lcom/android/phone/HtcCdmaPhoneApp;->access$2400(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/HtcCdmaBacklightUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/phone/HtcCdmaBacklightUtils;->setBatterInfo(II)V

    .line 1486
    :cond_0
    const-string v3, "HtcCdmaPhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    .end local v1           #batteryLevel:I
    .end local v2           #batteryScale:I
    :cond_1
    return-void
.end method
