.class Lcom/htc/omadm/tool/EntryOMADMToolInfo$2;
.super Ljava/lang/Thread;
.source "EntryOMADMToolInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/EntryOMADMToolInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$2;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    const-string v0, "EntryOMADMToolInfo"

    const-string v1, "execute creating a DM dmagent with another thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$600()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    #calls: Lcom/htc/omadm/tool/EntryOMADMToolInfo;->createDMagent(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/omadm/util/DMAgentConnector;
    invoke-static {v0, v1}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$700(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$502(Lcom/htc/omadm/util/DMAgentConnector;)Lcom/htc/omadm/util/DMAgentConnector;

    .line 167
    sget-boolean v0, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryOMADMToolInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DM_DMAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$500()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/tool/EntryOMADMToolInfo$2;->this$0:Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    #getter for: Lcom/htc/omadm/tool/EntryOMADMToolInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/omadm/tool/EntryOMADMToolInfo;->access$000(Lcom/htc/omadm/tool/EntryOMADMToolInfo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    return-void
.end method
