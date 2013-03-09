.class Lcom/htc/launcher/ScrollMonitor$Recorder;
.super Ljava/lang/Object;
.source "ScrollMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/ScrollMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Recorder"
.end annotation


# instance fields
.field private isOnTouch:Z

.field private mInitialTime:J

.field private mIntervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMovement:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadIntervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchPointsCount:I

.field final synthetic this$0:Lcom/htc/launcher/ScrollMonitor;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/ScrollMonitor;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 359
    iput-object p1, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->this$0:Lcom/htc/launcher/ScrollMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    .line 365
    iput-boolean v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->isOnTouch:Z

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/ScrollMonitor;Lcom/htc/launcher/ScrollMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/htc/launcher/ScrollMonitor$Recorder;-><init>(Lcom/htc/launcher/ScrollMonitor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/launcher/ScrollMonitor$Recorder;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/ScrollMonitor$Recorder;->setInitialTime(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/launcher/ScrollMonitor$Recorder;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/ScrollMonitor$Recorder;->addInterval(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/launcher/ScrollMonitor$Recorder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/htc/launcher/ScrollMonitor$Recorder;->addMovement(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/launcher/ScrollMonitor$Recorder;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/ScrollMonitor$Recorder;->addThreadInterval(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/launcher/ScrollMonitor$Recorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/htc/launcher/ScrollMonitor$Recorder;->actionMove()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/launcher/ScrollMonitor$Recorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/htc/launcher/ScrollMonitor$Recorder;->actionUp()V

    return-void
.end method

.method private actionMove()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->isOnTouch:Z

    .line 401
    return-void
.end method

.method private actionUp()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->isOnTouch:Z

    .line 397
    return-void
.end method

.method private addInterval(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-boolean v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->isOnTouch:Z

    if-eqz v0, :cond_1

    .line 373
    iget v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    .line 375
    :cond_1
    return-void
.end method

.method private addMovement(I)V
    .locals 2
    .parameter "movement"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mMovement:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mMovement:Ljava/util/ArrayList;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mMovement:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method private addThreadInterval(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mThreadIntervals:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mThreadIntervals:Ljava/util/ArrayList;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mThreadIntervals:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method private setInitialTime(J)V
    .locals 0
    .parameter "initialTime"

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mInitialTime:J

    .line 393
    return-void
.end method


# virtual methods
.method public getOutputString()Ljava/lang/String;
    .locals 32

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    const/16 v18, 0x0

    .line 466
    .local v18, size:I
    :goto_0
    if-nez v18, :cond_1

    .line 467
    const-string v17, "no scroll"

    .line 506
    .local v17, output:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 465
    .end local v17           #output:Ljava/lang/String;
    .end local v18           #size:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v18

    goto :goto_0

    .line 469
    .restart local v18       #size:I
    :cond_1
    const-wide/16 v19, 0x0

    .line 470
    .local v19, total:J
    const-wide/16 v23, 0x0

    .line 471
    .local v23, touchPointTotal:J
    const-wide/16 v27, 0x0

    .line 472
    .local v27, unTouchPointTotal:J
    const-wide/16 v13, 0x0

    .line 473
    .local v13, max:J
    const-wide/32 v15, 0x7fffffff

    .line 475
    .local v15, min:J
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v10, v0, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 477
    .local v11, interval:J
    add-long v19, v19, v11

    .line 478
    cmp-long v29, v11, v13

    if-lez v29, :cond_2

    move-wide v13, v11

    .line 479
    :cond_2
    cmp-long v29, v11, v15

    if-gez v29, :cond_3

    move-wide v15, v11

    .line 480
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v10, v0, :cond_4

    .line 481
    add-long v23, v23, v11

    .line 475
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 483
    :cond_4
    add-long v27, v27, v11

    goto :goto_3

    .line 486
    .end local v11           #interval:J
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v29, v0

    if-nez v29, :cond_6

    const-wide/16 v21, 0x0

    .line 487
    .local v21, touchAvg:J
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v29, v0

    sub-int v29, v18, v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    div-long v25, v27, v29

    .line 489
    .local v25, unTouchAvg:J
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v29, v0

    div-long v3, v19, v29

    .line 490
    .local v3, avg:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 491
    .local v5, firstDraw:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->this$0:Lcom/htc/launcher/ScrollMonitor;

    move-object/from16 v29, v0

    #getter for: Lcom/htc/launcher/ScrollMonitor;->mHasErrorPattern:Z
    invoke-static/range {v29 .. v29}, Lcom/htc/launcher/ScrollMonitor;->access$700(Lcom/htc/launcher/ScrollMonitor;)Z

    move-result v29

    if-eqz v29, :cond_7

    const/4 v7, 0x1

    .line 492
    .local v7, hasErrorPattern:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->this$0:Lcom/htc/launcher/ScrollMonitor;

    move-object/from16 v29, v0

    #getter for: Lcom/htc/launcher/ScrollMonitor;->mHasWarnPattern:Z
    invoke-static/range {v29 .. v29}, Lcom/htc/launcher/ScrollMonitor;->access$800(Lcom/htc/launcher/ScrollMonitor;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/4 v9, 0x1

    .line 493
    .local v9, hasWarnPattern:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->this$0:Lcom/htc/launcher/ScrollMonitor;

    move-object/from16 v29, v0

    #getter for: Lcom/htc/launcher/ScrollMonitor;->mHasVerbosePattern:Z
    invoke-static/range {v29 .. v29}, Lcom/htc/launcher/ScrollMonitor;->access$900(Lcom/htc/launcher/ScrollMonitor;)Z

    move-result v29

    if-eqz v29, :cond_9

    const/4 v8, 0x1

    .line 494
    .local v8, hasVerbosePattern:I
    :goto_7
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mInitialTime:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\t"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .restart local v17       #output:Ljava/lang/String;
    goto/16 :goto_1

    .line 486
    .end local v3           #avg:J
    .end local v5           #firstDraw:J
    .end local v7           #hasErrorPattern:I
    .end local v8           #hasVerbosePattern:I
    .end local v9           #hasWarnPattern:I
    .end local v17           #output:Ljava/lang/String;
    .end local v21           #touchAvg:J
    .end local v25           #unTouchAvg:J
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    div-long v21, v23, v29

    goto/16 :goto_4

    .line 491
    .restart local v3       #avg:J
    .restart local v5       #firstDraw:J
    .restart local v21       #touchAvg:J
    .restart local v25       #unTouchAvg:J
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 492
    .restart local v7       #hasErrorPattern:I
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 493
    .restart local v9       #hasWarnPattern:I
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_7
.end method

.method public getPoints()Ljava/lang/String;
    .locals 4

    .prologue
    .line 445
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 446
    .local v1, output:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 447
    .local v2, size:I
    :goto_0
    if-nez v2, :cond_2

    .line 448
    const-string v3, "no scroll"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 446
    .end local v2           #size:I
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    .line 450
    .restart local v2       #size:I
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 451
    iget-object v3, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 452
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    iget-object v3, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mThreadIntervals:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 454
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    iget-object v3, p0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mMovement:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 456
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 29

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    const/4 v15, 0x0

    .line 408
    .local v15, size:I
    :goto_0
    if-nez v15, :cond_1

    .line 409
    const-string v14, "no scroll"

    .line 441
    .local v14, output:Ljava/lang/String;
    :goto_1
    return-object v14

    .line 407
    .end local v14           #output:Ljava/lang/String;
    .end local v15           #size:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto :goto_0

    .line 411
    .restart local v15       #size:I
    :cond_1
    const-wide/16 v16, 0x0

    .line 412
    .local v16, total:J
    const-wide/16 v20, 0x0

    .line 413
    .local v20, touchPointTotal:J
    const-wide/16 v24, 0x0

    .line 414
    .local v24, unTouchPointTotal:J
    const-wide/16 v10, 0x0

    .line 415
    .local v10, max:J
    const-wide/32 v12, 0x7fffffff

    .line 417
    .local v12, min:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_5

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 419
    .local v8, interval:J
    add-long v16, v16, v8

    .line 420
    cmp-long v26, v8, v10

    if-lez v26, :cond_2

    move-wide v10, v8

    .line 421
    :cond_2
    cmp-long v26, v8, v12

    if-gez v26, :cond_3

    move-wide v12, v8

    .line 422
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v7, v0, :cond_4

    .line 423
    add-long v20, v20, v8

    .line 417
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 425
    :cond_4
    add-long v24, v24, v8

    goto :goto_3

    .line 428
    .end local v8           #interval:J
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v26, v0

    if-nez v26, :cond_6

    const-wide/16 v18, 0x0

    .line 429
    .local v18, touchAvg:J
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v26, v0

    sub-int v26, v15, v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v22, v24, v26

    .line 431
    .local v22, unTouchAvg:J
    int-to-long v0, v15

    move-wide/from16 v26, v0

    div-long v3, v16, v26

    .line 432
    .local v3, avg:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mIntervals:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 433
    .local v5, firstDraw:J
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "first draw = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", avg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", touch avg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", untouch avg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", max = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", min = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", initial time = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mInitialTime:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #output:Ljava/lang/String;
    goto/16 :goto_1

    .line 428
    .end local v3           #avg:J
    .end local v5           #firstDraw:J
    .end local v14           #output:Ljava/lang/String;
    .end local v18           #touchAvg:J
    .end local v22           #unTouchAvg:J
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/ScrollMonitor$Recorder;->mTouchPointsCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v18, v20, v26

    goto/16 :goto_4
.end method
