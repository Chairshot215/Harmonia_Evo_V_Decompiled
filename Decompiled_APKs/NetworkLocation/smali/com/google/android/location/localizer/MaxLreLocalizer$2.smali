.class final Lcom/google/android/location/localizer/MaxLreLocalizer$2;
.super Ljava/lang/Object;
.source "MaxLreLocalizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/MaxLreLocalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/location/data/Pair",
        "<",
        "Ljava/lang/Long;",
        "Lcom/google/android/location/data/WifiApPosition;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/location/data/Pair;Lcom/google/android/location/data/Pair;)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;",
            "Lcom/google/android/location/data/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, first:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    .local p2, second:Lcom/google/android/location/data/Pair;,"Lcom/google/android/location/data/Pair<Ljava/lang/Long;Lcom/google/android/location/data/WifiApPosition;>;"
    iget-object v0, p2, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/data/WifiApPosition;

    #calls: Lcom/google/android/location/localizer/MaxLreLocalizer;->qualityMetric(Lcom/google/android/location/data/WifiApPosition;)D
    invoke-static {v0}, Lcom/google/android/location/localizer/MaxLreLocalizer;->access$000(Lcom/google/android/location/data/WifiApPosition;)D

    move-result-wide v1

    iget-object v0, p1, Lcom/google/android/location/data/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/data/WifiApPosition;

    #calls: Lcom/google/android/location/localizer/MaxLreLocalizer;->qualityMetric(Lcom/google/android/location/data/WifiApPosition;)D
    invoke-static {v0}, Lcom/google/android/location/localizer/MaxLreLocalizer;->access$000(Lcom/google/android/location/data/WifiApPosition;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    check-cast p1, Lcom/google/android/location/data/Pair;

    .end local p1
    check-cast p2, Lcom/google/android/location/data/Pair;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/MaxLreLocalizer$2;->compare(Lcom/google/android/location/data/Pair;Lcom/google/android/location/data/Pair;)I

    move-result v0

    return v0
.end method
