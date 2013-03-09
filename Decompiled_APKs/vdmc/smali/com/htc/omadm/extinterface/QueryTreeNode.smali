.class public Lcom/htc/omadm/extinterface/QueryTreeNode;
.super Ljava/lang/Object;
.source "QueryTreeNode.java"


# static fields
.field private static final COMMANDFALSE:Ljava/lang/String; = "CommandFALSE"

.field private static final DMACC_NAME:Ljava/lang/String; = "./DMAcc/Name"

.field private static final DMACC_SRVADDR_APPADDR_ADDR:Ljava/lang/String; = "./DMAcc/AppAddr/SrvAddr/Addr"

.field private static final DMACC_SRVADDR_APPADDR_ADDRTYPE:Ljava/lang/String; = "./DMAcc/AppAddr/SrvAddr/AddrType"

.field private static final INTENT_EXTRA_RESPONSE:Ljava/lang/String; = "Response"

.field private static final INTENT_EXTRA_RW:Ljava/lang/String; = "RW"

.field private static final INTENT_EXTRA_STRING_TREENODE:Ljava/lang/String; = "NodeName"

.field private static final INTENT_EXTRA_VALUE:Ljava/lang/String; = "Value"

.field private static final INTENT_NAME_EXT_RESPONSE:Ljava/lang/String; = "com.htc.omadm.extinterface.response"

.field private static final LOG_TAG:Ljava/lang/String; = "QueryTreeNode"

.field private static final READ:I = 0x0

.field private static final RETURNFALSE:Ljava/lang/String; = "ReturnFALSE"

.field private static final WRITE:I = 0x1

.field private static mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

.field private static mInstance:Lcom/htc/omadm/extinterface/QueryTreeNode;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/extinterface/QueryTreeNode;->mInstance:Lcom/htc/omadm/extinterface/QueryTreeNode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/htc/omadm/extinterface/QueryTreeNode;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/htc/omadm/extinterface/QueryTreeNode;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    sget-object v0, Lcom/htc/omadm/extinterface/QueryTreeNode;->mInstance:Lcom/htc/omadm/extinterface/QueryTreeNode;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/htc/omadm/extinterface/QueryTreeNode;

    invoke-direct {v0, p0}, Lcom/htc/omadm/extinterface/QueryTreeNode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/extinterface/QueryTreeNode;->mInstance:Lcom/htc/omadm/extinterface/QueryTreeNode;

    .line 41
    :cond_0
    sget-object v0, Lcom/htc/omadm/extinterface/QueryTreeNode;->mInstance:Lcom/htc/omadm/extinterface/QueryTreeNode;

    return-object v0
.end method


# virtual methods
.method public ParseExtraAndQuery(Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 45
    const-string v4, "NodeName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, extrastring:Ljava/lang/String;
    const-string v4, "Value"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, extravalue:Ljava/lang/String;
    const-string v4, "RW"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, iRW:I
    const-string v3, "ReturnFALSE"

    .line 50
    .local v3, result:Ljava/lang/String;
    invoke-static {}, Lcom/redbend/vdmc/Sprint/DMAcc;->getInstance()Lcom/redbend/vdmc/Sprint/DMAcc;

    move-result-object v4

    sput-object v4, Lcom/htc/omadm/extinterface/QueryTreeNode;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    .line 52
    const-string v4, "QueryTreeNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extrastring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v4, "QueryTreeNode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extravalue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v4, "./DMAcc/Name"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    if-nez v2, :cond_1

    .line 57
    sget-object v4, Lcom/htc/omadm/extinterface/QueryTreeNode;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v5, ""

    invoke-virtual {v4, v8, v5}, Lcom/redbend/vdmc/Sprint/DMAcc;->Name(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    :cond_0
    :goto_0
    return-object v3

    .line 58
    :cond_1
    if-ne v2, v7, :cond_0

    .line 59
    sget-object v4, Lcom/htc/omadm/extinterface/QueryTreeNode;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v4, v7, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->Name(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 61
    :cond_2
    const-string v4, "./DMAcc/AppAddr/SrvAddr/Addr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    if-nez v2, :cond_3

    .line 63
    sget-object v4, Lcom/htc/omadm/extinterface/QueryTreeNode;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v5, ""

    invoke-virtual {v4, v8, v5}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerAddr(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 64
    :cond_3
    if-ne v2, v7, :cond_0

    .line 65
    sget-object v4, Lcom/htc/omadm/extinterface/QueryTreeNode;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v4, v7, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerAddr(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 67
    :cond_4
    const-string v4, "./DMAcc/AppAddr/SrvAddr/AddrType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 68
    if-nez v2, :cond_5

    .line 69
    sget-object v4, Lcom/htc/omadm/extinterface/QueryTreeNode;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v5, ""

    invoke-virtual {v4, v8, v5}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerAddrType(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 70
    :cond_5
    if-ne v2, v7, :cond_0

    .line 71
    sget-object v4, Lcom/htc/omadm/extinterface/QueryTreeNode;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v4, v7, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerAddrType(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 74
    :cond_6
    const-string v4, "QueryTreeNode"

    const-string v5, "Command False."

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v3, "CommandFALSE"

    goto :goto_0
.end method

.method public Response(Ljava/lang/String;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 81
    const-string v1, "QueryTreeNode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.omadm.extinterface.response"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, responseintent:Landroid/content/Intent;
    const-string v1, "Response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/htc/omadm/extinterface/QueryTreeNode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
