.class Lcom/htc/android/epst/EntryEPSTInfo$1;
.super Ljava/lang/Thread;
.source "EntryEPSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EntryEPSTInfo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/EntryEPSTInfo;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/EntryEPSTInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/android/epst/EntryEPSTInfo$1;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 234
    const-string v0, "EntryEPSTInfo"

    const-string v1, "execute creating a AT dmagent with another thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$900()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->createDMagent(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/epst/dmagent/DMAgentConnector;
    invoke-static {v0, v1}, Lcom/htc/android/epst/EntryEPSTInfo;->access$1000(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/epst/dmagent/DMAgentConnector;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$602(Lcom/htc/android/epst/dmagent/DMAgentConnector;)Lcom/htc/android/epst/dmagent/DMAgentConnector;

    .line 236
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryEPSTInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT_DMAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$600()Lcom/htc/android/epst/dmagent/DMAgentConnector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/EntryEPSTInfo$1;->this$0:Lcom/htc/android/epst/EntryEPSTInfo;

    iget-object v0, v0, Lcom/htc/android/epst/EntryEPSTInfo;->mAgentHandler:Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/epst/EntryEPSTInfo$AgentHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 239
    return-void
.end method
