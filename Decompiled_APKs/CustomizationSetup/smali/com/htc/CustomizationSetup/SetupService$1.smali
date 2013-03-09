.class Lcom/htc/CustomizationSetup/SetupService$1;
.super Landroid/content/BroadcastReceiver;
.source "SetupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/CustomizationSetup/SetupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/SetupService;


# direct methods
.method constructor <init>(Lcom/htc/CustomizationSetup/SetupService;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    if-nez p2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mbSIMChecked:Z
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$000(Lcom/htc/CustomizationSetup/SetupService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SetupService;->access$102(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    const-string v1, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/CustomizationSetup/SetupService;->mSimOperator:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SetupService;->access$202(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    const-string v0, "Customization_SetupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSimOperator:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/CustomizationSetup/SetupService;->access$200(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #calls: Lcom/htc/CustomizationSetup/SetupService;->requestGetGID1()Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SetupService;->access$400(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/CustomizationSetup/SetupService;->mGID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SetupService;->access$302(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    const-string v0, "Customization_SetupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mGID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/CustomizationSetup/SetupService;->access$300(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$500(Lcom/htc/CustomizationSetup/SetupService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$1;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$500(Lcom/htc/CustomizationSetup/SetupService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
