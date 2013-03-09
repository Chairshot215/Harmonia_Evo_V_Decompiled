.class public Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/usage/DataUsageSummary$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/htc/usage/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/htc/usage/net/UidDetailProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "insetSide"

    .prologue
    .line 1541
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1538
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1542
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/net/UidDetailProvider;

    iput-object v0, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/htc/usage/net/UidDetailProvider;

    .line 1543
    iput p2, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1544
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;)V
    .locals 14
    .parameter "stats"

    .prologue
    .line 1550
    const-string v8, "DataUsageSummary"

    const-string v9, "bindStats"

    invoke-static {v8, v9}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    iget-object v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1553
    new-instance v6, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    const/16 v8, 0x3e8

    invoke-direct {v6, v8}, Lcom/htc/usage/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1554
    .local v6, systemItem:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1556
    .local v4, knownUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/usage/DataUsageSummary$AppUsageItem;>;"
    const/4 v0, 0x0

    .line 1557
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    .line 1558
    .local v5, size:I
    :goto_0
    const-string v8, "DataUsageSummary"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NetworkStats size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 1560
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1562
    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1563
    .local v7, uid:I
    const/16 v8, 0x2710

    if-lt v7, v8, :cond_3

    const v8, 0x1869f

    if-gt v7, v8, :cond_3

    const/4 v2, 0x1

    .line 1565
    .local v2, isApp:Z
    :goto_2
    if-nez v2, :cond_0

    const/4 v8, -0x4

    if-eq v7, v8, :cond_0

    const/4 v8, -0x5

    if-ne v7, v8, :cond_4

    .line 1566
    :cond_0
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    .line 1567
    .local v3, item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    if-nez v3, :cond_1

    .line 1568
    new-instance v3, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    .end local v3           #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    invoke-direct {v3, v7}, Lcom/htc/usage/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1569
    .restart local v3       #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1570
    iget-object v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_1
    iget-wide v8, v3, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    .line 1559
    .end local v3           #item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1557
    .end local v1           #i:I
    .end local v2           #isApp:Z
    .end local v5           #size:I
    .end local v7           #uid:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1563
    .restart local v1       #i:I
    .restart local v5       #size:I
    .restart local v7       #uid:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1575
    .restart local v2       #isApp:Z
    :cond_4
    iget-wide v8, v6, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    .line 1576
    invoke-virtual {v6, v7}, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->addUid(I)V

    goto :goto_3

    .line 1580
    .end local v2           #isApp:Z
    .end local v7           #uid:I
    :cond_5
    iget-wide v8, v6, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 1581
    iget-object v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_6
    iget-object v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1585
    iget-object v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    iget-wide v8, v8, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    :goto_4
    iput-wide v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1586
    invoke-virtual {p0}, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1587
    return-void

    .line 1585
    :cond_7
    const-wide/16 v8, 0x0

    goto :goto_4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    iget-object v0, v0, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 1606
    if-nez p2, :cond_0

    .line 1607
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1609
    iget v6, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v6, :cond_0

    .line 1610
    iget v6, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v7, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v6, v5, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1614
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1616
    .local v3, context:Landroid/content/Context;
    const v6, 0x7f070003

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1617
    .local v0, appName:Landroid/widget/TextView;
    const v6, 0x7f070004

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1618
    .local v1, appUsage:Landroid/widget/TextView;
    const v6, 0x7f070005

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    .line 1621
    .local v2, appUsageProgress:Lcom/htc/widget/HtcProgressBar;
    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/usage/DataUsageSummary$AppUsageItem;

    .line 1622
    .local v4, item:Lcom/htc/usage/DataUsageSummary$AppUsageItem;
    iget-object v6, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/htc/usage/net/UidDetailProvider;

    invoke-static {v6, v4, p2}, Lcom/htc/usage/DataUsageSummary$UidDetailTask;->bindView(Lcom/htc/usage/net/UidDetailProvider;Lcom/htc/usage/DataUsageSummary$AppUsageItem;Landroid/view/View;)V

    .line 1624
    iget-wide v6, v4, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    invoke-static {v3, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    iget-wide v6, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mLargest:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, v4, Lcom/htc/usage/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/htc/usage/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 1627
    .local v5, percentTotal:I
    :cond_1
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 1629
    return-object p2
.end method
