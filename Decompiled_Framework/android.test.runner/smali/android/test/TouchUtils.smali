.class public Landroid/test/TouchUtils;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 24

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    const/4 v6, 0x0

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    const/4 v6, 0x1

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    const/4 v13, 0x2

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x4000

    div-float/2addr v6, v9

    add-float v14, v7, v6

    move/from16 v0, v20

    int-to-float v6, v0

    const/high16 v9, 0x4000

    div-float/2addr v6, v9

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    const-wide/16 v9, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static drag(Landroid/test/ActivityInstrumentationTestCase;FFFFI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return-void
.end method

.method public static drag(Landroid/test/InstrumentationTestCase;FFFFI)V
    .locals 14

    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move/from16 v7, p3

    move v6, p1

    sub-float v5, p4, p3

    move/from16 v0, p5

    int-to-float v8, v0

    div-float v13, v5, v8

    sub-float v5, p2, p1

    move/from16 v0, p5

    int-to-float v8, v0

    div-float v12, v5, v8

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual {v11}, Landroid/app/Instrumentation;->waitForIdleSync()V

    const/4 v10, 0x0

    :goto_0
    move/from16 v0, p5

    if-ge v10, v0, :cond_0

    add-float/2addr v7, v13

    add-float/2addr v6, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual {v11}, Landroid/app/Instrumentation;->waitForIdleSync()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual {v11}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/ActivityInstrumentationTestCase;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x4000

    div-float v1, v0, v2

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f00

    mul-float v3, v0, v2

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f40

    mul-float v4, v0, v2

    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/ActivityInstrumentationTestCase;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v2, 0x4000

    div-float v1, v0, v2

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f00

    mul-float v3, v0, v2

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3e80

    mul-float v4, v0, v2

    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return-void
.end method

.method public static dragViewBy(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v8, v0, [I

    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    const/4 v0, 0x0

    aget v6, v8, v0

    const/4 v0, 0x1

    aget v7, v8, v0

    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v1, v6

    add-int v0, v6, p3

    int-to-float v2, v0

    int-to-float v3, v7

    add-int v0, v7, p4

    int-to-float v4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return v5
.end method

.method public static dragViewTo(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .locals 11

    const/4 v0, 0x2

    new-array v10, v0, [I

    invoke-static {p1, p2, v10}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    const/4 v0, 0x0

    aget v8, v10, v0

    const/4 v0, 0x1

    aget v9, v10, v0

    sub-int v6, v8, p3

    sub-int v7, v9, p4

    mul-int v0, v6, v6

    mul-int v1, v7, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v1, v8

    int-to-float v2, p3

    int-to-float v3, v9

    int-to-float v4, p4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return v5
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    return-void
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V
    .locals 10

    const/high16 v5, 0x4000

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    const/4 v0, 0x2

    new-array v9, v0, [I

    invoke-virtual {p2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    const/4 v0, 0x0

    aget v0, v9, v0

    int-to-float v0, v0

    int-to-float v2, v8

    div-float/2addr v2, v5

    add-float v1, v0, v2

    const/4 v0, 0x1

    aget v0, v9, v0

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v3, v0, v2

    add-int/lit8 v0, v6, -0x1

    int-to-float v4, v0

    move-object v0, p0

    move v2, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V
    .locals 9

    const/high16 v5, 0x4000

    const/4 v0, 0x2

    new-array v8, v0, [I

    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v0, 0x0

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v1, v0, v2

    const/4 v0, 0x1

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v6

    div-float/2addr v2, v5

    add-float v3, v0, v2

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return-void
.end method

.method public static dragViewToX(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .locals 9

    const/4 v0, 0x2

    new-array v8, v0, [I

    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    const/4 v0, 0x0

    aget v6, v8, v0

    const/4 v0, 0x1

    aget v7, v8, v0

    sub-int v5, v6, p3

    int-to-float v1, v6

    int-to-float v2, p3

    int-to-float v3, v7

    int-to-float v4, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return v5
.end method

.method public static dragViewToY(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .locals 9

    const/4 v0, 0x2

    new-array v8, v0, [I

    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    const/4 v0, 0x0

    aget v6, v8, v0

    const/4 v0, 0x1

    aget v7, v8, v0

    sub-int v5, v7, p3

    int-to-float v1, v6

    int-to-float v2, v6

    int-to-float v3, v7

    int-to-float v4, p3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    return v5
.end method

.method private static getStartLocation(Landroid/view/View;I[I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    and-int/lit8 v2, p1, 0x70

    sparse-switch v2, :sswitch_data_0

    :goto_0
    :sswitch_0
    and-int/lit8 v2, p1, 0x7

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :sswitch_1
    aget v2, p2, v5

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_0

    :sswitch_2
    aget v2, p2, v5

    add-int/lit8 v3, v0, -0x1

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_0

    :pswitch_1
    aget v2, p2, v4

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_1

    :pswitch_2
    aget v2, p2, v4

    add-int/lit8 v3, v1, -0x1

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static longClickView(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroid/test/TouchUtils;->longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V

    return-void
.end method

.method public static longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 24

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    const/4 v6, 0x0

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    const/4 v6, 0x1

    aget v6, v23, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v19

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    const/4 v13, 0x2

    div-int/lit8 v6, v20, 0x2

    int-to-float v6, v6

    add-float v14, v7, v6

    div-int/lit8 v6, v20, 0x2

    int-to-float v6, v6

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-float v6, v6

    const/high16 v9, 0x3fc0

    mul-float/2addr v6, v9

    float-to-long v9, v6

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v19 .. v19}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static scrollToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 6

    const/high16 v1, -0x8000

    const/high16 v2, -0x8000

    :cond_0
    move v3, v1

    move v4, v2

    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ne v3, v1, :cond_0

    if-ne v4, v2, :cond_0

    return-void
.end method

.method public static scrollToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 6

    const/high16 v1, -0x8000

    const/high16 v2, -0x8000

    :cond_0
    move v3, v1

    move v4, v2

    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-ne v3, v1, :cond_0

    if-ne v4, v2, :cond_0

    return-void
.end method

.method public static tapView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 23

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v20

    const/4 v6, 0x0

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    const/4 v6, 0x1

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v19

    const/4 v13, 0x2

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x4000

    div-float/2addr v6, v9

    add-float v14, v7, v6

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x4000

    div-float/2addr v6, v9

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void
.end method

.method public static touchAndCancelView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 23

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v20

    const/4 v6, 0x0

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v21

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v7, v6, v9

    const/4 v6, 0x1

    aget v6, v22, v6

    int-to-float v6, v6

    move/from16 v0, v20

    int-to-float v9, v0

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v19

    const/4 v13, 0x3

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x4000

    div-float/2addr v6, v9

    add-float v14, v7, v6

    move/from16 v0, v19

    int-to-float v6, v0

    const/high16 v9, 0x4000

    div-float/2addr v6, v9

    add-float v15, v8, v6

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void
.end method
