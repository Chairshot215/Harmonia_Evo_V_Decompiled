.class Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;
.super Ljava/lang/Object;
.source "WifiLocationEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/WifiLocationEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiInfo"
.end annotation


# instance fields
.field private intersectionCount:I

.field private final mac:Ljava/lang/Long;

.field private final position:Lcom/google/android/location/data/Position;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lcom/google/android/location/data/Position;)V
    .locals 1
    .parameter "mac"
    .parameter "position"

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->intersectionCount:I

    .line 596
    iput-object p1, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->mac:Ljava/lang/Long;

    .line 597
    iput-object p2, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->position:Lcom/google/android/location/data/Position;

    .line 598
    return-void
.end method


# virtual methods
.method public getIntersectionCount()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->intersectionCount:I

    return v0
.end method

.method public getMac()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->mac:Ljava/lang/Long;

    return-object v0
.end method

.method public getPosition()Lcom/google/android/location/data/Position;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->position:Lcom/google/android/location/data/Position;

    return-object v0
.end method

.method public incIntersectionCount()V
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->intersectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->intersectionCount:I

    .line 602
    return-void
.end method

.method public setIntersectionCount(I)V
    .locals 0
    .parameter "intersectionCount"

    .prologue
    .line 609
    iput p1, p0, Lcom/google/android/location/localizer/WifiLocationEstimator$WifiInfo;->intersectionCount:I

    .line 610
    return-void
.end method
