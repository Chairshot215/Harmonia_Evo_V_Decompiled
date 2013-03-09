.class public Lcom/htc/usage/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/usage/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/htc/usage/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1468
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1462
    iput-boolean v1, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1463
    iput-boolean v1, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1469
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 1470
    new-instance v0, Lcom/htc/usage/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/htc/usage/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/htc/usage/DataUsageSummary$CycleChangeItem;

    .line 1471
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/htc/usage/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 1485
    iget-boolean v0, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/htc/usage/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1488
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/htc/usage/DataUsageSummary$CycleItem;)I
    .locals 4
    .parameter "target"

    .prologue
    .line 1495
    if-eqz p1, :cond_2

    .line 1496
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 1497
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1498
    invoke-virtual {p0, v1}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/usage/DataUsageSummary$CycleItem;

    .line 1499
    .local v2, item:Lcom/htc/usage/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/htc/usage/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1497
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1501
    :cond_1
    invoke-virtual {v2, p1}, Lcom/htc/usage/DataUsageSummary$CycleItem;->compareTo(Lcom/htc/usage/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1506
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/htc/usage/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .parameter "possible"

    .prologue
    .line 1474
    iput-boolean p1, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1475
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1476
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1479
    iput-boolean p1, p0, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1480
    invoke-direct {p0}, Lcom/htc/usage/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1481
    return-void
.end method
