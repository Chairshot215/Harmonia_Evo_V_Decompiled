.class public Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;
.super Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;
.source "MonthViewAgendaWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;,
        Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

.field protected mAgendaEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mAgendaEventList_temp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

.field protected mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mCursorCount:I

.field protected mExtractThread:Ljava/lang/Thread;

.field protected mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;

.field private mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessIndex:I

.field protected mQueryHandler:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 50
    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    .line 52
    iput v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCursorCount:I

    .line 53
    iput v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    .line 56
    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;

    .line 354
    new-instance v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$2;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$2;-><init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 388
    new-instance v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$3;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$3;-><init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 399
    new-instance v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$4;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$4;-><init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 839
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->extract(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->surpressHostSlide(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->surpressHostSlide(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;)Lcom/htc/htccalendarwidgets/FxTodayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    return-object v0
.end method

.method private checkEventChange(Lcom/htc/htccalendarwidgets/AgendaEvent;I)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 9
    .parameter "e"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 692
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 693
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    move-object v1, v4

    .line 746
    :goto_0
    return-object v1

    .line 697
    :cond_0
    move-object v1, p1

    .line 698
    .local v1, e_:Lcom/htc/htccalendarwidgets/AgendaEvent;
    const/4 v0, 0x0

    .line 699
    .local v0, bChanged:Z
    if-gez p2, :cond_5

    .line 701
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 702
    .local v2, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 703
    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 704
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 705
    :cond_3
    iget-boolean v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    iget-boolean v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-ne v5, v6, :cond_4

    iget v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    iget v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    if-ne v5, v6, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    iget-object v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 709
    const/4 v0, 0x0

    goto :goto_1

    .line 711
    :cond_4
    const/4 v0, 0x1

    .line 712
    move-object v1, v2

    goto :goto_1

    .line 717
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, p2, :cond_6

    iget-boolean v5, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mbTimeChanged:Z

    if-nez v5, :cond_6

    move-object v1, v4

    .line 718
    goto :goto_0

    .line 720
    :cond_6
    iget-object v5, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 721
    .restart local v2       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    .line 722
    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 723
    :cond_7
    const/4 v0, 0x0

    .line 736
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_8
    :goto_2
    if-nez v0, :cond_b

    iget-boolean v5, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mbTimeChanged:Z

    if-nez v5, :cond_b

    move-object v1, v4

    .line 737
    goto/16 :goto_0

    .line 724
    .restart local v2       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_9
    iget-boolean v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    iget-boolean v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-ne v5, v6, :cond_a

    iget v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    iget v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    if-ne v5, v6, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-wide v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    iget-object v5, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    iget-object v6, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 728
    const/4 v0, 0x0

    goto :goto_2

    .line 730
    :cond_a
    const/4 v0, 0x1

    .line 731
    move-object v1, v2

    goto :goto_2

    .line 739
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_b
    iget-boolean v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    iput-boolean v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    .line 740
    iget v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    iput v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    .line 741
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 742
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 743
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    .line 744
    iget-wide v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iput-wide v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    .line 745
    iget-object v4, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private extract(Landroid/database/Cursor;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->buildArray(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    if-eqz p1, :cond_0

    .line 575
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v1, 0x1117b

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Thread has been interrupted, do not send msg to update UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extractEvent(Landroid/database/Cursor;I)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 11
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 586
    new-instance v1, Lcom/htc/htccalendarwidgets/AgendaEvent;

    invoke-direct {v1}, Lcom/htc/htccalendarwidgets/AgendaEvent;-><init>()V

    .line 587
    .local v1, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    .line 588
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    .line 589
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 590
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 591
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    .line 592
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    .line 593
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    .line 594
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    .line 595
    iget v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    invoke-static {v9, v10, v4}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getColorChipBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 596
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-static {v4, v9, v10, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    .line 599
    iget-wide v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    invoke-direct {p0, v7, v8, p2}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->isEventExist(JI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    invoke-direct {p0, v1, p2}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->checkEventChange(Lcom/htc/htccalendarwidgets/AgendaEvent;I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v2

    .line 601
    .local v2, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-nez v2, :cond_1

    .line 602
    const/4 v1, 0x0

    .line 603
    const/4 v2, 0x0

    .line 636
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :goto_1
    return-object v2

    :cond_0
    move v4, v6

    .line 593
    goto :goto_0

    .line 605
    .restart local v2       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getEventDayInfo(Lcom/htc/htccalendarwidgets/AgendaEvent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    goto :goto_1

    .line 610
    .end local v2           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_2
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    .line 612
    const/4 v3, -0x1

    .line 613
    .local v3, pos:I
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 614
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 615
    if-lez v3, :cond_3

    .line 616
    iget-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    .line 619
    :cond_3
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->fType_:Ljava/lang/String;

    .line 620
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarSmallURL_:Ljava/lang/String;

    .line 621
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarLargeURL_:Ljava/lang/String;

    .line 623
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->fType_:Ljava/lang/String;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 624
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/htc/util/calendar/FacebookUtils;->getRawContactUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 625
    .local v0, contactUri:Landroid/net/Uri;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 626
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->contactId_:J

    .line 627
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->contactId_:J

    invoke-static {v4, v6, v7}, Lcom/htc/htccalendarwidgets/CalendarConstants;->getSpecifiedContactInfo(Landroid/content/Context;J)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoId_:J

    .line 630
    :cond_4
    iput-boolean v5, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->birthday_:Z

    .line 634
    .end local v0           #contactUri:Landroid/net/Uri;
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getEventDayInfo(Lcom/htc/htccalendarwidgets/AgendaEvent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    move-object v2, v1

    .line 636
    goto :goto_1

    .line 632
    :cond_5
    iput-boolean v6, v1, Lcom/htc/htccalendarwidgets/AgendaEvent;->birthday_:Z

    goto :goto_2
.end method

.method private getEventDayInfo(Lcom/htc/htccalendarwidgets/AgendaEvent;)Ljava/lang/String;
    .locals 11
    .parameter "e"

    .prologue
    .line 640
    iget-wide v1, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 641
    .local v1, begin:J
    iget-wide v3, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 642
    .local v3, end:J
    const/16 v5, 0x2000

    .line 643
    .local v5, flags:I
    iget-boolean v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0a000d

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    .line 645
    iget-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    .line 660
    :goto_0
    return-object v0

    .line 647
    :cond_0
    const v5, 0x10001

    .line 649
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    or-int/lit16 v5, v5, 0x80

    .line 653
    :cond_1
    iget-wide v7, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    iget-wide v9, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    iget-boolean v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    invoke-static {v7, v8, v9, v10, v0}, Lcom/htc/htccalendarwidgets/CalendarConstants;->isRegularMeeting(JJZ)Z

    move-result v6

    .line 655
    .local v6, isRegular:Z
    sub-long v7, v3, v1

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    if-nez v6, :cond_2

    .line 656
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    .line 660
    :goto_1
    iget-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/htccalendarwidgets/CalendarConstants;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    goto :goto_1
.end method

.method private isEventExist(JI)Z
    .locals 6
    .parameter "eId"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 664
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 665
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 688
    :cond_0
    :goto_0
    return v2

    .line 669
    :cond_1
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    if-gez p3, :cond_3

    .line 674
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 675
    .local v0, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    move v2, v3

    .line 676
    goto :goto_0

    .line 679
    .end local v0           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p3, :cond_0

    .line 682
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 683
    .restart local v0       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-wide v4, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move v2, v3

    .line 684
    goto :goto_0
.end method

.method private setAgendaDateTitle(Landroid/text/format/Time;)V
    .locals 12
    .parameter "time"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 795
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 796
    .local v4, t:Landroid/text/format/Time;
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    if-eqz v6, :cond_3

    .line 797
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    .line 801
    :goto_0
    invoke-virtual {v4, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-wide v8, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    .line 802
    .local v3, startDay:I
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v3}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, dstring:Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 804
    .local v2, endpos:I
    const-string v5, ""

    .line 805
    .local v5, weekday:Ljava/lang/String;
    const-string v0, ""

    .line 808
    .local v0, dateString:Ljava/lang/String;
    if-ltz v2, :cond_5

    .line 809
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 810
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 811
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 812
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 813
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    if-ge v6, v2, :cond_4

    .line 814
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 818
    :goto_1
    move-object v0, v1

    .line 826
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v6, :cond_1

    .line 827
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 828
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v11}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 830
    :cond_1
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v6, :cond_2

    .line 831
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 832
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v6, v11}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 834
    :cond_2
    return-void

    .line 799
    .end local v0           #dateString:Ljava/lang/String;
    .end local v1           #dstring:Ljava/lang/String;
    .end local v2           #endpos:I
    .end local v3           #startDay:I
    .end local v5           #weekday:Ljava/lang/String;
    :cond_3
    move-object v4, p1

    goto :goto_0

    .line 816
    .restart local v0       #dateString:Ljava/lang/String;
    .restart local v1       #dstring:Ljava/lang/String;
    .restart local v2       #endpos:I
    .restart local v3       #startDay:I
    .restart local v5       #weekday:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 821
    :cond_5
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 822
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 823
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method protected declared-synchronized buildArray(Landroid/database/Cursor;)Z
    .locals 17
    .parameter "cursor"

    .prologue
    .line 414
    monitor-enter p0

    if-nez p1, :cond_0

    .line 415
    const/4 v11, 0x0

    .line 568
    :goto_0
    monitor-exit p0

    return v11

    .line 420
    :cond_0
    :try_start_0
    sget-object v14, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "current cursor size:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v13, 0x0

    .line 423
    .local v13, position:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 424
    .local v4, cursor_size:I
    const/4 v3, 0x0

    .line 425
    .local v3, bHaveNewEvent:Z
    const/4 v11, 0x0

    .line 429
    .local v11, isInterrupted:Z
    if-nez v4, :cond_6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-eqz v14, :cond_6

    .line 430
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 432
    .local v6, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-object v14, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_1

    .line 433
    iget-object v14, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    const/4 v14, 0x0

    iput-object v14, v6, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 554
    .end local v6           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v14

    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_2

    .line 555
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_2
    const/16 p1, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15

    if-nez v15, :cond_1d

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v16, 0x1117b

    invoke-virtual/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 565
    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    .line 554
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    .end local v3           #bHaveNewEvent:Z
    .end local v4           #cursor_size:I
    .end local v11           #isInterrupted:Z
    .end local v13           #position:I
    :catchall_1
    move-exception v14

    monitor-exit p0

    throw v14

    .line 437
    .restart local v3       #bHaveNewEvent:Z
    .restart local v4       #cursor_size:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #isInterrupted:Z
    .restart local v13       #position:I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_4
    const/4 v14, 0x0

    .line 554
    if-eqz p1, :cond_5

    :try_start_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_5

    .line 555
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_5
    const/16 p1, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15

    if-nez v15, :cond_1e

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v16, 0x1117b

    invoke-virtual/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 565
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v11, v14

    .line 439
    goto/16 :goto_0

    .line 443
    :cond_6
    const/4 v12, 0x1

    .line 444
    .local v12, needResize:Z
    const/4 v5, 0x0

    .line 445
    .local v5, diff:I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-eqz v14, :cond_7

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 447
    .local v8, eventsize:I
    sget-object v14, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mAgendaEventList size:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", current cursor size:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    sub-int v5, v8, v4

    .line 449
    if-eq v8, v4, :cond_10

    .line 450
    const/4 v12, 0x1

    .line 455
    .end local v8           #eventsize:I
    :cond_7
    :goto_4
    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mbTimeChanged:Z

    if-eqz v14, :cond_b

    .line 457
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v14, :cond_11

    .line 458
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 473
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCursorCount:I

    if-gt v4, v14, :cond_a

    if-gez v5, :cond_14

    :cond_a
    const/4 v3, 0x1

    .line 474
    :goto_6
    if-nez v3, :cond_15

    .line 475
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    .line 482
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    .line 484
    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCursorCount:I

    .line 486
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    if-gez v14, :cond_c

    .line 487
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 490
    :cond_c
    if-nez v13, :cond_16

    .line 491
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 497
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mIsShow:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bDoOrientation:Z

    if-eqz v14, :cond_17

    .line 498
    :cond_e
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    .line 499
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bNeedRefreshEvent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    const/4 v14, 0x0

    .line 554
    if-eqz p1, :cond_f

    :try_start_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_f

    .line 555
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_f
    const/16 p1, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v15}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v15

    if-nez v15, :cond_1f

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v16, 0x1117b

    invoke-virtual/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 565
    :goto_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v11, v14

    .line 500
    goto/16 :goto_0

    .line 452
    .restart local v8       #eventsize:I
    :cond_10
    const/4 v12, 0x0

    goto :goto_4

    .line 460
    .end local v8           #eventsize:I
    :cond_11
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    if-nez v14, :cond_12

    .line 461
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    .line 462
    :cond_12
    if-lez v5, :cond_9

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 464
    .local v2, L:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_13

    .line 465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 467
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 469
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    .line 473
    .end local v2           #L:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    .end local v9           #i:I
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 477
    :cond_15
    const/4 v13, 0x0

    .line 478
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    goto/16 :goto_7

    .line 492
    :cond_16
    if-ge v13, v4, :cond_d

    .line 493
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_8

    .line 521
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->extractEvent(Landroid/database/Cursor;I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v7

    .line 523
    .local v7, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-nez v7, :cond_1a

    .line 524
    add-int/lit8 v13, v13, 0x1

    .line 525
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    .line 549
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    if-nez v14, :cond_18

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_18

    if-ne v13, v4, :cond_d

    .line 551
    :cond_18
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bNeedRefreshEvent:Z

    .line 552
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mbTimeChanged:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 554
    if-eqz p1, :cond_19

    :try_start_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_19

    .line 555
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_19
    const/16 p1, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v14}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    if-nez v14, :cond_20

    .line 559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v15, 0x1117b

    invoke-virtual {v14, v15}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 565
    :goto_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 529
    :cond_1a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-eqz v14, :cond_1b

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    if-gt v14, v15, :cond_1c

    .line 531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_1b
    :goto_d
    add-int/lit8 v13, v13, 0x1

    .line 539
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    .line 547
    sget-object v14, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "position:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mProcessIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sget-object v14, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "build array, mExtractThread.isInterrupted() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 532
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_1b

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_d

    .line 561
    .end local v5           #diff:I
    .end local v7           #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v12           #needResize:Z
    :cond_1d
    const/4 v11, 0x1

    .line 562
    :try_start_a
    sget-object v15, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Thread has been interrupted, do not send msg to update UI"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 561
    :cond_1e
    const/4 v11, 0x1

    .line 562
    sget-object v15, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Thread has been interrupted, do not send msg to update UI"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 561
    .restart local v5       #diff:I
    .restart local v12       #needResize:Z
    :cond_1f
    const/4 v11, 0x1

    .line 562
    sget-object v15, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v16, "Thread has been interrupted, do not send msg to update UI"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 561
    .restart local v7       #ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_20
    const/4 v11, 0x1

    .line 562
    sget-object v14, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Thread has been interrupted, do not send msg to update UI"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_c
.end method

.method public clearUp()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    invoke-virtual {v0}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->release()V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    .line 792
    :cond_0
    return-void
.end method

.method protected extractEvents(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 287
    sget-object v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleMessage - sMSG_EXTRACT_EVENTS"

    invoke-static {v1, v2}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object v0, p1

    .line 289
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$1;-><init>(Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;Landroid/database/Cursor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    .line 295
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 296
    return-void
.end method

.method protected getFxObjects()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-static {v3}, Lcom/htc/htccalendarwidgets/Components;->getWidgetSceneObjectMap(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 123
    .local v0, fxControlObj:[Lcom/htc/fusion/fx/FxObject;
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 124
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHeaderButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 125
    :cond_0
    aget-object v1, v0, v4

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 126
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 127
    :cond_1
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 128
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 130
    :cond_2
    iget v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mOrientation:I

    if-ne v1, v4, :cond_3

    .line 131
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 132
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 135
    :cond_3
    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 136
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMonthTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 137
    :cond_4
    const/4 v1, 0x5

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 138
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDayTextView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 139
    :cond_5
    const/4 v1, 0x6

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 140
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTiltTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 141
    :cond_6
    const/4 v1, 0x7

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    .line 142
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMonthViewList:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 143
    :cond_7
    const/16 v1, 0x8

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 144
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 145
    :cond_8
    const/16 v1, 0x9

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 146
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWeekdayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 147
    :cond_9
    const/16 v1, 0xa

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 148
    sget-boolean v1, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDayView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 150
    :cond_a
    const/16 v1, 0xb

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDay0:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 151
    const/16 v1, 0xc

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDay1:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 152
    const/16 v1, 0xd

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDay2:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 153
    const/16 v1, 0xe

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDay3:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 154
    const/16 v1, 0xf

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDay4:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 155
    const/16 v1, 0x10

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDay5:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 156
    const/16 v1, 0x11

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mDay6:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 157
    return-void
.end method

.method protected goToToday()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->goToToday()V

    .line 317
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mToday:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->setAgendaDateTitle(Landroid/text/format/Time;)V

    .line 318
    return-void
.end method

.method protected hideLoadMessage()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage - sUIMSG_HIDE_PROGRESS"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mIsShow:Z

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected initLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->initLayout()V

    .line 97
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 100
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "timeline.main_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 104
    sget-boolean v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_1
    iput-boolean v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bNeedToBindWithListViewAgain:Z

    .line 107
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "ListViewViewPort_List"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 108
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAgendaListView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-boolean v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mOrientation:I

    invoke-static {v1}, Lcom/htc/htccalendarwidgets/Components;->getWidgetHeaderListPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 114
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 117
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mExtractThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_1

    .line 84
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_2

    .line 87
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    .line 88
    :cond_2
    return-void
.end method

.method protected onGridItemClick(III)V
    .locals 5
    .parameter "row"
    .parameter "column"
    .parameter "index"

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getSelectedTimeFor(II)Landroid/text/format/Time;

    move-result-object v1

    .line 301
    .local v1, selectedTime:Landroid/text/format/Time;
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 305
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 306
    .local v0, msg:Landroid/os/Message;
    const v2, 0x13886

    iput v2, v0, Landroid/os/Message;->what:I

    .line 307
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v2, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 309
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mUiHandler:Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;

    const v3, 0x1117e

    invoke-virtual {v2, v3}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 310
    invoke-direct {p0, v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->setAgendaDateTitle(Landroid/text/format/Time;)V

    .line 311
    sget-object v2, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item 1: row:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", column:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clicked, mCurrentSelectedTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onPause()V

    .line 68
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->onResume()V

    .line 73
    return-void
.end method

.method protected releaseControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->releaseControl()V

    .line 163
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitboxListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 165
    :cond_0
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAppHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 167
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 169
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListViewEventListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 171
    :cond_1
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 173
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;

    if-eqz v0, :cond_2

    .line 174
    iput-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mListItemCallBackHandler:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$ListItemCallBackHandler;

    .line 175
    :cond_2
    return-void
.end method

.method protected releaseData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-super {p0}, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget;->releaseData()V

    .line 323
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->clearUp()V

    .line 325
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 327
    .local v0, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    iput-object v3, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 332
    .end local v0           #e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    :cond_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 334
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    .line 335
    return-void
.end method

.method protected renewCursor(Landroid/text/format/Time;)V
    .locals 12
    .parameter "date"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 243
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 244
    .local v9, time:Landroid/text/format/Time;
    if-nez p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v9, Landroid/text/format/Time;->year:I

    .line 247
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v9, Landroid/text/format/Time;->month:I

    .line 248
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mCurrentSelectedTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v9, Landroid/text/format/Time;->monthDay:I

    .line 254
    :goto_0
    iput v1, v9, Landroid/text/format/Time;->hour:I

    .line 255
    iput v1, v9, Landroid/text/format/Time;->minute:I

    .line 256
    iput v1, v9, Landroid/text/format/Time;->second:I

    .line 265
    :goto_1
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "renewCursor, time : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-wide v10, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    .line 269
    .local v8, julian_day:I
    sget-object v0, Landroid/provider/HtcExCalendar$ExInstances;->CONTENT_BY_JULIANDAY_URI:Landroid/net/Uri;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 271
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 273
    .local v5, selection:Ljava/lang/String;
    const-string v5, "visible=1"

    .line 280
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->cancelOperation(I)V

    .line 282
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mQueryHandler:Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;

    sget-object v4, Lcom/htc/htccalendarwidgets/CalendarConstants;->INSTANCES_PROJ:[Ljava/lang/String;

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void

    .line 250
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #julian_day:I
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iput v0, v9, Landroid/text/format/Time;->year:I

    .line 251
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iput v0, v9, Landroid/text/format/Time;->month:I

    .line 252
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, v9, Landroid/text/format/Time;->monthDay:I

    goto :goto_0

    .line 258
    :cond_1
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, v9, Landroid/text/format/Time;->year:I

    .line 259
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, v9, Landroid/text/format/Time;->month:I

    .line 260
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, v9, Landroid/text/format/Time;->monthDay:I

    .line 261
    iput v1, v9, Landroid/text/format/Time;->hour:I

    .line 262
    iput v1, v9, Landroid/text/format/Time;->minute:I

    .line 263
    iput v1, v9, Landroid/text/format/Time;->second:I

    goto :goto_1
.end method

.method public setAdapter(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    const/16 v3, 0xa

    .line 751
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->changeAdapter(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "main_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 763
    :cond_3
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    if-nez v0, :cond_5

    .line 766
    new-instance v0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->getWidgetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    .line 767
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bNeedToBindWithListViewAgain:Z

    if-eqz v0, :cond_4

    .line 768
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v1, v3}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    goto :goto_0

    .line 770
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bNeedToBindWithListViewAgain:Z

    goto :goto_0

    .line 773
    :cond_5
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 774
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bNeedToBindWithListViewAgain:Z

    if-eqz v0, :cond_6

    .line 775
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v1, v3}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->bNeedToBindWithListViewAgain:Z

    .line 778
    :cond_6
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAdapter:Lcom/htc/htccalendarwidgets/FxTodayAdapter;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->changeAdapter(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected showListView(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x1

    .line 200
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage - sUIMSG_UPDATE_HEADER"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 203
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 210
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mTitleView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;

    iget-object v0, v0, Lcom/htc/htccalendarwidgets/AbsMonthViewWidget$MonthData;->time_:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 211
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->hideLoadMessage()V

    goto :goto_0
.end method

.method protected showLoadMessages()V
    .locals 3

    .prologue
    .line 179
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleUiMessage - sUIMSG_SHOW_PROGRESS"

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 182
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mHintView:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mMainPageTimeline_child:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 186
    :cond_1
    return-void
.end method

.method protected updateListView()V
    .locals 3

    .prologue
    .line 215
    sget-object v0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUiMessage - sUIMSG_UI_UPDATE, mAgendaEventList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-boolean v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mIsShow:Z

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->hideLoadMessage()V

    .line 218
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    .line 225
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 227
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->setAdapter(Ljava/util/ArrayList;)V

    .line 229
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 237
    :cond_0
    :goto_1
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList_temp:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_0

    .line 231
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->setAdapter(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->hideLoadMessage()V

    .line 235
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/htc/htccalendarwidgets/MonthViewAgendaWidget;->setAdapter(Ljava/util/ArrayList;)V

    goto :goto_1
.end method
