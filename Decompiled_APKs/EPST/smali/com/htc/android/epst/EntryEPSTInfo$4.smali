.class final Lcom/htc/android/epst/EntryEPSTInfo$4;
.super Ljava/lang/Thread;
.source "EntryEPSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/EntryEPSTInfo;->initDMAgent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    const-string v0, "EntryEPSTInfo"

    const-string v1, "execute creating a DM dmagent with another thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$1100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/android/epst/dmagent/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    #calls: Lcom/htc/android/epst/EntryEPSTInfo;->createDMagent(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/epst/dmagent/DMAgentConnector;
    invoke-static {v0, v1}, Lcom/htc/android/epst/EntryEPSTInfo;->access$1000(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/epst/dmagent/DMAgentConnector;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/epst/EntryEPSTInfo;->access$002(Lcom/htc/android/epst/dmagent/DMAgentConnector;)Lcom/htc/android/epst/dmagent/DMAgentConnector;

    .line 298
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EntryEPSTInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDMAgent>DM_DMAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/epst/EntryEPSTInfo;->access$000()Lcom/htc/android/epst/dmagent/DMAgentConnector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    return-void
.end method
