.class public final enum Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;
.super Ljava/lang/Enum;
.source "PacketCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/common/PacketCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamPacketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum HANDSET_LOG_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum HANDSET_POLICT_ACKNOWLEDGE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum HANDSET_POLICY_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum HANDSET_POLICY_RESOPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum MGMT_POLICY_DETAIL_READ_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum MGMT_POLICY_DETAIL_READ_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum MGMT_POLICY_READ_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum MGMT_POLICY_READ_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum MGMT_POLICY_WRITE_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum MGMT_POLICY_WRITE_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

.field public static final enum WEB_LOG_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;


# instance fields
.field code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "HANDSET_LOG_PKT"

    const-string v2, "11001"

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_LOG_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 33
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "WEB_LOG_PKT"

    const-string v2, "11002"

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->WEB_LOG_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 34
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "HANDSET_POLICY_REQUEST_PKT"

    const-string v2, "12011"

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICY_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 35
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "HANDSET_POLICY_RESOPONSE_PKT"

    const-string v2, "12012"

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICY_RESOPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 36
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "HANDSET_POLICT_ACKNOWLEDGE_PKT"

    const-string v2, "12021"

    invoke-direct {v0, v1, v8, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICT_ACKNOWLEDGE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 37
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "MGMT_POLICY_READ_REQUEST_PKT"

    const/4 v2, 0x5

    const-string v3, "12031"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_READ_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 38
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "MGMT_POLICY_READ_RESPONSE_PKT"

    const/4 v2, 0x6

    const-string v3, "12032"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_READ_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 39
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "MGMT_POLICY_DETAIL_READ_REQUEST_PKT"

    const/4 v2, 0x7

    const-string v3, "12041"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_DETAIL_READ_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 40
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "MGMT_POLICY_DETAIL_READ_RESPONSE_PKT"

    const/16 v2, 0x8

    const-string v3, "12042"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_DETAIL_READ_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 41
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "MGMT_POLICY_WRITE_REQUEST_PKT"

    const/16 v2, 0x9

    const-string v3, "12051"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_WRITE_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 42
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    const-string v1, "MGMT_POLICY_WRITE_RESPONSE_PKT"

    const/16 v2, 0xa

    const-string v3, "12052"

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_WRITE_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_LOG_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->WEB_LOG_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICY_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICY_RESOPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICT_ACKNOWLEDGE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_READ_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_READ_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_DETAIL_READ_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_DETAIL_READ_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_WRITE_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->MGMT_POLICY_WRITE_RESPONSE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->$VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->code:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    return-object v0
.end method

.method public static values()[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->$VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    invoke-virtual {v0}, [Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->code:Ljava/lang/String;

    return-object v0
.end method
