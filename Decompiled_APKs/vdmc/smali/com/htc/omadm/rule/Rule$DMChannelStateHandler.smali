.class Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;
.super Landroid/os/Handler;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/rule/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMChannelStateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/rule/Rule;


# direct methods
.method constructor <init>(Lcom/htc/omadm/rule/Rule;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;->this$0:Lcom/htc/omadm/rule/Rule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 170
    iget v1, p1, Landroid/os/Message;->what:I

    sput v1, Lcom/htc/omadm/rule/Rule;->mDMChannelState:I

    .line 171
    sget-object v1, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDMChannelState is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/omadm/rule/Rule;->mDMChannelState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 175
    :pswitch_0
    invoke-static {}, Lcom/htc/omadm/rule/Rule;->GetSessionState()I

    move-result v1

    sget v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADING:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/htc/omadm/rule/Rule;->GetSessionState()I

    move-result v1

    sget v2, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOAD_ABORT:I

    if-ne v1, v2, :cond_0

    .line 180
    :cond_1
    sget-object v1, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start resume download..."

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 182
    .local v0, resumeDLMsg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 183
    invoke-virtual {p0, v0}, Lcom/htc/omadm/rule/Rule$DMChannelStateHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
