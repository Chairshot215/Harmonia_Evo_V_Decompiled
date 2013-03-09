.class public final enum Lcom/google/android/location/data/LocatorResult$ResultStatus;
.super Ljava/lang/Enum;
.source "LocatorResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/data/LocatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/location/data/LocatorResult$ResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/location/data/LocatorResult$ResultStatus;

.field public static final enum CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

.field public static final enum NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

.field public static final enum OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/data/LocatorResult$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    .line 19
    new-instance v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;

    const-string v1, "NO_LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/data/LocatorResult$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    .line 20
    new-instance v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;

    const-string v1, "CACHE_MISS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/location/data/LocatorResult$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/location/data/LocatorResult$ResultStatus;

    sget-object v1, Lcom/google/android/location/data/LocatorResult$ResultStatus;->OK:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/data/LocatorResult$ResultStatus;->NO_LOCATION:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/data/LocatorResult$ResultStatus;->CACHE_MISS:Lcom/google/android/location/data/LocatorResult$ResultStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;->$VALUES:[Lcom/google/android/location/data/LocatorResult$ResultStatus;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/data/LocatorResult$ResultStatus;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/data/LocatorResult$ResultStatus;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/location/data/LocatorResult$ResultStatus;->$VALUES:[Lcom/google/android/location/data/LocatorResult$ResultStatus;

    invoke-virtual {v0}, [Lcom/google/android/location/data/LocatorResult$ResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/data/LocatorResult$ResultStatus;

    return-object v0
.end method
