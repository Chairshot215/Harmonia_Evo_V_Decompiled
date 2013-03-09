.class final Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$1;
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
    .line 358
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I
    .locals 4
    .parameter "l"
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 362
    sget-object v2, Lcom/htc/launcher/Utilities;->sCollator:Ljava/text/Collator;

    iget-object v0, p1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v3, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/htc/launcher/FxShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    check-cast p1, Lcom/htc/launcher/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/htc/launcher/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$1;->compare(Lcom/htc/launcher/ApplicationInfo;Lcom/htc/launcher/ApplicationInfo;)I

    move-result v0

    return v0
.end method
