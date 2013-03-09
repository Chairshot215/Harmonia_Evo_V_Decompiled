.class public Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;
.super Ljava/lang/Object;
.source "MotionEventCompatUtils.java"


# static fields
.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field private static final CLASS_MotionEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_getSource:Ljava/lang/reflect/Method;

.field private static final METHOD_setDownTime:Ljava/lang/reflect/Method;

.field private static final METHOD_setSource:Ljava/lang/reflect/Method;

.field private static sPreviousDownTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    const-class v0, Landroid/view/MotionEvent;

    sput-object v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->CLASS_MotionEvent:Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->CLASS_MotionEvent:Ljava/lang/Class;

    .line 29
    const-string v1, "getSource"

    new-array v2, v4, [Ljava/lang/Class;

    .line 28
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->METHOD_getSource:Ljava/lang/reflect/Method;

    .line 30
    sget-object v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->CLASS_MotionEvent:Ljava/lang/Class;

    .line 31
    const-string v1, "setSource"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 30
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->METHOD_setSource:Ljava/lang/reflect/Method;

    .line 32
    sget-object v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->CLASS_MotionEvent:Ljava/lang/Class;

    .line 33
    const-string v1, "setDownTime"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 32
    invoke-static {v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->METHOD_setDownTime:Ljava/lang/reflect/Method;

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->sPreviousDownTime:J

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static convertHoverToTouch(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 5
    .parameter "hoverEvent"

    .prologue
    .line 99
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 101
    .local v2, touchEvent:Landroid/view/MotionEvent;
    sget-wide v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->sPreviousDownTime:J

    .line 103
    .local v0, downTime:J
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 117
    :pswitch_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    .line 120
    :goto_0
    const/16 v3, 0x2002

    invoke-static {v2, v3}, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->setSource(Landroid/view/MotionEvent;I)V

    .line 121
    invoke-static {v2, v0, v1}, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->setDownTime(Landroid/view/MotionEvent;J)V

    .line 123
    return-object v2

    .line 105
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->sPreviousDownTime:J

    .line 107
    sget-wide v0, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->sPreviousDownTime:J

    .line 108
    goto :goto_0

    .line 110
    :pswitch_2
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 113
    :pswitch_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 114
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->sPreviousDownTime:J

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static getSource(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->METHOD_getSource:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static setDownTime(Landroid/view/MotionEvent;J)V
    .locals 5
    .parameter "event"
    .parameter "downTime"

    .prologue
    .line 81
    const/4 v0, 0x0

    sget-object v1, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->METHOD_setDownTime:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public static setSource(Landroid/view/MotionEvent;I)V
    .locals 5
    .parameter "event"
    .parameter "source"

    .prologue
    .line 67
    const/4 v0, 0x0

    sget-object v1, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->METHOD_setSource:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/googlecode/eyesfree/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
