.class public Lcom/htc/omadm/extinterface/ExtIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtIntentReceiver.java"


# static fields
.field private static final INTENT_NAME_EXT_INTERFACE:Ljava/lang/String; = "com.htc.omadm.extinterface"

.field private static final LOG_TAG:Ljava/lang/String; = "ExtIntentReceiver"

.field private static mQueryTreeNode:Lcom/htc/omadm/extinterface/QueryTreeNode;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private DMinit()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->InitVDMC()V

    .line 38
    const-string v0, "ExtIntentReceiver"

    const-string v1, "VdmcCtl.Init() by ExtIntentReceiver"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/htc/omadm/extinterface/ExtIntentReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/VdmcCtl;->Init()Z

    .line 40
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const-string v2, "ExtIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput-object p1, p0, Lcom/htc/omadm/extinterface/ExtIntentReceiver;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.htc.omadm.extinterface"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    const-string v1, ""

    .line 28
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/omadm/extinterface/ExtIntentReceiver;->DMinit()V

    .line 29
    invoke-static {p1}, Lcom/htc/omadm/extinterface/QueryTreeNode;->getSingleton(Landroid/content/Context;)Lcom/htc/omadm/extinterface/QueryTreeNode;

    move-result-object v2

    sput-object v2, Lcom/htc/omadm/extinterface/ExtIntentReceiver;->mQueryTreeNode:Lcom/htc/omadm/extinterface/QueryTreeNode;

    .line 30
    sget-object v2, Lcom/htc/omadm/extinterface/ExtIntentReceiver;->mQueryTreeNode:Lcom/htc/omadm/extinterface/QueryTreeNode;

    invoke-virtual {v2, p2}, Lcom/htc/omadm/extinterface/QueryTreeNode;->ParseExtraAndQuery(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 31
    sget-object v2, Lcom/htc/omadm/extinterface/ExtIntentReceiver;->mQueryTreeNode:Lcom/htc/omadm/extinterface/QueryTreeNode;

    invoke-virtual {v2, v1}, Lcom/htc/omadm/extinterface/QueryTreeNode;->Response(Ljava/lang/String;)V

    .line 34
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    return-void
.end method
