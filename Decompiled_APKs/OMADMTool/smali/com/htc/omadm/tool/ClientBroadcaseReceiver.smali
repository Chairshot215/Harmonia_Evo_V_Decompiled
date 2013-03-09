.class public Lcom/htc/omadm/tool/ClientBroadcaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClientBroadcaseReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ClientBroadcaseReceiver"

.field private static mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/tool/ClientBroadcaseReceiver;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const-string v0, "ClientBroadcaseReceiver"

    const-string v1, "ClientBroadcastReceiver:IN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, action:Ljava/lang/String;
    const-string v4, "ClientBroadcaseReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BUILD_TAG : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v5, "release-keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/htc/omadm/tool/Constant;->isSprint:Z

    if-nez v4, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    sget-object v4, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    .line 35
    sput-object p1, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    .line 37
    :cond_2
    sput-object p2, Lcom/htc/omadm/tool/ClientBroadcaseReceiver;->mIntent:Landroid/content/Intent;

    .line 39
    const-string v4, "ClientBroadcaseReceiver"

    const-string v5, "MSG_INITIATE_RECEIVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, sendIntent:Landroid/content/Intent;
    sget-object v4, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    const-class v5, Lcom/htc/omadm/tool/EntryOMADMToolInfo;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    sget-object v4, Lcom/htc/omadm/tool/ClientBroadcaseReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 46
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, host:Ljava/lang/String;
    const-string v4, "cdma"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    sget-object v4, Lcom/htc/omadm/tool/OMADMTool;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
