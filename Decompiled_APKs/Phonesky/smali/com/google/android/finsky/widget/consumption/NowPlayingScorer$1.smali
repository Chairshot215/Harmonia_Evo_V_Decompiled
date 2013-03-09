.class final Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$1;
.super Ljava/lang/Object;
.source "NowPlayingScorer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;
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
        "Lcom/google/android/finsky/services/ConsumptionAppDoc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/services/ConsumptionAppDoc;Lcom/google/android/finsky/services/ConsumptionAppDoc;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .line 61
    check-cast p1, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$1;->compare(Lcom/google/android/finsky/services/ConsumptionAppDoc;Lcom/google/android/finsky/services/ConsumptionAppDoc;)I

    move-result v0

    return v0
.end method
