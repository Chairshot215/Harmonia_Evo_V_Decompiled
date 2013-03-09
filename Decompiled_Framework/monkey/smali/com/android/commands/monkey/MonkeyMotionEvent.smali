.class public abstract Lcom/android/commands/monkey/MonkeyMotionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyMotionEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mFlags:I

.field private mIntermediateNote:Z

.field private mMetaState:I

.field private mPointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:I

.field private mXPrecision:F

.field private mYPrecision:F


# direct methods
.method protected constructor <init>(III)V
    .locals 4

    const-wide/16 v2, -0x1

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    iput p3, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    return-void
.end method

.method private getEvent()Landroid/view/MotionEvent;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v7, v6, [I

    new-array v8, v6, [Landroid/view/MotionEvent$PointerCoords;

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v0, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    aput v1, v7, v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent$PointerCoords;

    aput-object v1, v8, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-gez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSource:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mFlags:I

    invoke-static/range {v1 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v16

    return-object v16

    :cond_1
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    goto :goto_1
.end method


# virtual methods
.method public addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 2

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPointers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p0
.end method

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getIntermediateNote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    return v0
.end method

.method protected abstract getTypeLabel()Ljava/lang/String;
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 8

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v2

    if-lez p3, :cond_0

    iget-boolean v6, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    if-eqz v6, :cond_1

    :cond_0
    if-le p3, v5, :cond_3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, ":Sending "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getTypeLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v6, "):"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    const-string v6, "ACTION_DOWN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v6, "ACTION_MOVE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v6, "ACTION_UP"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v6, "ACTION_CANCEL"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v6, "ACTION_POINTER_DOWN "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string v6, "ACTION_POINTER_UP "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->injectMotionEvent(Landroid/view/IWindowManager;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :goto_2
    return v5

    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v5, -0x1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected abstract injectMotionEvent(Landroid/view/IWindowManager;Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public isThrottlable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0

    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    return-object p0
.end method

.method public setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0

    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    return-object p0
.end method

.method public setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0

    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    return-object p0
.end method

.method public setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0

    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    return-object p0
.end method

.method public setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0

    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    return-object p0
.end method

.method public setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0

    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    return-object p0
.end method

.method public setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;
    .locals 0

    iput p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    iput p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    return-object p0
.end method
