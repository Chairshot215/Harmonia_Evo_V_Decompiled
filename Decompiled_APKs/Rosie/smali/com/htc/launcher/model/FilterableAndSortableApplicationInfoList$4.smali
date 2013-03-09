.class final Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$4;
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
    .line 396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I
    .locals 3
    .parameter "l"
    .parameter "r"

    .prologue
    .line 400
    iget v1, p2, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    iget v2, p1, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    sub-int v0, v1, v2

    .line 401
    .local v0, ret:I
    if-nez v0, :cond_0

    .line 403
    sget-object v1, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->REAL_ALPHABET:Ljava/util/Comparator;

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 405
    .end local v0           #ret:I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 396
    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/htc/launcher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$4;->compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
