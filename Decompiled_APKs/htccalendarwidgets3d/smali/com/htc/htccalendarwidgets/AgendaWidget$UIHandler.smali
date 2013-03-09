.class Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;
.super Landroid/os/Handler;
.source "AgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/AgendaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/htccalendarwidgets/AgendaWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;-><init>(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 1077
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1297
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1080
    :pswitch_1
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "handleUiMessage - sUIMSG_SHOW_NO_EVENT_VIEW"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    const/4 v15, 0x0

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I
    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$302(Lcom/htc/htccalendarwidgets/AgendaWidget;I)I

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1091
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->hideLoadMessage()V
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2900(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0a000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto/16 :goto_0

    .line 1103
    :pswitch_2
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "handleUiMessage - sUIMSG_SHOW_EVENT_VIEW"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->hideLoadMessage()V
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2900(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    new-instance v15, Lcom/htc/htccalendarwidgets/AgendaEvent;

    invoke-direct {v15}, Lcom/htc/htccalendarwidgets/AgendaEvent;-><init>()V

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3502(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/htccalendarwidgets/AgendaEvent;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 1112
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v10

    .line 1113
    .local v10, e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-boolean v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    iput-boolean v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-object v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    iput-object v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarLargeURL_:Ljava/lang/String;

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-object v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    iput-object v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarSmallURL_:Ljava/lang/String;

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-wide v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    iput-wide v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-wide v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    iput-wide v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    iput v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    int-to-long v15, v15

    iput-wide v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-object v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->title_:Ljava/lang/String;

    iput-object v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-object v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_source_id_:Ljava/lang/String;

    iput-object v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    iget-object v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->facebook_type_:Ljava/lang/String;

    iput-object v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->fType_:Ljava/lang/String;

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1129
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "1 event"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    const/4 v15, 0x7

    const/16 v16, 0x3a

    iget v0, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getColorChipBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v15

    iget-object v15, v15, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    const/16 v16, 0x7

    const/16 v17, 0x3a

    const/16 v18, 0x0

    invoke-static/range {v15 .. v18}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mAgendaEvent:Lcom/htc/htccalendarwidgets/AgendaEvent;
    invoke-static {v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v15

    iget-object v15, v15, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1136
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->getTitle(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;
    invoke-static {v15, v10}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3600(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1138
    iget-wide v3, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    .line 1139
    .local v3, begin:J
    iget-wide v5, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    .line 1141
    .local v5, end:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    iget v15, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->id_:I

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventID:I
    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$302(Lcom/htc/htccalendarwidgets/AgendaWidget;I)I

    .line 1143
    iget-boolean v8, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    .line 1145
    .local v8, allDay:Z
    if-eqz v8, :cond_4

    .line 1146
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1147
    .local v13, time:Landroid/text/format/Time;
    const-wide/16 v15, 0x0

    move-wide v0, v15

    invoke-static {v3, v4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1151
    .end local v13           #time:Landroid/text/format/Time;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mStartTime:J
    invoke-static {v2, v3, v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$402(Lcom/htc/htccalendarwidgets/AgendaWidget;J)J

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mStopTime:J
    invoke-static {v2, v5, v6}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$502(Lcom/htc/htccalendarwidgets/AgendaWidget;J)J

    .line 1156
    if-eqz v8, :cond_7

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f0a000d

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1158
    .local v9, allDayString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1176
    .end local v9           #allDayString:Ljava/lang/String;
    :goto_1
    iget-object v2, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    sget-object v15, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TODAY:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne v2, v15, :cond_b

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0009

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1184
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v15, v3, v4}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getCountDownInfo(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1216
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    const/high16 v15, 0x4120

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto/16 :goto_0

    .line 1159
    :cond_7
    iget-boolean v2, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->regular_:Z

    if-eqz v2, :cond_8

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v14

    .line 1161
    .local v14, whenString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1163
    .end local v14           #whenString:Ljava/lang/String;
    :cond_8
    const v7, 0x10001

    .line 1164
    .local v7, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1165
    or-int/lit16 v7, v7, 0x80

    .line 1168
    :cond_9
    sub-long v15, v5, v3

    const-wide/32 v17, 0x5265c00

    div-long v15, v15, v17

    const-wide/16 v17, 0x0

    cmp-long v2, v15, v17

    if-lez v2, :cond_a

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v14

    .line 1173
    .restart local v14       #whenString:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1171
    .end local v14           #whenString:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #whenString:Ljava/lang/String;
    goto :goto_3

    .line 1186
    .end local v7           #flags:I
    .end local v14           #whenString:Ljava/lang/String;
    :cond_b
    iget-object v2, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    sget-object v15, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_TOMORROW:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne v2, v15, :cond_c

    .line 1187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;
    invoke-static {v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 1193
    :cond_c
    iget-object v2, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->category_:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    sget-object v15, Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;->EN_OTHER:Lcom/htc/util/calendar/HtcCalendarUtils$EventCategory;

    if-ne v2, v15, :cond_d

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    iget-wide v0, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v16, v0

    iget-boolean v0, v10, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->allday_:Z

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getDateString(JZ)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 1201
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1203
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mWhen:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->resetEventUI()V

    goto/16 :goto_2

    .line 1223
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v8           #allDay:Z
    :cond_f
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "2 events"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v16

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->getTitle(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3600(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v16

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->getTitle(Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3600(Lcom/htc/htccalendarwidgets/AgendaWidget;Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1229
    const v7, 0x10001

    .line 1230
    .restart local v7       #flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1231
    or-int/lit16 v7, v7, 0x80

    .line 1234
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v18 .. v18}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v18, v0

    invoke-static/range {v15 .. v19}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mResources:Landroid/content/res/Resources;
    invoke-static {v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3700(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0015

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1235
    .restart local v14       #whenString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$4000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v18 .. v18}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->end_:J

    move-wide/from16 v18, v0

    invoke-static/range {v15 .. v19}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " ("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->begin_:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lcom/htc/htccalendarwidgets/AgendaWidget;->getCountDownInfo(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$4100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1238
    const/4 v2, 0x7

    const/16 v15, 0x3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getColorChipBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1239
    .local v11, e1:Landroid/graphics/Bitmap;
    const/4 v2, 0x7

    const/16 v15, 0x3a

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v2, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$4200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1241
    const/4 v2, 0x7

    const/16 v15, 0x3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEvent:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    invoke-static/range {v16 .. v16}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$900(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;->color_:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v2, v15, v0}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getColorChipBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1242
    .local v12, e2:Landroid/graphics/Bitmap;
    const/4 v2, 0x7

    const/16 v15, 0x3a

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v2, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$4300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3100(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mCurrentEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3200(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mNextEventHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3300(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxHitbox;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$3400(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v2

    const/high16 v15, 0x41a0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto/16 :goto_0

    .line 1256
    .end local v7           #flags:I
    .end local v10           #e:Lcom/htc/util/calendar/HtcCalendarUtils$Appointment;
    .end local v11           #e1:Landroid/graphics/Bitmap;
    .end local v12           #e2:Landroid/graphics/Bitmap;
    .end local v14           #whenString:Ljava/lang/String;
    :pswitch_3
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "handleUiMessage - sUIMSG_DRAW_TODAY"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mIsShow:Z
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1000(Lcom/htc/htccalendarwidgets/AgendaWidget;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    const/4 v15, 0x1

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z
    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1802(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    goto/16 :goto_0

    .line 1262
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    const/4 v15, 0x0

    #setter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mbNeedGoToToday:Z
    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$1802(Lcom/htc/htccalendarwidgets/AgendaWidget;Z)Z

    .line 1264
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "handle sUIMSG_DRAW_TODAY"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->goToToday()V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->drawDate()V
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$4400(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    goto/16 :goto_0

    .line 1272
    :pswitch_4
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "handleUiMessage - sUIMSG_SHOW_PROGRESS"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->showLoadMessages()V
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$4500(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    goto/16 :goto_0

    .line 1277
    :pswitch_5
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "handleUiMessage - sUIMSG_HIDE_PROGRESS"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->hideLoadMessage()V
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2900(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    goto/16 :goto_0

    .line 1283
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #calls: Lcom/htc/htccalendarwidgets/AgendaWidget;->updateUI()V
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$4600(Lcom/htc/htccalendarwidgets/AgendaWidget;)V

    goto/16 :goto_0

    .line 1288
    :pswitch_7
    const-string v2, "HTCWidget_AgendaWidget"

    const-string v15, "handleUiMessage - sUIMSG_HIDE_EVENT_VIEW"

    invoke-static {v2, v15}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mEventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2800(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxDynamicImage;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1291
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTomorrow:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2500(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    #getter for: Lcom/htc/htccalendarwidgets/AgendaWidget;->mTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    invoke-static {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->access$2600(Lcom/htc/htccalendarwidgets/AgendaWidget;)Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaWidget$UIHandler;->this$0:Lcom/htc/htccalendarwidgets/AgendaWidget;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/AgendaWidget;->resetEventUI()V

    goto/16 :goto_0

    .line 1077
    :pswitch_data_0
    .packed-switch 0x1f41
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
