.class Lcom/htc/omadm/core/DMService$MyHandler;
.super Landroid/os/Handler;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/core/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/core/DMService;


# direct methods
.method constructor <init>(Lcom/htc/omadm/core/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    .line 164
    const-string v5, "DMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyHandler:handleMessage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget v5, p1, Landroid/os/Message;->what:I

    if-ltz v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x14

    if-gt v5, v6, :cond_0

    .line 167
    const-string v5, "DMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyHandler:handleMessage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/omadm/prop/PropertyState;->DM_TYPE_MAPPING_STRING:[Ljava/lang/String;

    iget v8, p1, Landroid/os/Message;->what:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 301
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v5

    sget v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    if-lt v5, v6, :cond_2

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v5

    sget v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-ge v5, v6, :cond_2

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v5

    sget v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_NOPAYLOAD:I

    if-eq v5, v6, :cond_2

    .line 174
    const-string v5, "DMService"

    const-string v6, "DM is running, skip it."

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_2
    sget-object v5, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/omadm/core/DeviceNotifyReceiver;->hasOOBE(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 178
    const-string v5, "DMService"

    const-string v6, "DM session start without OOBE."

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    sget-object v6, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v7, v7, Lcom/htc/omadm/core/DMService;->mMOLooper:Landroid/os/Looper;

    invoke-static {v6, v7, p1}, Lcom/htc/omadm/rule/DMSession;->Init(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)Lcom/htc/omadm/rule/DMSession;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    .line 180
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v5, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v5}, Lcom/htc/omadm/rule/DMSession;->StartSession()V

    goto :goto_0

    .line 182
    :cond_3
    sget-boolean v5, Lcom/htc/omadm/prop/PropertyState;->OOBEUIReady:Z

    if-ne v5, v9, :cond_4

    sget-boolean v5, Lcom/htc/omadm/prop/PropertyState;->OOBEServiceReady:Z

    if-ne v5, v9, :cond_4

    .line 183
    const-string v5, "DMService"

    const-string v6, "DM session start with OOBE."

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    sget-object v6, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v7, v7, Lcom/htc/omadm/core/DMService;->mMOLooper:Landroid/os/Looper;

    invoke-static {v6, v7, p1}, Lcom/htc/omadm/rule/DMSession;->Init(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)Lcom/htc/omadm/rule/DMSession;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    .line 185
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v5, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v5}, Lcom/htc/omadm/rule/DMSession;->StartSession()V

    goto :goto_0

    .line 187
    :cond_4
    const-string v5, "DMService"

    const-string v6, "DM session wait with OOBE."

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    sget-object v6, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v7, v7, Lcom/htc/omadm/core/DMService;->mMOLooper:Landroid/os/Looper;

    invoke-static {v6, v7, p1}, Lcom/htc/omadm/rule/DMSession;->Init(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)Lcom/htc/omadm/rule/DMSession;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    .line 198
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v5, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v5}, Lcom/htc/omadm/rule/DMSession;->StartSession()V

    goto/16 :goto_0

    .line 203
    :pswitch_3
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v5

    sget v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    if-lt v5, v6, :cond_5

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v5

    sget v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-ge v5, v6, :cond_5

    .line 208
    new-instance v5, Lcom/htc/omadm/gui/ext/DMGui;

    sget-object v6, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const-string v8, "DMEXIST"

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/omadm/gui/ext/DMGui;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/htc/omadm/gui/ext/DMGui;->showDMEXIST()V

    .line 209
    const-string v5, "DMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overlap dialog:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    :cond_5
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    sget-object v6, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v7, v7, Lcom/htc/omadm/core/DMService;->mMOLooper:Landroid/os/Looper;

    invoke-static {v6, v7, p1}, Lcom/htc/omadm/rule/DMSession;->Init(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)Lcom/htc/omadm/rule/DMSession;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    .line 213
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v5, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v5}, Lcom/htc/omadm/rule/DMSession;->StartSession()V

    goto/16 :goto_0

    .line 223
    :pswitch_4
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v5

    sget v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    if-lt v5, v6, :cond_7

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v5

    sget v6, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INSTALLING:I

    if-ge v5, v6, :cond_7

    .line 226
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 227
    const-string v5, "DMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add session in queue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " session state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget v5, p1, Landroid/os/Message;->what:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/htc/omadm/core/SessionManager;->addSession(IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 231
    :cond_6
    const-string v5, "DMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drop session because of empty WAP data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " session state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 235
    :cond_7
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 236
    .local v1, newMsg:Landroid/os/Message;
    const/16 v5, 0x16

    iput v5, v1, Landroid/os/Message;->what:I

    .line 237
    iget v5, p1, Landroid/os/Message;->what:I

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 238
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 239
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, v1}, Lcom/htc/omadm/core/DMService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 246
    .end local v1           #newMsg:Landroid/os/Message;
    :pswitch_5
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v5, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v5, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    invoke-static {v5}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    .line 248
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    invoke-static {}, Lcom/htc/omadm/rule/ConnMo;->getSingleton()Lcom/htc/omadm/rule/ConnMo;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/omadm/core/DMService;->mConn:Lcom/htc/omadm/rule/ConnMo;

    .line 249
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v5, v5, Lcom/htc/omadm/core/DMService;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v5}, Lcom/htc/omadm/rule/ConnMo;->CheckNotificationHandleCondition()I

    move-result v0

    .line 250
    .local v0, dormanceState:I
    const-string v5, "DMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dormanceState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-ne v0, v9, :cond_8

    .line 253
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 254
    .restart local v1       #newMsg:Landroid/os/Message;
    invoke-virtual {v1, p0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 255
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v1, Landroid/os/Message;->what:I

    .line 256
    iget v5, p1, Landroid/os/Message;->arg2:I

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 257
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    sget-object v6, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v7, v7, Lcom/htc/omadm/core/DMService;->mMOLooper:Landroid/os/Looper;

    invoke-static {v6, v7, v1}, Lcom/htc/omadm/rule/DMSession;->Init(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)Lcom/htc/omadm/rule/DMSession;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    .line 259
    iget-object v5, p0, Lcom/htc/omadm/core/DMService$MyHandler;->this$0:Lcom/htc/omadm/core/DMService;

    iget-object v5, v5, Lcom/htc/omadm/core/DMService;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v5}, Lcom/htc/omadm/rule/DMSession;->StartSession()V

    goto/16 :goto_0

    .line 262
    .end local v1           #newMsg:Landroid/os/Message;
    :cond_8
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 263
    .restart local v1       #newMsg:Landroid/os/Message;
    iget v5, p1, Landroid/os/Message;->what:I

    iput v5, v1, Landroid/os/Message;->what:I

    .line 264
    iget v5, p1, Landroid/os/Message;->arg1:I

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 265
    iget v5, p1, Landroid/os/Message;->arg2:I

    iput v5, v1, Landroid/os/Message;->arg2:I

    .line 266
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v1, v5, v6}, Lcom/htc/omadm/core/DMService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 272
    .end local v0           #dormanceState:I
    .end local v1           #newMsg:Landroid/os/Message;
    :pswitch_6
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getNextSessionType()I

    move-result v3

    .line 273
    .local v3, sessionType:I
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getNextSessionID()I

    move-result v2

    .line 274
    .local v2, sessionID:I
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getNextSessionWapData()[B

    move-result-object v4

    .line 276
    .local v4, sessionWapData:[B
    if-eq v3, v9, :cond_1

    .line 277
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 278
    .restart local v1       #newMsg:Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 279
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 280
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    const-string v5, "DMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextSession:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, v1}, Lcom/htc/omadm/core/DMService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 290
    .end local v1           #newMsg:Landroid/os/Message;
    .end local v2           #sessionID:I
    .end local v3           #sessionType:I
    .end local v4           #sessionWapData:[B
    :pswitch_7
    sget-object v5, Lcom/htc/omadm/core/DMService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/omadm/rule/Factory;->Init(Landroid/content/Context;)V

    .line 291
    invoke-static {}, Lcom/htc/omadm/core/DMService;->access$000()Z

    move-result v5

    if-ne v5, v9, :cond_1

    .line 292
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/omadm/core/DMService;->access$002(Z)Z

    .line 293
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/htc/omadm/libdo/system/SysLib;->setPowerAcquire(Z)V

    .line 294
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/htc/omadm/libdo/system/SysLib;->setForeground(Z)V

    goto/16 :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
