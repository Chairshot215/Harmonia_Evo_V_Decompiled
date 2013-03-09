.class Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MonthViewAgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    .line 841
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 842
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const v5, 0x1117b

    const/4 v4, 0x0

    .line 847
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-boolean v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mIsShow:Z

    if-nez v1, :cond_0

    .line 882
    :goto_0
    return-void

    .line 850
    :cond_0
    if-nez p3, :cond_3

    .line 851
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    .line 852
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 853
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$500(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 854
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$500(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->clear()V

    .line 855
    :cond_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-virtual {v2, v5, v4, v4}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 860
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 861
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_4

    .line 862
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 863
    :cond_4
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$500(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 864
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->access$500(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->clear()V

    .line 865
    :cond_5
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v5, v3, v4}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 870
    :cond_6
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_7

    .line 871
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v5, v3, v4}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 872
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 873
    .local v0, msg:Landroid/os/Message;
    const v1, 0x13887

    iput v1, v0, Landroid/os/Message;->what:I

    .line 874
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 875
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 877
    .end local v0           #msg:Landroid/os/Message;
    :cond_7
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 878
    const/4 p3, 0x0

    .line 879
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    invoke-virtual {v2, v5, v4, v4}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 880
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    iget-object v1, v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v2, 0x11179

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
