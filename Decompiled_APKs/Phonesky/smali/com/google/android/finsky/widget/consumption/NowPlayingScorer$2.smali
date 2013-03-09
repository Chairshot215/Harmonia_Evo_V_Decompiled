.class final Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$2;
.super Ljava/lang/Object;
.source "NowPlayingScorer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingScorer;->score(Ljava/util/List;IJ)Ljava/util/List;
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
        "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$scores:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$2;->val$scores:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$2;->val$scores:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$2;->val$scores:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    check-cast p1, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingScorer$2;->compare(Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;)I

    move-result v0

    return v0
.end method
