.class Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;
.super Ljava/lang/Object;
.source "AbsMonthViewWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1406
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;-><init>(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const v6, 0x13884

    const v10, 0x13883

    const v9, 0x13881

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1409
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1557
    :cond_0
    :goto_0
    return v4

    .line 1411
    :pswitch_0
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleMessage - sMSG_PAUSE"

    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    .line 1414
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    if-eqz v2, :cond_1

    .line 1415
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/EventLoader;->release()V

    .line 1417
    :cond_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    .line 1418
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13882

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1419
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1420
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1421
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13885

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1422
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13886

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1423
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1424
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13887

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    goto :goto_0

    .line 1429
    :pswitch_1
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleMessage - sMSG_RESUME"

    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v4, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    .line 1432
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbIsFirstOrientation:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbSetCollectionDone:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v5, v5, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1433
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sMSG_RESUME, setScrollOffset() mConCurrentPosition : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v6, v6, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v5, v5, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mConcurrentPosition:I

    new-instance v6, Landroid/graphics/PointF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v2, v5, v6, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 1437
    :cond_2
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    if-eqz v2, :cond_3

    .line 1438
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mEventLoader:Lcom/htc/htccalendarwidgets/EventLoader;

    invoke-virtual {v2, v4}, Lcom/htc/htccalendarwidgets/EventLoader;->startBackgroundThread(Z)V

    .line 1440
    :cond_3
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1442
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mInitialize:Z

    if-nez v2, :cond_4

    .line 1443
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x11178

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1444
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v4, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    .line 1445
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v4, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedShowTodayEvents:Z

    .line 1448
    :cond_4
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v5, 0x5dc

    invoke-interface {v2, v10, v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1452
    :pswitch_2
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleMessage - sMSG_RESUME_DELAY"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-eqz v2, :cond_0

    .line 1456
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bInitCompleted:Z

    if-eqz v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v4, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mInitialize:Z

    .line 1461
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbSetCollectionDone:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v3, v3, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1462
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->setCollection()V
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$700(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;)V

    .line 1465
    :cond_5
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    if-eqz v2, :cond_6

    .line 1466
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    .line 1469
    :cond_6
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bNeedDrawHeader:Z

    if-eqz v2, :cond_7

    .line 1470
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x11173

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1472
    :cond_7
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedCheckTime:Z

    if-eqz v2, :cond_8

    .line 1473
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1475
    :cond_8
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mNeedUpdateMonthData:Z

    if-eqz v2, :cond_9

    .line 1476
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13889

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 1478
    :cond_9
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    if-eqz v2, :cond_a

    .line 1479
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x11174

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1481
    :cond_a
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1483
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbTimeChanged:Z

    if-eqz v2, :cond_c

    .line 1484
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x11176

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1491
    :cond_b
    :goto_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedShowTodayEvents:Z

    if-eqz v2, :cond_0

    .line 1492
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13886

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 1485
    :cond_c
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bNeedRefreshEvent:Z

    if-eqz v2, :cond_e

    .line 1486
    :cond_d
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x11177

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1487
    :cond_e
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedCheckTime:Z

    if-eqz v2, :cond_b

    .line 1488
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_1

    .line 1498
    :pswitch_3
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleMessage - sMSG_CHECK_TIME"

    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-nez v2, :cond_f

    .line 1500
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v4, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedCheckTime:Z

    goto/16 :goto_0

    .line 1504
    :cond_f
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedCheckTime:Z

    .line 1505
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->checkTime()V

    goto/16 :goto_0

    .line 1510
    :pswitch_4
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleMessage - sMSG_QUERY_MONTH"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13885

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1512
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->reloadEvents()V

    goto/16 :goto_0

    .line 1516
    :pswitch_5
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleMessage - sMSG_QUERY_AGENDA"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13886

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1518
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/text/format/Time;

    .line 1519
    .local v1, time:Landroid/text/format/Time;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2, v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->renewCursor(Landroid/text/format/Time;)V

    .line 1522
    .end local v1           #time:Landroid/text/format/Time;
    :pswitch_6
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleMessage - sMSG_EXTRACT_EVENTS"

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v3, 0x13887

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1524
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1527
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 1528
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2, v0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->extractEvents(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 1532
    .end local v0           #c:Landroid/database/Cursor;
    :pswitch_7
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleMessage - sMSG_UPDATE_MONTH_DATA"

    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v5, v5, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mViewCalendar:Landroid/text/format/Time;

    #calls: Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->updateMonthData(Landroid/text/format/Time;)V
    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->access$200(Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;Landroid/text/format/Time;)V

    .line 1534
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v5, 0x11177

    invoke-virtual {v2, v5}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 1535
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mNeedUpdateMonthData:Z

    goto/16 :goto_0

    .line 1539
    :pswitch_8
    sget-object v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleMessage - sMSG_CONFIGURATION_CHANGED"

    invoke-static {v2, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->bInitCompleted:Z

    .line 1541
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mOrientationCount:I

    if-le v2, v4, :cond_10

    move v2, v3

    :goto_2
    iput-boolean v2, v5, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbIsFirstOrientation:Z

    .line 1542
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v3, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedGoToToday:Z

    .line 1543
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v4, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedUpdateEvents:Z

    .line 1544
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iput-boolean v4, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mbNeedLocateDefaultMonth:Z

    .line 1545
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->releaseControl()V

    .line 1546
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mMonthListItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1549
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->initLayout()V

    .line 1551
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-boolean v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mIsShow:Z

    if-eqz v2, :cond_0

    .line 1554
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;

    iget-object v2, v2, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    :cond_10
    move v2, v4

    .line 1541
    goto :goto_2

    .line 1409
    nop

    :pswitch_data_0
    .packed-switch 0x13881
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
