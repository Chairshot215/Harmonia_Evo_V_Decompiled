.class public Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;
.super Landroid/os/Handler;
.source "AbsMonthViewWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;


# direct methods
.method protected constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1561
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x13885

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1563
    move-object v0, p1

    .line 1565
    .local v0, message:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1642
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1568
    :pswitch_1
    sget-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleUiMessage - sUIMSG_DRAW_HEADER"

    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v1, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bNeedDrawHeader:Z

    if-eqz v1, :cond_1

    .line 1575
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v2, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bNeedDrawHeader:Z

    .line 1577
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->drawCalendarHeader()V

    goto :goto_0

    .line 1581
    :pswitch_2
    sget-object v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleUiMessage - sUIMSG_GOTO_TODAY"

    invoke-static {v3, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-nez v3, :cond_2

    .line 1583
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v1, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    goto :goto_0

    .line 1587
    :cond_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v2, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    .line 1588
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->goToToday()V

    goto :goto_0

    .line 1592
    :pswitch_3
    sget-object v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleUiMessage - sUIMSG_TIME_CHANGED"

    invoke-static {v3, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/htccalendarwidgets/CalendarConstants;->fetchSystemDateFormat(Landroid/content/Context;)V

    .line 1594
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-eqz v3, :cond_3

    .line 1595
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->goToToday()V

    .line 1596
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1599
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v1, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    if-eqz v1, :cond_0

    .line 1600
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v2, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    goto :goto_0

    .line 1602
    :cond_3
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v1, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbTimeChanged:Z

    goto :goto_0

    .line 1607
    :pswitch_4
    sget-object v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleUiMessage - sUIMSG_EVENT_CHANGED"

    invoke-static {v3, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-eqz v3, :cond_4

    .line 1610
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1611
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13886

    invoke-interface {v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1612
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v2, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    .line 1613
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v1, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v2, v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    goto/16 :goto_0

    .line 1616
    :cond_4
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v1, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    goto/16 :goto_0

    .line 1622
    :pswitch_5
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->showLoadMessages()V

    goto/16 :goto_0

    .line 1626
    :pswitch_6
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->hideLoadMessage()V

    goto/16 :goto_0

    .line 1630
    :pswitch_7
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateListView()V

    goto/16 :goto_0

    .line 1634
    :pswitch_8
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-lez v4, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->showListView(Z)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    .line 1638
    :pswitch_9
    sget-object v1, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleUiMessage - sUIMSG_UPDATE_MONTH"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateMonth()V
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$800(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    goto/16 :goto_0

    .line 1565
    nop

    :pswitch_data_0
    .packed-switch 0x11173
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
