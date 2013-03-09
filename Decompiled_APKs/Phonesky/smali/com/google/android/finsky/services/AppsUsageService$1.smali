.class final Lcom/google/android/finsky/services/AppsUsageService$1;
.super Ljava/lang/Object;
.source "AppsUsageService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/AppsUsageService;
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
        "Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 41
    iget-wide v0, p2, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->lastUsedTime:J

    iget-wide v2, p1, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;->lastUsedTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/services/AppsUsageService$1;->compare(Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;Lcom/google/android/finsky/services/AppsUsageService$PkgUsageContainer;)I

    move-result v0

    return v0
.end method
