.class final Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;
.super Ljava/lang/Object;
.source "FilterableAndSortableApplicationInfoList.java"

# interfaces
.implements Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$Classifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private classifiedNb:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 444
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;->classifiedNb:I

    return-void
.end method


# virtual methods
.method public classified(Lcom/htc/launcher/ApplicationInfo;)Z
    .locals 3
    .parameter "app"

    .prologue
    const/4 v0, 0x0

    .line 455
    iget v1, p1, Lcom/htc/launcher/FxShortcutInfo;->launchCount:I

    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    iget v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;->classifiedNb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;->classifiedNb:I

    .line 459
    iget v1, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;->classifiedNb:I

    sget v2, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList;->COUNT_PER_PAGE:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/model/FilterableAndSortableApplicationInfoList$7;->classifiedNb:I

    .line 451
    return-void
.end method
