.class Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;
.super Ljava/lang/Object;
.source "AgendaListWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;Lcom/htc/htccalendarwidgets/AgendaListWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x15b6

    const/16 v6, 0x15b4

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1293
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1403
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 1295
    :pswitch_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage - sMSG_PAUSE"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1202(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1297
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15b5

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1298
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1299
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1300
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15b8

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1301
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1302
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15ba

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    goto :goto_0

    .line 1305
    :pswitch_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage - sMSG_RESUME"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1307
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bWidgetDestroy:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1202(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1313
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbInitialize:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshCalendar:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1314
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    const/16 v2, 0x1a0d

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1315
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffset(Landroid/graphics/PointF;I)V

    .line 1316
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedToBindWithListViewAgain:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2002(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1317
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbInitialize:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1502(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1318
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshCalendar:Z
    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1602(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1321
    :cond_2
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1322
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffset(Landroid/graphics/PointF;I)V

    .line 1325
    :cond_3
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-interface {v1, v7, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1328
    :pswitch_3
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage - sMSG_RESUME_DELAYED"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bInitCompleted:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1338
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bDoOrientation:Z
    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2302(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1339
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbCalendarChange:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mOrientation:I
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbTimeChanged:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2400(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1341
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    const/16 v2, 0x1a0b

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1342
    :cond_4
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbEventChanged:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2100(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedGoToday:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshEvent:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bNeedRefreshCalendar:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1600(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1343
    :cond_5
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    const/16 v2, 0x1a0c

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1344
    :cond_6
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedCheckTime:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1345
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1346
    :cond_7
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bShowUI:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;

    move-result-object v1

    const/16 v2, 0x1a10

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1351
    :pswitch_4
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage - sMSG_QUERY_EVENT"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15b8

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1353
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->goToToday()V

    .line 1354
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->renewCursor()V
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2900(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    goto/16 :goto_0

    .line 1358
    :pswitch_5
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleUiMessage - sMSG_CHECK_TIME"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15b9

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1360
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1361
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedCheckTime:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2702(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    goto/16 :goto_0

    .line 1363
    :cond_8
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedCheckTime:Z
    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2702(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1364
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->checkTime()V

    goto/16 :goto_0

    .line 1370
    :pswitch_6
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage - sMSG_EXTRACT_EVENTS"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x15ba

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1373
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 1376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 1378
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler$1;

    invoke-direct {v3, p0, v0}, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler$1;-><init>(Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;Landroid/database/Cursor;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3002(Lcom/htc/htccalendarwidgets/AgendaListWidget;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1384
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mExtractThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3000(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1389
    .end local v0           #c:Landroid/database/Cursor;
    :pswitch_7
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$500(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleMessage - sMSG_CONFIGURATION_CHANGED"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bInitCompleted:Z
    invoke-static {v1, v3}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2202(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1391
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->releaseControl()V
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    .line 1392
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaListWidget;->initLayout()V
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$3300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)V

    .line 1393
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mbNeedGoToday:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2502(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1394
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->bShowUI:Z
    invoke-static {v1, v4}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$2802(Lcom/htc/htccalendarwidgets/AgendaListWidget;Z)Z

    .line 1396
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaListWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaListWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaListWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccalendarwidgets/AgendaListWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaListWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1293
    :pswitch_data_0
    .packed-switch 0x15b4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
