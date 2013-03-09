.class Lcom/htc/BugReport/BugReportReceiver$Runner;
.super Ljava/lang/Object;
.source "BugReportReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/BugReport/BugReportReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Runner"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/htc/BugReport/BugReportReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/BugReport/BugReportReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context_in"
    .parameter "intent_in"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->this$0:Lcom/htc/BugReport/BugReportReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p3, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->intent:Landroid/content/Intent;

    .line 27
    iput-object p2, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 31
    const-string v3, "BugReportReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recv Intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, sBuildType:Ljava/lang/String;
    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->context:Landroid/content/Context;

    const-class v5, Lcom/htc/BugReport/BugReportService;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    const-string v3, "com.htc.intent.action.BUGREPORT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    iget-object v3, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "send_htc_error_report"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, iBugReportSetting:I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 41
    if-nez v1, :cond_3

    .line 44
    const-string v3, "BugReportReceiver"

    const-string v4, "BugReport Disableed by Settings.Secure:Intent drop"

    invoke-static {v3, v4}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_3
    const-string v3, "BugReportReceiver"

    const-string v4, "Strange setting from Settings.Secure, Check customization,BugReport Disableed"

    invoke-static {v3, v4}, Lcom/htc/BugReport/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v1           #iBugReportSetting:I
    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    iget-object v3, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/BugReport/BugReportReceiver$Runner;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 60
    :cond_5
    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "BugReportReceiver"

    const-string v4, "Recv REPORT request by secret code"

    invoke-static {v3, v4}, Lcom/htc/BugReport/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
