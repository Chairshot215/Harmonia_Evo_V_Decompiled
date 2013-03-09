.class public final enum Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;
.super Ljava/lang/Enum;
.source "ContentStoreCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/ContentStoreCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentMaps:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentNavigation:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentSafetyCameras:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentSatelliteImagery:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentTraffic:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentTrafficGuide:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentVoices:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum EContentWeather:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

.field public static final enum ELicenseAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentAll"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 58
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentMaps"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentMaps:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 59
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentNavigation"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentNavigation:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 60
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentSafetyCameras"

    invoke-direct {v0, v1, v6}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentSafetyCameras:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 61
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentSatelliteImagery"

    invoke-direct {v0, v1, v7}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentSatelliteImagery:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 62
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentTraffic"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentTraffic:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 63
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentTrafficGuide"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentTrafficGuide:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 64
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentVoices"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentVoices:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 65
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "EContentWeather"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentWeather:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 66
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    const-string v1, "ELicenseAll"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->ELicenseAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    .line 56
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentMaps:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentNavigation:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentSafetyCameras:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentSatelliteImagery:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentTraffic:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentTrafficGuide:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentVoices:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->EContentWeather:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->ELicenseAll:Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    const-class v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->$VALUES:[Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/ContentStoreCmd$TContentType;

    return-object v0
.end method
