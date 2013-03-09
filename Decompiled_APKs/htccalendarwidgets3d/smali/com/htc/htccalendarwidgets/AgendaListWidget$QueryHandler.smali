.class Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;


# direct methods
.method public constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1490
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    .line 1491
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1492
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/16 v3, 0x1a0e

    const/16 v5, 0x1a11

    const/4 v4, 0x0

    .line 1497
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    :goto_0
    return-void

    .line 1500
    :cond_0
    if-nez p3, :cond_1

    .line 1501
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1502
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1507
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1508
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v5, v3, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1510
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1511
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1512
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15ba

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1513
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1514
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 1516
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1517
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    const/16 v2, 0x1a10

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1520
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1521
    const/4 p3, 0x0

    .line 1522
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1523
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$QueryHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
