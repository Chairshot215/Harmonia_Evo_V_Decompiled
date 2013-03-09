.class public final enum Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;
.super Ljava/lang/Enum;
.source "ContentStoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TExtrasType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EAdvanceGuidance:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EBuilding:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EColorScheme:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EComputerVoice:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EDriveAndWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EHumanVoice:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum ERoadMap:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum ESafetyCamera:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum ESatelliteImagery:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum ETraffic:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum ETravelGuide:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

.field public static final enum EWeather:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "ERoadMap"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ERoadMap:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 71
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "ESafetyCamera"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ESafetyCamera:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 72
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "ETravelGuide"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ETravelGuide:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 73
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EBuilding"

    invoke-direct {v0, v1, v6}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EBuilding:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 74
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "ETraffic"

    invoke-direct {v0, v1, v7}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ETraffic:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 75
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EWeather"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EWeather:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 76
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EHumanVoice"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EHumanVoice:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 77
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EComputerVoice"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EComputerVoice:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 78
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EColorScheme"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EColorScheme:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 79
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EDriveAndWalk"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EDriveAndWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 80
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EWalk"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 81
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EAdvanceGuidance"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EAdvanceGuidance:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 82
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "ESatelliteImagery"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ESatelliteImagery:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 83
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    const-string v1, "EAll"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    .line 69
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ERoadMap:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ESafetyCamera:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ETravelGuide:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EBuilding:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ETraffic:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EWeather:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EHumanVoice:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EComputerVoice:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EColorScheme:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EDriveAndWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EWalk:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EAdvanceGuidance:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->ESatelliteImagery:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->EAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TExtrasType;

    return-object v0
.end method
