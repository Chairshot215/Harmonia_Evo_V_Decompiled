.class public Lcom/htc/ipl/cdma;
.super Ljava/lang/Object;
.source "cdma.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcIPL"

.field private static me:Lcom/htc/ipl/cdma;


# instance fields
.field private mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ipl/cdma;->me:Lcom/htc/ipl/cdma;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/cdma;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/htc/ipl/cdma;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/htc/ipl/cdma;->me:Lcom/htc/ipl/cdma;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/htc/ipl/cdma;

    invoke-direct {v0}, Lcom/htc/ipl/cdma;-><init>()V

    sput-object v0, Lcom/htc/ipl/cdma;->me:Lcom/htc/ipl/cdma;

    .line 19
    :cond_0
    sget-object v0, Lcom/htc/ipl/cdma;->me:Lcom/htc/ipl/cdma;

    return-object v0
.end method


# virtual methods
.method public GetConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "NodeUri"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/ipl/cdma;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetConfigValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "NodeUri"
    .parameter "Data"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/ipl/cdma;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
