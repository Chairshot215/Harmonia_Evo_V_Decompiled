.class final Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$3;
.super Ljava/lang/Object;
.source "FilterableAndSortableApplicationInfoList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
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
        "Lcom/htc/launcher/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I
    .locals 8
    .parameter "l"
    .parameter "r"

    .prologue
    const-wide/16 v6, 0x0

    .line 385
    iget-wide v2, p2, Lcom/htc/launcher/FxShortcutInfo;->lastModifiedTime:J

    iget-wide v4, p1, Lcom/htc/launcher/FxShortcutInfo;->lastModifiedTime:J

    sub-long v0, v2, v4

    .line 386
    .local v0, ret:J
    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    .line 388
    sget-object v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 390
    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/htc/launcher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$3;->compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
