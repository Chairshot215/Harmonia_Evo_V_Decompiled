.class public Lcom/htc/reportagent/receiver/PolicyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PolicyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/htc/reportagent/receiver/PolicyReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/receiver/PolicyReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    if-nez p2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    const-string v3, "com.htc.reportagent.action.BOOT_COMPLETE"

    invoke-static {p1, v3}, Lcom/htc/reportagent/ReportService;->perform(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 39
    :cond_2
    const-string v3, "com.htc.intent.action.TELLHTC_SETTING_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    const-string v3, "type"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, type:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "error_report"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "application_log"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 46
    :cond_3
    const-string v3, "com.htc.reportagent.action.POLICY_SETTING_CHANGE"

    invoke-static {p1, v3}, Lcom/htc/reportagent/ReportService;->perform(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 47
    :cond_4
    const-string v3, "prefer_network"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string v3, "com.htc.reportagent.action.CONNECTION_CHANGE"

    invoke-static {p1, v3}, Lcom/htc/reportagent/ReportService;->perform(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 51
    .end local v2           #type:Ljava/lang/String;
    :cond_5
    const-string v3, "com.htc.intent.action.ULOG_POLICY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 53
    const-string v3, "isSIE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    .local v1, isSIE:Z
    if-eqz v1, :cond_6

    .line 55
    const-string v3, "com.htc.reportagent.action.SETUP_WIZARD_FINISHED"

    invoke-static {p1, v3}, Lcom/htc/reportagent/ReportService;->perform(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 57
    :cond_6
    const-string v3, "com.htc.reportagent.action.ULOG_POLICY_CHANGED"

    invoke-static {p1, v3}, Lcom/htc/reportagent/ReportService;->perform(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 60
    .end local v1           #isSIE:Z
    :cond_7
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const-string v3, "com.htc.reportagent.action.TIME_SET"

    invoke-static {p1, v3}, Lcom/htc/reportagent/ReportService;->perform(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
