.class public final enum Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;
.super Ljava/lang/Enum;
.source "PacketCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/common/PacketCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamPacketSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

.field public static final enum PKT_SOURCE_DESKTOP:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

.field public static final enum PKT_SOURCE_HANDSET:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

.field public static final enum PKT_SOURCE_WEB:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;


# instance fields
.field code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    const-string v1, "PKT_SOURCE_HANDSET"

    const-string v2, "6801"

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_HANDSET:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    .line 14
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    const-string v1, "PKT_SOURCE_WEB"

    const-string v2, "6802"

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_WEB:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    .line 15
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    const-string v1, "PKT_SOURCE_DESKTOP"

    const-string v2, "6803"

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_DESKTOP:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_HANDSET:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_WEB:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_DESKTOP:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->$VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->code:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    return-object v0
.end method

.method public static values()[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->$VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    invoke-virtual {v0}, [Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->code:Ljava/lang/String;

    return-object v0
.end method
