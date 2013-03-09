.class public final enum Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;
.super Ljava/lang/Enum;
.source "PacketCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/xps/pomelo/common/PacketCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum BUILD_CHANGELIST:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum BUILD_KEYSET:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum BUILD_PROJECT:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum BUILD_TYPE:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum CID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum DEVICE_ID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum DEVICE_SN:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum FRAMEWORK_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum MODEL_ID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum ROM_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

.field public static final enum SENSE_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;


# instance fields
.field index:I

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "MODEL_ID"

    const-string v2, "modelId"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->MODEL_ID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 60
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "DEVICE_ID"

    const-string v2, "deviceId"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->DEVICE_ID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 61
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "DEVICE_SN"

    const-string v2, "deviceSN"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->DEVICE_SN:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 62
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "CID"

    const-string v2, "cid"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->CID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 63
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "BUILD_TYPE"

    const-string v2, "buildType"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_TYPE:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 64
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "BUILD_KEYSET"

    const/4 v2, 0x5

    const-string v3, "buildKeyset"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_KEYSET:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 65
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "BUILD_CHANGELIST"

    const/4 v2, 0x6

    const-string v3, "buildChangelist"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_CHANGELIST:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 66
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "BUILD_PROJECT"

    const/4 v2, 0x7

    const-string v3, "buildProject"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_PROJECT:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 67
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "ROM_VERSION"

    const/16 v2, 0x8

    const-string v3, "romVersion"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->ROM_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 68
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "FRAMEWORK_VERSION"

    const/16 v2, 0x9

    const-string v3, "frameworkVersion"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->FRAMEWORK_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 69
    new-instance v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    const-string v1, "SENSE_VERSION"

    const/16 v2, 0xa

    const-string v3, "senseVersion"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->SENSE_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    .line 57
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->MODEL_ID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->DEVICE_ID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->DEVICE_SN:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->CID:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_TYPE:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_KEYSET:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_CHANGELIST:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->BUILD_PROJECT:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->ROM_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->FRAMEWORK_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->SENSE_VERSION:Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->$VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->name:Ljava/lang/String;

    .line 87
    iput p4, p0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->index:I

    .line 88
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    return-object v0
.end method

.method public static values()[Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->$VALUES:[Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    invoke-virtual {v0}, [Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;->name:Ljava/lang/String;

    return-object v0
.end method
