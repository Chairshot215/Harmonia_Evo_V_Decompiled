.class public Lcom/htc/home/personalize/opensense/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;,
        Lcom/htc/home/personalize/opensense/Gesture$SelectBehavior;,
        Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;,
        Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;,
        Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;,
        Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;,
        Lcom/htc/home/personalize/opensense/Gesture$Behavior;,
        Lcom/htc/home/personalize/opensense/Gesture$IBehavior;,
        Lcom/htc/home/personalize/opensense/Gesture$RingQueue;,
        Lcom/htc/home/personalize/opensense/Gesture$Event;,
        Lcom/htc/home/personalize/opensense/Gesture$Vector2;,
        Lcom/htc/home/personalize/opensense/Gesture$DefaultListener;,
        Lcom/htc/home/personalize/opensense/Gesture$GestureHandler;,
        Lcom/htc/home/personalize/opensense/Gesture$GestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:J = 0x0L

.field public static final GESTURE_BOTH_FINGER_UP:I = 0xe

.field public static final GESTURE_CLICK:I = 0x6

.field public static final GESTURE_DOUBLE_CLICK:I = 0x7

.field public static final GESTURE_DRAG:I = 0x4

.field public static final GESTURE_MULTI_DRAG:I = 0x5

.field public static final GESTURE_NONE:I = 0x1

.field public static final GESTURE_ROTATE:I = 0xb

.field public static final GESTURE_SECOND_FINGER_DOWN:I = 0xc

.field public static final GESTURE_SECOND_FINGER_UP:I = 0xd

.field public static final GESTURE_SELECT:I = 0x2

.field public static final GESTURE_SELECT_HOLD:I = 0x3

.field public static final GESTURE_ZOOM_IN:I = 0x8

.field public static final GESTURE_ZOOM_OUT:I = 0x9

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gesture"

.field public static final TAP:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field protected mActiveBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

.field protected mBehaviorChain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/opensense/Gesture$IBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mClickBehavior:Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;

.field public mClickTap:Z

.field private mCurMotionEvent:Landroid/view/MotionEvent;

.field protected final mDefaultBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

.field mDefaultListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

.field private mDoubleTap:Z

.field private mDragBehavior:Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;

.field private mHandler:Landroid/os/Handler;

.field protected mHistory:Lcom/htc/home/personalize/opensense/Gesture$RingQueue;

.field private mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

.field mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

.field private mZoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/htc/home/personalize/opensense/Gesture;->LONGPRESS_TIMEOUT:I

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/htc/home/personalize/opensense/Gesture;->TAP_TIMEOUT:I

    .line 34
    invoke-static {}, Lcom/htc/home/personalize/opensense/Gesture;->getDoubleTapTimeOut()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/home/personalize/opensense/Gesture;->DOUBLE_TAP_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/opensense/Gesture;-><init>(Lcom/htc/home/personalize/opensense/Gesture$GestureListener;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/opensense/Gesture$GestureListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mActiveBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    .line 40
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$DefaultBehavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDefaultBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    .line 41
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$RingQueue;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$RingQueue;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mHistory:Lcom/htc/home/personalize/opensense/Gesture$RingQueue;

    .line 44
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$DefaultListener;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$DefaultListener;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDefaultListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    .line 51
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$GestureHandler;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$GestureHandler;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mHandler:Landroid/os/Handler;

    .line 172
    if-nez p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDefaultListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    .line 179
    :goto_0
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mClickBehavior:Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;

    .line 180
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mClickBehavior:Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/opensense/Gesture$DoubleClickBehavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mZoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    .line 183
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMultiTouchFlag:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mZoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;-><init>(Lcom/htc/home/personalize/opensense/Gesture;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDragBehavior:Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;

    .line 188
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDragBehavior:Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDefaultBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDefaultBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mActiveBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    .line 193
    return-void

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/opensense/Gesture;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDoubleTap:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/home/personalize/opensense/Gesture;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDoubleTap:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mClickBehavior:Lcom/htc/home/personalize/opensense/Gesture$ClickBehavior;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 15
    sget-wide v0, Lcom/htc/home/personalize/opensense/Gesture;->DOUBLE_TAP_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/home/personalize/opensense/Gesture;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/htc/home/personalize/opensense/Gesture;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/home/personalize/opensense/Gesture;)Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mZoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    return-object v0
.end method

.method private action2Str(I)Ljava/lang/String;
    .locals 2
    .parameter "action"

    .prologue
    .line 740
    packed-switch p1, :pswitch_data_0

    .line 752
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action non-primary pointer down "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_0
    return-object v0

    .line 742
    :pswitch_0
    const-string v0, "action down"

    goto :goto_0

    .line 744
    :pswitch_1
    const-string v0, "action up"

    goto :goto_0

    .line 746
    :pswitch_2
    const-string v0, "action move"

    goto :goto_0

    .line 748
    :pswitch_3
    const-string v0, "action cancel"

    goto :goto_0

    .line 750
    :pswitch_4
    const-string v0, "action outside"

    goto :goto_0

    .line 754
    :cond_0
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action non-primary pointer up "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 757
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown action ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static dumpEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "me"

    .prologue
    .line 789
    const-string v0, "Action: "

    .line 790
    .local v0, fmt:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 807
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_0

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Non-primary pointer down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    :goto_0
    const-string v1, "Gesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Fingers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 792
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    goto :goto_0

    .line 795
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    goto :goto_0

    .line 798
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Move"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    goto :goto_0

    .line 801
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    goto/16 :goto_0

    .line 804
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Outside"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    goto/16 :goto_0

    .line 810
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 790
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getDoubleTapTimeOut()J
    .locals 2

    .prologue
    .line 162
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 167
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    .line 164
    :pswitch_0
    const-wide/16 v0, 0x190

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addBehavior(Lcom/htc/home/personalize/opensense/Gesture$IBehavior;)V
    .locals 2
    .parameter "behavior"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public getActiveBehavior()Lcom/htc/home/personalize/opensense/Gesture$IBehavior;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mActiveBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    return-object v0
.end method

.method public getDragDistanceX()F
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDragBehavior:Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->getDragDistanceX()F

    move-result v0

    return v0
.end method

.method public getDragDistanceY()F
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDragBehavior:Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->getDragDistanceY()F

    move-result v0

    return v0
.end method

.method public getHistory(I)Lcom/htc/home/personalize/opensense/Gesture$Event;
    .locals 1
    .parameter "i"

    .prologue
    .line 818
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mHistory:Lcom/htc/home/personalize/opensense/Gesture$RingQueue;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/opensense/Gesture$RingQueue;->getHisotry(I)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v0

    return-object v0
.end method

.method public recognize(Landroid/view/MotionEvent;)I
    .locals 4
    .parameter "me"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mCurMotionEvent:Landroid/view/MotionEvent;

    .line 767
    iget-object v3, p0, Lcom/htc/home/personalize/opensense/Gesture;->mHistory:Lcom/htc/home/personalize/opensense/Gesture$RingQueue;

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/opensense/Gesture$RingQueue;->obtain(Landroid/view/MotionEvent;)Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v1

    .line 768
    .local v1, evt:Lcom/htc/home/personalize/opensense/Gesture$Event;
    if-nez v1, :cond_0

    .line 769
    iget-object v3, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDefaultBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    invoke-interface {v3}, Lcom/htc/home/personalize/opensense/Gesture$IBehavior;->gesture()I

    move-result v3

    .line 785
    :goto_0
    return v3

    .line 771
    :cond_0
    iget-object v3, p0, Lcom/htc/home/personalize/opensense/Gesture;->mHistory:Lcom/htc/home/personalize/opensense/Gesture$RingQueue;

    invoke-virtual {v3}, Lcom/htc/home/personalize/opensense/Gesture$RingQueue;->getLastEvt()Lcom/htc/home/personalize/opensense/Gesture$Event;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/home/personalize/opensense/Gesture;->mLastEvt:Lcom/htc/home/personalize/opensense/Gesture$Event;

    .line 772
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mDefaultBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    .line 773
    .local v0, behavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;
    iget-object v3, p0, Lcom/htc/home/personalize/opensense/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 774
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/home/personalize/opensense/Gesture$IBehavior;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 775
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #behavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;
    check-cast v0, Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    .line 776
    .restart local v0       #behavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;
    invoke-interface {v0, v1}, Lcom/htc/home/personalize/opensense/Gesture$IBehavior;->analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 777
    invoke-interface {v0}, Lcom/htc/home/personalize/opensense/Gesture$IBehavior;->isBubble()Z

    move-result v3

    if-nez v3, :cond_1

    .line 780
    :cond_2
    iput-object v0, p0, Lcom/htc/home/personalize/opensense/Gesture;->mActiveBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    .line 781
    iget-object v3, p0, Lcom/htc/home/personalize/opensense/Gesture;->mHistory:Lcom/htc/home/personalize/opensense/Gesture$RingQueue;

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/opensense/Gesture$RingQueue;->put(Lcom/htc/home/personalize/opensense/Gesture$Event;)V

    .line 785
    iget-object v3, p0, Lcom/htc/home/personalize/opensense/Gesture;->mActiveBehavior:Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    invoke-interface {v3}, Lcom/htc/home/personalize/opensense/Gesture$IBehavior;->gesture()I

    move-result v3

    goto :goto_0
.end method

.method public setListener(Lcom/htc/home/personalize/opensense/Gesture$GestureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture;->mListener:Lcom/htc/home/personalize/opensense/Gesture$GestureListener;

    .line 197
    return-void
.end method
