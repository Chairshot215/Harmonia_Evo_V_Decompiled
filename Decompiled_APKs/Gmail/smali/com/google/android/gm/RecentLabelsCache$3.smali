.class Lcom/google/android/gm/RecentLabelsCache$3;
.super Ljava/lang/Object;
.source "RecentLabelsCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/RecentLabelsCache;->getSortedRecentCanonicalNames(Lcom/google/android/gm/provider/LabelList;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gm/provider/Label;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/RecentLabelsCache;


# direct methods
.method constructor <init>(Lcom/google/android/gm/RecentLabelsCache;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/gm/RecentLabelsCache$3;->this$0:Lcom/google/android/gm/RecentLabelsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/provider/Label;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 196
    invoke-virtual {p1}, Lcom/google/android/gm/provider/Label;->getLastTouched()J

    move-result-wide v0

    .line 197
    .local v0, lhTouched:J
    invoke-virtual {p2}, Lcom/google/android/gm/provider/Label;->getLastTouched()J

    move-result-wide v2

    .line 198
    .local v2, rhTouched:J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    check-cast p1, Lcom/google/android/gm/provider/Label;

    .end local p1
    check-cast p2, Lcom/google/android/gm/provider/Label;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/RecentLabelsCache$3;->compare(Lcom/google/android/gm/provider/Label;Lcom/google/android/gm/provider/Label;)I

    move-result v0

    return v0
.end method
