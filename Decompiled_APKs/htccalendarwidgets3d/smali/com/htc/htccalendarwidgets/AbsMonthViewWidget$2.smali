.class Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;
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
        "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
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
    .line 730
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 732
    iget v0, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->selectedIndex:I

    .line 734
    .local v0, index:I
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 735
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flick start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 737
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flick end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_2
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_5

    .line 739
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECTED_INDEX_CHANGED:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_0

    .line 744
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    if-ge v0, v2, :cond_3

    .line 745
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v1, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    .line 746
    .local v1, t:Landroid/text/format/Time;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 747
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateMonthData(Landroid/text/format/Time;)V
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$200(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Landroid/text/format/Time;)V

    .line 757
    :goto_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput v0, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    .line 758
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->selectedIndex:I

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v5, v5, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->title_:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 759
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->reloadEvents()V

    goto/16 :goto_0

    .line 748
    .end local v1           #t:Landroid/text/format/Time;
    :cond_3
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    if-le v0, v2, :cond_4

    .line 749
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v1, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    .line 750
    .restart local v1       #t:Landroid/text/format/Time;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 751
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateMonthData(Landroid/text/format/Time;)V
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$200(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Landroid/text/format/Time;)V

    goto :goto_1

    .line 753
    .end local v1           #t:Landroid/text/format/Time;
    :cond_4
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v1, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    .line 754
    .restart local v1       #t:Landroid/text/format/Time;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_1

    .line 760
    .end local v1           #t:Landroid/text/format/Time;
    :cond_5
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-ne v2, v5, :cond_6

    .line 761
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->surpressHostSlide(Z)V
    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$300(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Z)V

    goto/16 :goto_0

    .line 762
    :cond_6
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-ne v2, v7, :cond_0

    .line 763
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->surpressHostSlide(Z)V
    invoke-static {v2, v6}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$400(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 730
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$2;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method
