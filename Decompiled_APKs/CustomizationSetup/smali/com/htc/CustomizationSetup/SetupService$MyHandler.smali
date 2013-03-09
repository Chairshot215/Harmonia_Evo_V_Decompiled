.class Lcom/htc/CustomizationSetup/SetupService$MyHandler;
.super Landroid/os/Handler;
.source "SetupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/CustomizationSetup/SetupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/CustomizationSetup/SetupService;


# direct methods
.method private constructor <init>(Lcom/htc/CustomizationSetup/SetupService;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/CustomizationSetup/SetupService;Lcom/htc/CustomizationSetup/SetupService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/htc/CustomizationSetup/SetupService$MyHandler;-><init>(Lcom/htc/CustomizationSetup/SetupService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0xb

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 150
    :pswitch_0
    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SetupService;->access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOADED"

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SetupService;->access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOCKED"

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SetupService;->access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$600(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;
    invoke-static {v0, v2}, Lcom/htc/CustomizationSetup/SetupService;->access$602(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$500(Lcom/htc/CustomizationSetup/SetupService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$500(Lcom/htc/CustomizationSetup/SetupService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SetupService;->access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/CustomizationSetup/SetupService;->handleSIMState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SetupService;->access$700(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/CustomizationSetup/SetupService;->access$600(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 165
    :try_start_2
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/htc/CustomizationSetup/SetupService;->isTimeout:Ljava/lang/Boolean;
    invoke-static {v0, v2}, Lcom/htc/CustomizationSetup/SetupService;->access$602(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 166
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    iget-object v0, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    iget-object v1, p0, Lcom/htc/CustomizationSetup/SetupService$MyHandler;->this$0:Lcom/htc/CustomizationSetup/SetupService;

    #getter for: Lcom/htc/CustomizationSetup/SetupService;->mSIMState:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/CustomizationSetup/SetupService;->access$100(Lcom/htc/CustomizationSetup/SetupService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/CustomizationSetup/SetupService;->handleSIMState(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/CustomizationSetup/SetupService;->access$700(Lcom/htc/CustomizationSetup/SetupService;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
