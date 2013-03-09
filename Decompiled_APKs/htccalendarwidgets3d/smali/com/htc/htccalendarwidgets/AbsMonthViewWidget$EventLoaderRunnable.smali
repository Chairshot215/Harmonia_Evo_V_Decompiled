.class Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;
.super Ljava/lang/Object;
.source "AbsMonthViewWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLoaderRunnable"
.end annotation


# instance fields
.field private mJulianDay:I

.field private mQueryEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessFlag:Z

.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Ljava/util/ArrayList;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "julianDay"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1705
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1706
    iput-object p2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mQueryEvents:Ljava/util/ArrayList;

    .line 1707
    iput p3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mJulianDay:I

    .line 1708
    iput-boolean p4, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mSuccessFlag:Z

    .line 1709
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x1f

    .line 1712
    sget-object v8, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received reloadEvent() callback, callback : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mSuccessFlag:Z

    if-eqz v7, :cond_0

    const-string v7, "success"

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mQueryEvents:Ljava/util/ArrayList;

    iput-object v8, v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEvents:Ljava/util/ArrayList;

    .line 1714
    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mQueryEvents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1716
    .local v5, numEvents:I
    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v7, v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 1717
    sget-object v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v8, "reloadEvents, mMonthList == null, widget should already be destroy"

    invoke-static {v7, v8}, Lcom/htc/htccalendarwidgets/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    :goto_1
    return-void

    .line 1712
    .end local v5           #numEvents:I
    :cond_0
    const-string v7, "cancel"

    goto :goto_0

    .line 1721
    .restart local v5       #numEvents:I
    :cond_1
    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v7, v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    .line 1723
    .local v4, m:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v10, :cond_2

    .line 1724
    iget-object v7, v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->eventDay:[Z

    aput-boolean v12, v7, v2

    .line 1723
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1728
    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_9

    .line 1729
    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mQueryEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccalendarwidgets/Event;

    .line 1730
    .local v1, event:Lcom/htc/htccalendarwidgets/Event;
    iget v7, v1, Lcom/htc/htccalendarwidgets/Event;->startDay:I

    iget v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mJulianDay:I

    sub-int v6, v7, v8

    .line 1731
    .local v6, startDay:I
    iget v7, v1, Lcom/htc/htccalendarwidgets/Event;->endDay:I

    iget v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->mJulianDay:I

    sub-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 1732
    .local v0, endDay:I
    if-lt v6, v10, :cond_3

    if-ltz v0, :cond_8

    .line 1733
    :cond_3
    if-gez v6, :cond_4

    .line 1734
    const/4 v6, 0x0

    .line 1736
    :cond_4
    if-le v6, v10, :cond_5

    .line 1737
    const/16 v6, 0x1f

    .line 1739
    :cond_5
    if-gez v0, :cond_6

    .line 1740
    const/4 v0, 0x0

    .line 1742
    :cond_6
    if-le v0, v10, :cond_7

    .line 1743
    const/16 v0, 0x1f

    .line 1745
    :cond_7
    move v3, v6

    .local v3, j:I
    :goto_4
    if-ge v3, v0, :cond_8

    .line 1746
    iget-object v7, v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->eventDay:[Z

    aput-boolean v11, v7, v3

    .line 1745
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1728
    .end local v3           #j:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1752
    .end local v0           #endDay:I
    .end local v1           #event:Lcom/htc/htccalendarwidgets/Event;
    .end local v6           #startDay:I
    :cond_9
    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v7, v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v7, v11, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1753
    sget-object v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update event, index:1, month:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->title_:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    iget-object v7, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v7, v7, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    iget-object v8, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v8, v8, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v9, 0x1117e

    iget-object v10, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$EventLoaderRunnable;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v10, v10, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    rem-int/lit8 v10, v10, 0x3

    invoke-virtual {v8, v9, v10, v12}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
