.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_END_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureFramerate"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_PINCH_ZOOM:Ljava/lang/String; = "PinchZoom"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_START_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureFramerate"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mScriptFileName:Ljava/lang/String;

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d0

    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v4, v2

    :goto_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    :goto_2
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v6, v8

    double-to-long v0, v6

    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long v4, v6, v0

    const-wide/16 v6, 0x10

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    goto :goto_2
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEventTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    goto :goto_0
.end method

.method private closeFile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 79

    const-string v14, "DispatchKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x8

    if-ne v14, v15, :cond_1

    :try_start_0
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, " old key\n"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct/range {v3 .. v13}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Key code "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Added key up \n"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "DispatchPointer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_2

    const-string v14, "DispatchTrackball"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_4

    :cond_2
    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0xc

    if-ne v14, v15, :cond_4

    const/4 v14, 0x0

    :try_start_1
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v14, 0x8

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v72

    const/16 v14, 0x9

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v76

    const/16 v14, 0xa

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v14, 0xb

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    const-string v14, "Pointer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_3

    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v3, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    move/from16 v0, v72

    move/from16 v1, v76

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v14

    goto/16 :goto_0

    :cond_3
    new-instance v3, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v3, v8}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    const-string v14, "Tap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_7

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-lt v14, v15, :cond_7

    const/4 v14, 0x0

    :try_start_2
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    const-wide/16 v66, 0x0

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v66

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    const-wide/16 v14, 0x0

    cmp-long v14, v66, v14

    if-lez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-wide/from16 v0, v66

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_6
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v14, "PressAndHold"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_8

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    const/4 v14, 0x0

    :try_start_3
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v36

    new-instance v37, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, v37

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    add-long v20, v4, v48

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    add-long v20, v4, v48

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v14, "Drag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_a

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_a

    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v73

    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v77

    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v71

    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v75

    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    move/from16 v16, v73

    move/from16 v17, v77

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    if-lez v65, :cond_a

    sub-float v14, v71, v73

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v74, v14, v15

    sub-float v14, v75, v77

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v78, v14, v15

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    const/16 v40, 0x0

    :goto_2
    move/from16 v0, v40

    move/from16 v1, v65

    if-ge v0, v1, :cond_9

    add-float v16, v16, v74

    add-float v17, v17, v78

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    add-int/lit8 v40, v40, 0x1

    goto :goto_2

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_a
    const-string v14, "PinchZoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_c

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_c

    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v51

    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v54

    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v50

    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v53

    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v57

    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v60

    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v56

    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v59

    const/16 v14, 0x8

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    move/from16 v22, v51

    move/from16 v23, v54

    move/from16 v26, v57

    move/from16 v27, v60

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    if-lez v65, :cond_c

    sub-float v14, v50, v51

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v52, v14, v15

    sub-float v14, v53, v54

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v55, v14, v15

    sub-float v14, v56, v57

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v58, v14, v15

    sub-float v14, v59, v60

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v61, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x105

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    const/16 v40, 0x0

    :goto_3
    move/from16 v0, v40

    move/from16 v1, v65

    if-ge v0, v1, :cond_b

    add-float v22, v22, v52

    add-float v23, v23, v55

    add-float v26, v26, v58

    add-float v27, v27, v61

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x1

    const/high16 v28, 0x3f80

    const/high16 v29, 0x40a0

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    add-int/lit8 v40, v40, 0x1

    goto :goto_3

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_c
    const-string v14, "DispatchFlip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_d

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v44

    new-instance v3, Lcom/android/commands/monkey/MonkeyFlipEvent;

    move/from16 v0, v44

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_d
    const-string v14, "LaunchActivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_10

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-lt v14, v15, :cond_10

    const/4 v14, 0x0

    aget-object v46, p2, v14

    const/4 v14, 0x1

    aget-object v32, p2, v14

    const-wide/16 v30, 0x0

    new-instance v45, Landroid/content/ComponentName;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-le v14, v15, :cond_e

    const/4 v14, 0x2

    :try_start_4
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v30

    :cond_e
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    new-instance v3, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :catch_3
    move-exception v3

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    new-instance v3, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-direct {v3, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_10
    const-string v14, "DeviceWakeUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_11

    const-string v46, "com.google.android.powerutil"

    const-string v32, "com.google.android.powerutil.WakeUpScreen"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    move-wide/from16 v34, v0

    new-instance v45, Landroid/content/ComponentName;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-direct {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyWaitEvent;

    const-wide/16 v20, 0xbb8

    add-long v20, v20, v34

    move-wide/from16 v0, v20

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x52

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x52

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_11
    const-string v14, "LaunchInstrumentation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_12

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    const/4 v14, 0x0

    aget-object v69, p2, v14

    const/4 v14, 0x1

    aget-object v62, p2, v14

    new-instance v3, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_12
    const-string v14, "UserWait"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_13

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    const/4 v14, 0x0

    :try_start_5
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v0, v14

    move-wide/from16 v63, v0

    new-instance v3, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-wide/from16 v0, v63

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v14

    goto/16 :goto_0

    :cond_13
    const-string v14, "ProfileWait"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_14

    new-instance v3, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_14
    const-string v14, "DispatchPress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_15

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_15

    const/4 v14, 0x0

    aget-object v43, p2, v14

    invoke-static/range {v43 .. v43}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v42

    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x0

    move/from16 v0, v42

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x1

    move/from16 v0, v42

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_15
    const-string v14, "LongPress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_16

    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x0

    const/16 v15, 0x17

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    new-instance v70, Lcom/android/commands/monkey/MonkeyWaitEvent;

    sget v14, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    int-to-long v14, v14

    move-object/from16 v0, v70

    invoke-direct {v0, v14, v15}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v70

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x1

    const/16 v15, 0x17

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_16
    const-string v14, "PowerLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_17

    move-object/from16 v0, p2

    array-length v14, v0

    if-lez v14, :cond_17

    const/4 v14, 0x0

    aget-object v47, p2, v14

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1a

    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v47

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_17
    :goto_4
    const-string v14, "WriteLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_18

    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_18
    const-string v14, "RunCmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_19

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_19

    const/4 v14, 0x0

    aget-object v33, p2, v14

    new-instance v3, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    :cond_19
    const-string v14, "DispatchString"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1b

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1b

    const/4 v14, 0x0

    aget-object v41, p2, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "input text "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    new-instance v3, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_17

    const/4 v14, 0x1

    aget-object v68, p2, v14

    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v47

    move-object/from16 v1, v68

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_4

    :cond_1b
    const-string v14, "StartCaptureFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1c

    new-instance v3, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v14, "start"

    invoke-direct {v3, v14}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :cond_1c
    const-string v14, "EndCaptureFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const/4 v14, 0x0

    aget-object v41, p2, v14

    new-instance v3, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v14, "end"

    move-object/from16 v0, v41

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_0

    :catch_5
    move-exception v14

    goto/16 :goto_0
.end method

.method private needSleep(J)V
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processLine(Ljava/lang/String;)V
    .locals 6

    const/16 v4, 0x28

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readHeader()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "count="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    :try_start_0
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v3

    :cond_2
    const-string v5, "speed="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    :try_start_1
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v5, "start data >>"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    move v3, v4

    goto :goto_1
.end method

.method private readLines()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x64

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private readNextBatch()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    :cond_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    :cond_1
    return-void
.end method

.method private resetValue()V
    .locals 4

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 6

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeyEvent;

    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_3
    move-object v4, v1

    check-cast v4, Lcom/android/commands/monkey/MonkeyMotionEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    goto :goto_0
.end method

.method public setVerbose(I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    return-void
.end method

.method public validate()Z
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events with speed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
