.class Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;
.super Ljava/lang/Object;
.source "ReportAgentReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/receiver/ReportAgentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runner"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/reportagent/receiver/ReportAgentReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/reportagent/receiver/ReportAgentReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context_in"
    .parameter "intent_in"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->this$0:Lcom/htc/reportagent/receiver/ReportAgentReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->intent:Landroid/content/Intent;

    .line 30
    iput-object p2, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->context:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    const-string v1, "ReportAgentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->context:Landroid/content/Context;

    const-class v3, Lcom/htc/reportagent/ReportService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const-string v1, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.intent.action.USER_PROFILING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/reportagent/receiver/ReportAgentReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "ReportAgentReceiver"

    const-string v2, "Recv REPORT request by secret code"

    invoke-static {v1, v2}, Lcom/htc/reportagent/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
