.class public Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;
.super Ljava/lang/Object;
.source "ConnChannelPolicy.java"


# static fields
.field private static final KEY_CONN_VIA_WIFI:Ljava/lang/String; = "conn-via-wifi"

.field private static me:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;


# instance fields
.field private DMappCDMASlot:I

.field private channelRule:I

.field private configAwaysHomeNetwork:Z

.field private connType:I

.field private connViaWifi:Z

.field private dataCallCDMASlot:I

.field private dmServerURL:Ljava/lang/String;

.field private mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

.field private productID:Ljava/lang/String;

.field private usedApnStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->me:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connType:I

    .line 18
    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->DMappCDMASlot:I

    .line 19
    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->dataCallCDMASlot:I

    .line 20
    iput-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->usedApnStr:Ljava/lang/String;

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->channelRule:I

    .line 22
    iput-boolean v1, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connViaWifi:Z

    .line 23
    iput-boolean v1, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->configAwaysHomeNetwork:Z

    .line 28
    iput-object v2, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 33
    invoke-static {}, Lcom/htc/omadm/libdo/connection/ConnManager;->getSingleton()Lcom/htc/omadm/libdo/connection/ConnManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    .line 34
    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Product_ID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->updatePolicy()V

    .line 37
    return-void
.end method

.method private enableCDMAPolicy()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "supersonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "speedy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "express"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->enableSprintPolicy()V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "shooter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->enableSprintPolicy()V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "jewel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->enableSprintPolicyCurrentNetwork()V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "inc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->enableVZWPolicy()V

    .line 113
    :cond_4
    return-void
.end method

.method private enableGSMPolicy()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "espresso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "glacier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->enableTMUSPolicy()V

    .line 120
    :cond_1
    return-void
.end method

.method private enableSprintPolicy()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->DMappCDMASlot:I

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->dataCallCDMASlot:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->channelRule:I

    .line 126
    return-void
.end method

.method private enableSprintPolicyCurrentNetwork()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->channelRule:I

    .line 130
    return-void
.end method

.method private enableTMUSPolicy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "espresso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->productID:Ljava/lang/String;

    const-string v1, "glacier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    iput-boolean v2, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connViaWifi:Z

    .line 143
    :cond_1
    iput v2, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->channelRule:I

    .line 144
    return-void
.end method

.method private enableVZWPolicy()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 133
    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->DMappCDMASlot:I

    .line 134
    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->dataCallCDMASlot:I

    .line 135
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->channelRule:I

    .line 136
    return-void
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->me:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    invoke-direct {v0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;-><init>()V

    sput-object v0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->me:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    .line 43
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->me:Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;

    return-object v0
.end method


# virtual methods
.method public getChannelRule()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->channelRule:I

    return v0
.end method

.method public getConfigAwaysHomeNetwork()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->configAwaysHomeNetwork:Z

    return v0
.end method

.method public getConnViaWifi()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connViaWifi:Z

    return v0
.end method

.method public updatePolicy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->mConnMgr:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connType:I

    .line 56
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->enableCDMAPolicy()V

    .line 58
    :cond_0
    iget v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connType:I

    if-ne v0, v2, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->enableGSMPolicy()V

    .line 62
    :cond_1
    const-string v0, "conn-via-wifi"

    const-string v1, "None"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMConfig;->GetConfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    const-string v0, "conn-via-wifi"

    const-string v1, "None"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMConfig;->GetConfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iput-boolean v2, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connViaWifi:Z

    .line 70
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    const-string v0, "conn-via-wifi"

    const-string v1, "None"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMConfig;->GetConfString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/omadm/libdo/connection/ConnChannelPolicy;->connViaWifi:Z

    goto :goto_0
.end method
