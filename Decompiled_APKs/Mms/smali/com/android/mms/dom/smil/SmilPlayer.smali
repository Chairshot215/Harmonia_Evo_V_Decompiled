.class public Lcom/android/mms/dom/smil/SmilPlayer;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;,
        Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field public static final MEDIA_TIME_UPDATED_EVENT:Ljava/lang/String; = "mediaTimeUpdated"

.field private static final TAG:Ljava/lang/String; = "SmilPlayer"

.field private static final TIMESLICE:I = 0xc8

.field private static mHandler:Landroid/os/Handler;

.field private static sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private static final sTimelineEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field private mActiveElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/ElementTime;",
            ">;"
        }
    .end annotation
.end field

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElement:I

.field private mCurrentSlide:I

.field private mCurrentTime:J

.field private mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

.field private mPlayerThread:Ljava/lang/Thread;

.field private mRoot:Lorg/w3c/dom/smil/ElementTime;

.field private mSlideToElement:[I

.field private mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$1;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer$1;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 88
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 258
    return-void
.end method

.method private declared-synchronized actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 532
    :goto_0
    monitor-exit p0

    return-void

    .line 518
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->beginElement()Z

    .line 519
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 526
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z

    .line 527
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized actionPause()V
    .locals 1

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->pauseActiveElements()V

    .line 553
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 554
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionReload()V
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadActiveSlide()V

    .line 568
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized actionSeekTo()V
    .locals 3

    .prologue
    .line 726
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 727
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->beginSmilDocument()V

    .line 728
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 729
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 730
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->seekActiveMedia()V

    .line 731
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 732
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    monitor-exit p0

    return-void

    .line 726
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized actionStop()V
    .locals 2

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V

    .line 559
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 560
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 562
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 563
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized beginSmilDocument()V
    .locals 3

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 390
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 389
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized endActiveElements()V
    .locals 3

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 468
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->endElement()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 470
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 462
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D
    .locals 6
    .parameter "element"

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 396
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    .line 400
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :goto_1
    monitor-exit p0

    return-wide v2

    .line 394
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    const-wide/high16 v2, -0x4010

    goto :goto_1

    .line 394
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;
    .locals 23
    .parameter "par"
    .parameter "offset"
    .parameter "maxOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementParallelTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v19, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 107
    .local v16, myBeginList:Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 108
    .local v5, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v6, v20, p1

    .line 109
    .local v6, beginOffset:D
    cmpl-double v20, v6, p3

    if-lez v20, :cond_0

    .line 151
    :goto_0
    return-object v19

    .line 113
    :cond_0
    new-instance v15, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 114
    .local v15, myBegin:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 121
    .local v18, myEndList:Lorg/w3c/dom/smil/TimeList;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 122
    .local v11, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v20

    add-double v12, v20, p1

    .line 123
    .local v12, endOffset:D
    cmpl-double v20, v12, p3

    if-lez v20, :cond_1

    .line 124
    move-wide/from16 v12, p3

    .line 126
    :cond_1
    new-instance v17, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 128
    .local v17, myEnd:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 130
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 131
    .local v10, children:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_2

    .line 132
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 133
    .local v8, child:Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v9

    .line 134
    .local v9, childTimeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 137
    .end local v8           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v9           #childTimeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sget-object v20, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    sub-double v20, v12, p1

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x447a

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementParallelTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 142
    .local v4, activeChildrenAtEnd:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_3

    .line 143
    new-instance v21, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/ElementTime;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 149
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 264
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer;->sPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method public static getPlayer(Landroid/os/Handler;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "handler"

    .prologue
    .line 269
    sput-object p0, Lcom/android/mms/dom/smil/SmilPlayer;->mHandler:Landroid/os/Handler;

    .line 270
    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    return-object v0
.end method

.method private static getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;
    .locals 25
    .parameter "seq"
    .parameter "offset"
    .parameter "maxOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementSequentialTimeContainer;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v21, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-wide/from16 v19, p1

    .line 160
    .local v19, orgOffset:D
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v16

    .line 165
    .local v16, myBeginList:Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 166
    .local v5, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v6, v22, p1

    .line 167
    .local v6, beginOffset:D
    cmpl-double v22, v6, p3

    if-lez v22, :cond_0

    .line 211
    :goto_0
    return-object v21

    .line 171
    :cond_0
    new-instance v15, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 172
    .local v15, myBegin:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v18

    .line 179
    .local v18, myEndList:Lorg/w3c/dom/smil/TimeList;
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v11

    .line 180
    .local v11, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v11}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v22

    add-double v12, v22, p1

    .line 181
    .local v12, endOffset:D
    cmpl-double v22, v12, p3

    if-lez v22, :cond_1

    .line 182
    move-wide/from16 v12, p3

    .line 184
    :cond_1
    new-instance v17, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 186
    .local v17, myEnd:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    move-wide/from16 p3, v12

    .line 189
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 190
    .local v10, children:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 191
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/smil/ElementTime;

    .line 192
    .local v8, child:Lorg/w3c/dom/smil/ElementTime;
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v9

    .line 193
    .local v9, childTimeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide p1

    .line 190
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 200
    .end local v8           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v9           #childTimeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    :cond_2
    sub-double v22, v12, v19

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;->getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 202
    .local v4, activeChildrenAtEnd:Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_3

    .line 203
    new-instance v23, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    invoke-interface {v4, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/ElementTime;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v12, v13, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 209
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;
    .locals 13
    .parameter "element"
    .parameter "offset"
    .parameter "maxOffset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/ElementTime;",
            "DD)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    if-eqz v11, :cond_0

    .line 217
    check-cast p0, Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    .end local p0
    invoke-static/range {p0 .. p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getParTimeline(Lorg/w3c/dom/smil/ElementParallelTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v10

    .line 252
    :goto_0
    return-object v10

    .line 218
    .restart local p0
    :cond_0
    instance-of v11, p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    if-eqz v11, :cond_1

    .line 219
    check-cast p0, Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    .end local p0
    invoke-static/range {p0 .. p4}, Lcom/android/mms/dom/smil/SmilPlayer;->getSeqTimeline(Lorg/w3c/dom/smil/ElementSequentialTimeContainer;DD)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    .line 222
    .restart local p0
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v10, timeline:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v1

    .line 225
    .local v1, beginList:Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_3

    .line 226
    invoke-interface {v1, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v0

    .line 227
    .local v0, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 228
    invoke-interface {v0}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v11

    add-double v2, v11, p1

    .line 229
    .local v2, beginOffset:D
    cmpg-double v11, v2, p3

    if-gtz v11, :cond_2

    .line 230
    new-instance v8, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v11, 0x0

    invoke-direct {v8, v2, v3, p0, v11}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 232
    .local v8, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v2           #beginOffset:D
    .end local v8           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 237
    .end local v0           #begin:Lorg/w3c/dom/smil/Time;
    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 238
    .local v5, endList:Lorg/w3c/dom/smil/TimeList;
    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 239
    invoke-interface {v5, v9}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 240
    .local v4, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 241
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v11

    add-double v6, v11, p1

    .line 242
    .local v6, endOffset:D
    cmpg-double v11, v6, p3

    if-gtz v11, :cond_4

    .line 243
    new-instance v8, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    const/4 v11, 0x1

    invoke-direct {v8, v6, v7, p0, v11}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;-><init>(DLorg/w3c/dom/smil/ElementTime;I)V

    .line 245
    .restart local v8       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v6           #endOffset:D
    .end local v8           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 250
    .end local v4           #end:Lorg/w3c/dom/smil/Time;
    :cond_5
    sget-object v11, Lcom/android/mms/dom/smil/SmilPlayer;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private declared-synchronized isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getElement()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isPauseAction()Z
    .locals 2

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isReloadAction()Z
    .locals 2

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isSeekToAction()Z
    .locals 2

    .prologue
    .line 722
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->SEEK_TO:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStartAction()Z
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isStopAction()Z
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized pauseActiveElements()V
    .locals 3

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 479
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->pauseElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 481
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 473
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadActiveSlide()V
    .locals 4

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 379
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->beginSmilDocument()V

    .line 381
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 383
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->seekActiveMedia()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 378
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .locals 4

    .prologue
    .line 536
    monitor-enter p0

    const/4 v0, 0x0

    .line 537
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 539
    iget v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 540
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 543
    :cond_1
    :try_start_1
    const-string v1, "SmilPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentElement:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    goto :goto_0

    .line 536
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized resumeActiveElements()V
    .locals 4

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadActiveSlide()V

    .line 486
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 487
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 488
    iget-object v3, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 493
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->resumeElement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 484
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized seekActiveMedia()V
    .locals 6

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 405
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 406
    .local v0, element:Lorg/w3c/dom/smil/ElementTime;
    instance-of v4, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 418
    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_0
    monitor-exit p0

    return-void

    .line 409
    .restart local v0       #element:Lorg/w3c/dom/smil/ElementTime;
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getOffsetTime(Lorg/w3c/dom/smil/ElementTime;)D

    move-result-wide v2

    .line 410
    .local v2, offset:D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    .line 415
    iget-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    long-to-double v4, v4

    sub-double/2addr v4, v2

    double-to-float v4, v4

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/ElementTime;->seekElement(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #element:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #i:I
    .end local v2           #offset:D
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized waitForEntry(J)V
    .locals 10
    .parameter "interval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xc8

    .line 426
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 428
    .local v0, overhead:J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-lez v6, :cond_0

    .line 429
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 430
    .local v4, startAt:J
    const-wide/16 v6, 0xc8

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 431
    .local v2, sleep:J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    .line 432
    sub-long v6, v2, v0

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 433
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 439
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isSeekToAction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 448
    .end local v2           #sleep:J
    .end local v4           #startAt:J
    :cond_0
    monitor-exit p0

    return-void

    .line 435
    .restart local v2       #sleep:J
    .restart local v4       #startAt:J
    :cond_1
    const-wide/16 v2, 0x0

    .line 436
    :try_start_1
    iget-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 426
    .end local v2           #sleep:J
    .end local v4           #startAt:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 443
    .restart local v2       #sleep:J
    .restart local v4       #startAt:J
    :cond_2
    :try_start_2
    iget-object v6, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v6, Lorg/w3c/dom/events/EventTarget;

    iget-object v7, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    invoke-interface {v6, v7}, Lorg/w3c/dom/events/EventTarget;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 445
    sub-long/2addr p1, v8

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v0, v6, v2

    .line 447
    goto :goto_0
.end method

.method private declared-synchronized waitForWakeUp()V
    .locals 3

    .prologue
    .line 499
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isSeekToAction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "SmilPlayer"

    const-string v2, "Unexpected InterruptedException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 502
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 504
    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 2

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    #getter for: Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->mOffsetTime:D
    invoke-static {v0}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->access$000(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 454
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lorg/w3c/dom/smil/ElementTime;)V
    .locals 5
    .parameter "root"

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    .line 308
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x43e0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/dom/smil/SmilPlayer;->getTimeline(Lorg/w3c/dom/smil/ElementTime;DD)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    .line 309
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mRoot:Lorg/w3c/dom/smil/ElementTime;

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    const-string v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    .line 310
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mMediaTimeUpdatedEvent:Lorg/w3c/dom/events/Event;

    const-string v1, "mediaTimeUpdated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mActiveElements:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->mapSlideToEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPausedState()Z
    .locals 2

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayedState()Z
    .locals 2

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayingState()Z
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStoppedState()Z
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mapSlideToEntry()V
    .locals 5

    .prologue
    .line 707
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 708
    .local v3, size:I
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mSlideToElement:[I

    .line 710
    const/4 v2, 0x0

    .line 711
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 712
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .line 713
    .local v0, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 714
    iget-object v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mSlideToElement:[I

    aput v1, v4, v2

    .line 715
    add-int/lit8 v2, v2, 0x1

    .line 711
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v0           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :cond_1
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :goto_0
    monitor-exit p0

    return-void

    .line 334
    :cond_0
    :try_start_1
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback is not playing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play()V
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 321
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    .line 322
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    .line 323
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mPlayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :goto_0
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    :try_start_1
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback is playing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 367
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 676
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 579
    .local v6, size:I
    const/4 v7, 0x0

    .line 583
    .local v7, startPlaying:Z
    const/4 v1, 0x0

    .line 585
    .local v1, endPlaying:Z
    iput v14, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    :goto_1
    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    if-ge v8, v6, :cond_1

    .line 587
    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v9, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_2

    .line 675
    :cond_1
    :goto_2
    sget-object v8, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    iput-object v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mState:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    goto :goto_0

    .line 591
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    .line 592
    sget-object v8, Lcom/android/mms/dom/smil/SmilPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 593
    .local v3, msg:Landroid/os/Message;
    sget-object v8, Lcom/android/mms/dom/smil/SmilPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 596
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    const/4 v2, 0x0

    .line 598
    .local v2, entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    check-cast v2, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .restart local v2       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    invoke-direct {p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->isBeginOfSlide(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 604
    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iput v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 606
    :cond_4
    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v8, v10

    double-to-long v4, v8

    .line 608
    .local v4, offset:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    cmp-long v8, v4, v12

    if-gtz v8, :cond_6

    :cond_5
    sget-boolean v8, Lcom/android/mms/ui/SlideshowActivity;->mIsAutoPlaying:Z

    if-nez v8, :cond_7

    if-nez v7, :cond_7

    cmp-long v8, v4, v12

    if-lez v8, :cond_7

    .line 610
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPause()V

    .line 611
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    .line 612
    const/4 v1, 0x0

    .line 614
    const/4 v7, 0x1

    .line 618
    :cond_7
    iget-wide v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_d

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isSeekToAction()Z

    move-result v8

    if-nez v8, :cond_d

    .line 620
    :try_start_1
    iget-wide v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    sub-long v8, v4, v8

    invoke-direct {p0, v8, v9}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForEntry(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 626
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPauseAction()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 627
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionPause()V

    .line 628
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->waitForWakeUp()V

    .line 631
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStopAction()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 632
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V

    goto/16 :goto_0

    .line 599
    .end local v2           #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .end local v4           #offset:J
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_2

    .line 621
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #entry:Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;
    .restart local v4       #offset:J
    :catch_1
    move-exception v0

    .line 622
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "SmilPlayer"

    const-string v9, "Unexpected InterruptedException."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 636
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isReloadAction()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 637
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionReload()V

    .line 639
    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    iget-object v9, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 640
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->reloadCurrentEntry()Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    move-result-object v2

    .line 642
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 643
    sget-object v8, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    goto :goto_3

    .line 649
    :cond_d
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isSeekToAction()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 650
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionSeekTo()V

    .line 664
    :cond_e
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 666
    if-nez v1, :cond_f

    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v9, v6, -0x1

    if-ne v8, v9, :cond_f

    .line 667
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 668
    iput-wide v12, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 669
    const/4 v1, 0x1

    .line 585
    :cond_f
    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    goto/16 :goto_1

    .line 652
    :cond_10
    iput-wide v4, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 655
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailViewEnhance()Z

    move-result v8

    if-eqz v8, :cond_11

    iget v8, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    add-int/lit8 v9, v6, -0x1

    if-lt v8, v9, :cond_11

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getAction()I

    move-result v9

    if-eq v8, v9, :cond_e

    .line 657
    :cond_11
    invoke-direct {p0, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->actionEntry(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)V

    goto :goto_4
.end method

.method public declared-synchronized seekto(II)V
    .locals 2
    .parameter "slide_pos"
    .parameter "time_pos"

    .prologue
    .line 736
    monitor-enter p0

    int-to-long v0, p2

    :try_start_0
    iput-wide v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentTime:J

    .line 737
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mSlideToElement:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    .line 738
    iget v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentSlide:I

    iput v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mCurrentElement:I

    .line 739
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->SEEK_TO:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 740
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    monitor-exit p0

    return-void

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->resumeActiveElements()V

    .line 341
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 346
    :cond_1
    :try_start_2
    const-string v0, "SmilPlayer"

    const-string v1, "Error State: Playback can not be started!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    :cond_0
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    iput-object v0, p0, Lcom/android/mms/dom/smil/SmilPlayer;->mAction:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 354
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->actionStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopWhenReload()V
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/dom/smil/SmilPlayer;->endActiveElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
