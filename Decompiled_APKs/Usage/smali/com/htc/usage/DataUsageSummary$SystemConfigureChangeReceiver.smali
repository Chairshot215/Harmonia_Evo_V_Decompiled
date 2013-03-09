.class Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemConfigureChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method private constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 2516
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/DataUsageSummary$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2516
    invoke-direct {p0, p1}, Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2519
    const-string v1, "DataUsageSummary"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2522
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2523
    const-string v1, "DataUsageSummary"

    const-string v2, "ACTION_MOBILEDATA_MODE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$SystemConfigureChangeReceiver;->this$0:Lcom/htc/usage/DataUsageSummary;

    const/4 v2, 0x1

    #calls: Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v1, v2}, Lcom/htc/usage/DataUsageSummary;->access$2100(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 2530
    return-void

    .line 2525
    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2526
    const-string v1, "DataUsageSummary"

    const-string v2, "ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
