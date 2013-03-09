.class public Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
.super Ljava/lang/Object;
.source "AbsMonthViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MonthListItem"
.end annotation


# instance fields
.field mBtns:[Lcom/htc/fusion/fx/controls/FxButton;

.field mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

.field mIndImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

.field mTextLabels:[Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mTextLabelsLunar:[Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mTextLabelsLunarDay:[Lcom/htc/fusion/fx/controls/FxTextLabel;

.field mTodayImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 11
    .parameter
    .parameter "listItem"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x2a

    .line 1675
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1667
    new-array v3, v7, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1668
    new-array v3, v7, [Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabels:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1669
    new-array v3, v7, [Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunarDay:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1670
    new-array v3, v7, [Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunar:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1671
    new-array v3, v7, [Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mBtns:[Lcom/htc/fusion/fx/controls/FxButton;

    .line 1672
    new-array v3, v7, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTodayImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1673
    new-array v3, v7, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mIndImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1676
    iput-object p2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    .line 1677
    sget-object v3, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEMS:[Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 1678
    .local v0, days:[Lcom/htc/fusion/fx/FxObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 1679
    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->isSupportLunarResolution()Z
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$900(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1680
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v0, v1

    sget-object v5, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxObject;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v3, v4, v1

    .line 1681
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mDayTimeline:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v3, v3, v1

    sget-object v4, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME_LUNAR:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    .line 1682
    .local v2, textLabels:[Lcom/htc/fusion/fx/FxObject;
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabels:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v2, v8

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v3, v4, v1

    .line 1683
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunarDay:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v2, v9

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v3, v4, v1

    .line 1684
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabelsLunar:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v2, v10

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v3, v4, v1

    .line 1689
    .end local v2           #textLabels:[Lcom/htc/fusion/fx/FxObject;
    :goto_1
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mBtns:[Lcom/htc/fusion/fx/controls/FxButton;

    aget-object v3, v0, v1

    sget-object v5, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxObject;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxButton;

    aput-object v3, v4, v1

    .line 1690
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTodayImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v0, v1

    sget-object v5, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxObject;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v1

    .line 1691
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mIndImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v0, v1

    sget-object v5, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxObject;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v3, v4, v1

    .line 1678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1686
    :cond_0
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mTextLabels:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v0, v1

    sget-object v5, Lcom/htc/htccalendarwidgets/Components;->MONTH_GRID_ITEM_FX_CONTROL_NAME:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/FxObject;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v3, v4, v1

    goto :goto_1

    .line 1693
    :cond_1
    return-void
.end method


# virtual methods
.method public isListItemEqual(Lcom/htc/fusion/fx/controls/FxListItem;)Z
    .locals 1
    .parameter "listItem"

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxListItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
