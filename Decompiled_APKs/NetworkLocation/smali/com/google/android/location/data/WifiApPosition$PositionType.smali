.class public final enum Lcom/google/android/location/data/WifiApPosition$PositionType;
.super Ljava/lang/Enum;
.source "WifiApPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/data/WifiApPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/location/data/WifiApPosition$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/location/data/WifiApPosition$PositionType;

.field public static final enum HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

.field public static final enum LOW_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

.field public static final enum MEDIUM_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

.field public static final enum UNKNOWN:Lcom/google/android/location/data/WifiApPosition$PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/google/android/location/data/WifiApPosition$PositionType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/data/WifiApPosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->UNKNOWN:Lcom/google/android/location/data/WifiApPosition$PositionType;

    new-instance v0, Lcom/google/android/location/data/WifiApPosition$PositionType;

    const-string v1, "LOW_CONFIDENCE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/data/WifiApPosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->LOW_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    new-instance v0, Lcom/google/android/location/data/WifiApPosition$PositionType;

    const-string v1, "MEDIUM_CONFIDENCE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/data/WifiApPosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->MEDIUM_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    new-instance v0, Lcom/google/android/location/data/WifiApPosition$PositionType;

    const-string v1, "HIGH_CONFIDENCE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/location/data/WifiApPosition$PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/location/data/WifiApPosition$PositionType;

    sget-object v1, Lcom/google/android/location/data/WifiApPosition$PositionType;->UNKNOWN:Lcom/google/android/location/data/WifiApPosition$PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/data/WifiApPosition$PositionType;->LOW_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/data/WifiApPosition$PositionType;->MEDIUM_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/location/data/WifiApPosition$PositionType;->HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->$VALUES:[Lcom/google/android/location/data/WifiApPosition$PositionType;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getHighestConfidenceType()Lcom/google/android/location/data/WifiApPosition$PositionType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/data/WifiApPosition$PositionType;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/google/android/location/data/WifiApPosition$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/WifiApPosition$PositionType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/data/WifiApPosition$PositionType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->$VALUES:[Lcom/google/android/location/data/WifiApPosition$PositionType;

    invoke-virtual {v0}, [Lcom/google/android/location/data/WifiApPosition$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/data/WifiApPosition$PositionType;

    return-object v0
.end method
