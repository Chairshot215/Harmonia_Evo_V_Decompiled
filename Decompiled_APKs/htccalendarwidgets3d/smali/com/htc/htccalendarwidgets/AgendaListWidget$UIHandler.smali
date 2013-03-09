.class Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
.super Landroid/os/Handler;
.source "AgendaListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Lcom/htc/htccalendarwidgets/AgendaListWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1407
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x15b8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1409
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1480
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1411
    :pswitch_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleUiMessage - sUIMSG_TIME_CHANGED"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3400(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/htccalendarwidgets/CalendarConstants;->fetchSystemDateFormat(Landroid/content/Context;)V

    .line 1413
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->goToToday()V

    .line 1415
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1418
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z
    invoke-static {v1, v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2102(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    goto :goto_0

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z
    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2402(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    goto :goto_0

    .line 1427
    :pswitch_2
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleUiMessage - sUIMSG_EVENT_CHANGED"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1429
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->goToToday()V

    .line 1430
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1432
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedGoToday:Z
    invoke-static {v1, v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2502(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    goto :goto_0

    .line 1436
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z
    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2102(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    goto :goto_0

    .line 1441
    :pswitch_3
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleUiMessage - sUIMSG_SHOW_PROGRESS"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->showLoadMessages()V
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    goto :goto_0

    .line 1446
    :pswitch_4
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleUiMessage - sUIMSG_HIDE_PROGRESS"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->hideLoadMessage()V
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    goto/16 :goto_0

    .line 1451
    :pswitch_5
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "handleUiMessage - sUIMSG_UI_UPDATE"

    invoke-static {v0, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1453
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set data into mAgendaListView, position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1455
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->hideLoadMessage()V
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    .line 1456
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1457
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;
    invoke-static {v0, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3702(Lcom/htc/htccalendarwidgets/AgendaListWidget;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1460
    :goto_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;
    invoke-static {v2, v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3702(Lcom/htc/htccalendarwidgets/AgendaListWidget;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1461
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 1463
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->setAdapter(Ljava/util/ArrayList;Z)V

    .line 1465
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1459
    :cond_3
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_1

    .line 1467
    :cond_4
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->setAdapter(Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 1469
    :cond_5
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->hideLoadMessage()V
    invoke-static {v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    .line 1471
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaEventList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->setAdapter(Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 1476
    :pswitch_6
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUiMessage - sUIMSG_UPDATE_HEADER, arg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_6

    move v0, v1

    :cond_6
    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->showListView(Z)V
    invoke-static {v2, v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3800(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)V

    goto/16 :goto_0

    .line 1409
    nop

    :pswitch_data_0
    .packed-switch 0x1a0b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
