.class Lcom/google/android/location/localizer/WifiLocationEstimator$ByMacAddress;
.super Ljava/lang/Object;
.source "WifiLocationEstimator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/WifiLocationEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ByMacAddress"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/localizer/WifiLocationEstimator;


# direct methods
.method private constructor <init>(Lcom/google/android/location/localizer/WifiLocationEstimator;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$ByMacAddress;->this$0:Lcom/google/android/location/localizer/WifiLocationEstimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/localizer/WifiLocationEstimator;Lcom/google/android/location/localizer/WifiLocationEstimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/WifiLocationEstimator$ByMacAddress;-><init>(Lcom/google/android/location/localizer/WifiLocationEstimator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getMac()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->getMac()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    check-cast p1, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .end local p1
    check-cast p2, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/WifiLocationEstimator$ByMacAddress;->compare(Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;)I

    move-result v0

    return v0
.end method
