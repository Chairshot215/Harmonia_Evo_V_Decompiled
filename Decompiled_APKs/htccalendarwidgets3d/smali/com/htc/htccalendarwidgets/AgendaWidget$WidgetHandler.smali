.class Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;
.super Ljava/lang/Object;
.source "AgendaWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/htccalendarwidgets/AgendaWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0x1f42

    const/16 v8, 0x1f41

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 940
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1071
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 942
    :pswitch_1
    const-string v4, "HTCWidget_AgendaWidget"

    const-string v5, "handleMessage - sMSG_PAUSE"

    invoke-static {v4, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1002(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    goto :goto_0

    .line 948
    :pswitch_2
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v4, "handleMessage - sMSG_RESUME"

    invoke-static {v2, v4}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1002(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 951
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->bNeedRefreshCalendar:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 952
    :cond_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    const/16 v4, 0x1f48

    invoke-virtual {v2, v4}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 953
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    const/16 v4, 0x1f44

    invoke-virtual {v2, v4}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 956
    :cond_2
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    const/16 v4, 0x1b5b

    const-wide/16 v5, 0x5dc

    invoke-interface {v2, v4, v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto :goto_0

    .line 960
    :pswitch_3
    const-string v4, "HTCWidget_AgendaWidget"

    const-string v5, "handleMessage - sMSG_RESUME_DELAY"

    invoke-static {v4, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedCheckTime:Z
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 962
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v4

    const/16 v5, 0x1b5d

    invoke-interface {v4, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 964
    :cond_3
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->bNeedRefreshCalendar:Z
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 965
    :cond_4
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbInitialize:Z
    invoke-static {v4, v3}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1102(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 966
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbEventChanged:Z
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1702(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 967
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1202(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 968
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->bNeedRefreshCalendar:Z
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1302(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 969
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    const/16 v4, 0x1b5c

    invoke-interface {v2, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 970
    :cond_5
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 971
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 972
    :cond_6
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 973
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 979
    :pswitch_4
    const-string v4, "HTCWidget_AgendaWidget"

    const-string v5, "handleMessage - sMSG_QUERY_EVENT"

    invoke-static {v4, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->goToToday()V

    .line 982
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 983
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v4

    const/16 v5, 0x1f43

    invoke-virtual {v4, v5}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 985
    :cond_7
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mSelectedList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Ljava/util/ArrayList;

    move-result-object v6

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->startQuery(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v4, v5, v6}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2100(Lcom/htc/htccalendarwidgets/AgendaWidget;Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 986
    .local v1, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 987
    .local v0, size:I
    if-nez v0, :cond_9

    .line 988
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2, v7}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$902(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 989
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2, v7}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$802(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 998
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 999
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 990
    :cond_9
    if-ne v0, v3, :cond_a

    .line 991
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v4, v7}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$802(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 992
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$902(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    goto :goto_1

    .line 993
    :cond_a
    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    .line 994
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$802(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    .line 995
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$902(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    goto :goto_1

    .line 1003
    :cond_b
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1011
    .end local v0           #size:I
    .end local v1           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;>;"
    :pswitch_5
    const-string v4, "HTCWidget_AgendaWidget"

    const-string v5, "handleMessage - sMSG_CHECK_TIME"

    invoke-static {v4, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1013
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedCheckTime:Z
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1602(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    goto/16 :goto_0

    .line 1017
    :cond_c
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedCheckTime:Z
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1602(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 1018
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->checkTime()V

    goto/16 :goto_0

    .line 1058
    :pswitch_6
    const-string v4, "HTCWidget_AgendaWidget"

    const-string v5, "handleMessage - sMSG_CHECK_TIME"

    invoke-static {v4, v5}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->releaseControl()V
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2200(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    .line 1060
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->initLayout()V
    invoke-static {v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2300(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    .line 1061
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mOrientationCount:I
    invoke-static {v5}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2400(Lcom/htc/htccalendarwidgets/AgendaWidget;)I

    move-result v5

    if-le v5, v3, :cond_d

    :goto_2
    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbIsFirstOrientation:Z
    invoke-static {v4, v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1202(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 1062
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z
    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1802(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 1064
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$WidgetHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    const/16 v4, 0x1b59

    invoke-interface {v2, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    .line 1061
    goto :goto_2

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x1b59
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
