.class Lcom/google/android/setupwizard/NetworkMonitoringActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitoringActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/NetworkMonitoringActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/NetworkMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/NetworkMonitoringActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity$1;->this$0:Lcom/google/android/setupwizard/NetworkMonitoringActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    sput-boolean v2, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeSet:Z

    .line 57
    sget-boolean v1, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TimeZoneSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeZoneSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    sput-boolean v2, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeZoneSet:Z

    .line 60
    sget-boolean v1, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TimeZoneSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->mTimeZoneSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/setupwizard/NetworkMonitoringActivity$1;->this$0:Lcom/google/android/setupwizard/NetworkMonitoringActivity;

    invoke-virtual {v1, p2}, Lcom/google/android/setupwizard/NetworkMonitoringActivity;->onSimStateChanged(Landroid/content/Intent;)V

    goto :goto_0
.end method
