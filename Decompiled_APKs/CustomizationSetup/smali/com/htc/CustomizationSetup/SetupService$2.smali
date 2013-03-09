.class Lcom/htc/CustomizationSetup/SetupService$2;
.super Ljava/lang/Thread;
.source "SetupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/CustomizationSetup/SetupService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/SetupService;

.field final synthetic val$mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;Landroid/telephony/TelephonyManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService$2;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    iput-object p3, p0, Lcom/htc/CustomizationSetup/SetupService$2;->val$mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 185
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$2;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    new-instance v2, Lcom/htc/CustomizationSetup/SetupService$MyHandler;

    iget-object v3, p0, Lcom/htc/CustomizationSetup/SetupService$2;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/CustomizationSetup/SetupService$MyHandler;-><init>(Lcom/htc/CustomizationSetup/SetupService;Lcom/htc/CustomizationSetup/SetupService$1;)V

    #setter for: Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/htc/CustomizationSetup/SetupService;->access$502(Lcom/htc/CustomizationSetup/SetupService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 190
    const-string v1, "Customization_SetupService"

    const-string v2, "Broadcast AutoSetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.app.autosetting.location"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$2;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    invoke-virtual {v1, v0}, Lcom/htc/CustomizationSetup/SetupService;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$2;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    const-string v2, "NOT_READY"

    #calls: Lcom/htc/CustomizationSetup/SetupService;->handleSIMState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/CustomizationSetup/SetupService;->access$700(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)V

    .line 195
    const-string v1, "Customization_SetupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/CustomizationSetup/SetupService$2;->val$mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$2;->val$mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 197
    const-string v1, "Customization_SetupService"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$2;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    const-string v2, "LOADED"

    #calls: Lcom/htc/CustomizationSetup/SetupService;->handleSIMState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/CustomizationSetup/SetupService;->access$700(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)V

    .line 205
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 206
    return-void

    .line 201
    :cond_0
    const-string v1, "Customization_SetupService"

    const-string v2, "GSM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$2;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #calls: Lcom/htc/CustomizationSetup/SetupService;->registerSIMStateReceiver()V
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SetupService;->access$900(Lcom/htc/CustomizationSetup/SetupService;)V

    goto :goto_0
.end method
