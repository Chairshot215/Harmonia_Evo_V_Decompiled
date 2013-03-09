.class Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "AbsMonthViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;


# direct methods
.method constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x2a

    const/4 v9, 0x1

    .line 771
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    .line 772
    .local v2, listItem:Lcom/htc/fusion/fx/controls/FxListItem;
    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v6

    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v7, v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v5, v6, 0x3

    .line 773
    .local v5, month_index:I
    if-gez v5, :cond_0

    .line 774
    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    rem-int/lit8 v5, v6, 0x3

    .line 777
    :cond_0
    iget v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v6, :cond_6

    .line 779
    sget-object v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create: Month:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->title_:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v4, 0x0

    .line 782
    .local v4, monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;

    .line 783
    .local v3, m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    invoke-virtual {v3, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->isListItemEqual(Lcom/htc/fusion/fx/controls/FxListItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 784
    move-object v4, v3

    .line 789
    .end local v3           #m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    :cond_2
    if-nez v4, :cond_3

    .line 790
    new-instance v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;

    .end local v4           #monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {v4, v6, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 791
    .restart local v4       #monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v10, :cond_4

    .line 795
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->setGridItem(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V
    invoke-static {v6, v4, v5, v0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$500(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_4
    sget-object v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Viewport index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    :cond_5
    :goto_1
    return-void

    .line 799
    :cond_6
    iget v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-ne v6, v9, :cond_7

    .line 800
    sget-object v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FxListItemEventType.ITEM_DESTROYED, msg.listItem.getIndex(); : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 801
    :cond_7
    iget v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v7, 0x16

    if-ne v6, v7, :cond_c

    .line 802
    sget-object v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Refresh update: Month:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->title_:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", item index :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v4, 0x0

    .line 805
    .restart local v4       #monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;

    .line 806
    .restart local v3       #m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    invoke-virtual {v3, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;->isListItemEqual(Lcom/htc/fusion/fx/controls/FxListItem;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 807
    move-object v4, v3

    .line 812
    .end local v3           #m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    :cond_9
    if-nez v4, :cond_a

    .line 813
    new-instance v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;

    .end local v4           #monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {v4, v6, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/fusion/fx/controls/FxListItem;)V

    .line 814
    .restart local v4       #monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v10, :cond_b

    .line 818
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->refreshGridItem(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V
    invoke-static {v6, v4, v5, v0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$600(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;II)V

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 821
    :cond_b
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v7, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    invoke-static {v6}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 822
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #monthListItem:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthListItem;
    :cond_c
    iget v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v7, 0x17

    if-ne v6, v7, :cond_5

    .line 823
    sget-object v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v7, "FxListItemEventType.ANIMATE_REFRESH_COMPLETE"

    invoke-static {v6, v7}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 768
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$3;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
