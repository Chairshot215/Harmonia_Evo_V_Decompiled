.class final Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$2;
.super Ljava/lang/Object;
.source "ConsumptionAppDocList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 109
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, v3}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v1

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/services/ConsumptionAppDoc;

    invoke-virtual {v0}, Lcom/google/android/finsky/services/ConsumptionAppDoc;->getLastUpdateTimeMs()J

    move-result-wide v3

    sub-long v0, v1, v3

    long-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    check-cast p1, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList$2;->compare(Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;)I

    move-result v0

    return v0
.end method
