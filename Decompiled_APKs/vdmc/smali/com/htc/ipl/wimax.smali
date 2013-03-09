.class public Lcom/htc/ipl/wimax;
.super Ljava/lang/Object;
.source "wimax.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcIPL"

.field private static me:Lcom/htc/ipl/wimax;


# instance fields
.field private STR_MACADDRESS:Ljava/lang/String;

.field mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ipl/wimax;->me:Lcom/htc/ipl/wimax;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ipl/wimax;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/wimax;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 37
    const-string v0, "persist.wimax.0.MAC"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    .line 39
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac address without colon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/htc/ipl/wimax;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/ipl/wimax;->me:Lcom/htc/ipl/wimax;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/htc/ipl/wimax;

    invoke-direct {v0}, Lcom/htc/ipl/wimax;-><init>()V

    sput-object v0, Lcom/htc/ipl/wimax;->me:Lcom/htc/ipl/wimax;

    .line 29
    :cond_0
    sget-object v0, Lcom/htc/ipl/wimax;->me:Lcom/htc/ipl/wimax;

    return-object v0
.end method


# virtual methods
.method public AddValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "NodeUri"
    .parameter "Data"

    .prologue
    .line 86
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddNodeValue: NodeUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, 0x1

    .line 90
    .local v2, result:Z
    :try_start_0
    new-instance v0, Lcom/sqn/omadm/DmTree;

    iget-object v3, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/sqn/omadm/DmTree;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, dmTree:Lcom/sqn/omadm/DmTree;
    invoke-virtual {v0, p1, p2}, Lcom/sqn/omadm/DmTree;->addWimaxNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 92
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save success/failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sqn/omadm/DmTree;->Save()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #dmTree:Lcom/sqn/omadm/DmTree;
    :goto_0
    return v2

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXCEPTION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public DelValue(Ljava/lang/String;)Z
    .locals 6
    .parameter "NodeUri"

    .prologue
    .line 101
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DelNodeValue: NodeUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v2, 0x1

    .line 105
    .local v2, result:Z
    :try_start_0
    new-instance v0, Lcom/sqn/omadm/DmTree;

    iget-object v3, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/sqn/omadm/DmTree;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, dmTree:Lcom/sqn/omadm/DmTree;
    invoke-virtual {v0, p1}, Lcom/sqn/omadm/DmTree;->delWimaxNode(Ljava/lang/String;)Z

    move-result v2

    .line 107
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save success/failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sqn/omadm/DmTree;->Save()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #dmTree:Lcom/sqn/omadm/DmTree;
    :goto_0
    return v2

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXCEPTION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "NodeUri"

    .prologue
    .line 50
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetNodeValue: NodeUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/htc/ipl/wimax;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_WimaxValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "NodeUri"

    .prologue
    .line 72
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetNodeValue: NodeUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v2, ""

    .line 76
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lcom/sqn/omadm/DmTree;

    iget-object v3, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/sqn/omadm/DmTree;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, dmTree:Lcom/sqn/omadm/DmTree;
    invoke-virtual {v0, p1}, Lcom/sqn/omadm/DmTree;->getWimaxNode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    .end local v0           #dmTree:Lcom/sqn/omadm/DmTree;
    :goto_0
    return-object v2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXCEPTION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "NodeUri"
    .parameter "Data"

    .prologue
    .line 44
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetNodeValue: NodeUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/htc/ipl/wimax;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_WimaxValue(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public SetValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "NodeUri"
    .parameter "Data"

    .prologue
    .line 57
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetValue: NodeUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x1

    .line 61
    .local v2, result:Z
    :try_start_0
    new-instance v0, Lcom/sqn/omadm/DmTree;

    iget-object v3, p0, Lcom/htc/ipl/wimax;->STR_MACADDRESS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/sqn/omadm/DmTree;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, dmTree:Lcom/sqn/omadm/DmTree;
    invoke-virtual {v0, p1, p2}, Lcom/sqn/omadm/DmTree;->setWimaxNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 63
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save success/failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sqn/omadm/DmTree;->Save()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0           #dmTree:Lcom/sqn/omadm/DmTree;
    :goto_0
    return v2

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXCEPTION:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
