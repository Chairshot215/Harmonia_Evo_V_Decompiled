.class public Lcom/htc/opensense/widget/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/Gesture$DefaultBehavior;,
        Lcom/htc/opensense/widget/Gesture$SelectBehavior;,
        Lcom/htc/opensense/widget/Gesture$ZoomBehavior;,
        Lcom/htc/opensense/widget/Gesture$DragBehavior;,
        Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;,
        Lcom/htc/opensense/widget/Gesture$ClickBehavior;,
        Lcom/htc/opensense/widget/Gesture$Behavior;,
        Lcom/htc/opensense/widget/Gesture$IBehavior;,
        Lcom/htc/opensense/widget/Gesture$RingQueue;,
        Lcom/htc/opensense/widget/Gesture$Event;,
        Lcom/htc/opensense/widget/Gesture$Vector2;,
        Lcom/htc/opensense/widget/Gesture$DefaultListener;,
        Lcom/htc/opensense/widget/Gesture$GestureHandler;,
        Lcom/htc/opensense/widget/Gesture$GestureListener;
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
.field protected mActiveBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

.field protected mBehaviorChain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/widget/Gesture$IBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private mClickBehavior:Lcom/htc/opensense/widget/Gesture$ClickBehavior;

.field public mClickTap:Z

.field private mCurMotionEvent:Landroid/view/MotionEvent;

.field protected final mDefaultBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

.field mDefaultListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

.field private mDoubleTap:Z

.field private mDragBehavior:Lcom/htc/opensense/widget/Gesture$DragBehavior;

.field private mHandler:Landroid/os/Handler;

.field protected mHistory:Lcom/htc/opensense/widget/Gesture$RingQueue;

.field private mLastEvt:Lcom/htc/opensense/widget/Gesture$Event;

.field mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

.field private mZoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/htc/opensense/widget/Gesture;->LONGPRESS_TIMEOUT:I

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/htc/opensense/widget/Gesture;->TAP_TIMEOUT:I

    .line 34
    invoke-static {}, Lcom/htc/opensense/widget/Gesture;->getDoubleTapTimeOut()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/opensense/widget/Gesture;->DOUBLE_TAP_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/Gesture;-><init>(Lcom/htc/opensense/widget/Gesture$GestureListener;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/widget/Gesture$GestureListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mActiveBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    .line 40
    new-instance v0, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/Gesture$DefaultBehavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDefaultBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    .line 41
    new-instance v0, Lcom/htc/opensense/widget/Gesture$RingQueue;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/Gesture$RingQueue;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mHistory:Lcom/htc/opensense/widget/Gesture$RingQueue;

    .line 44
    new-instance v0, Lcom/htc/opensense/widget/Gesture$DefaultListener;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/Gesture$DefaultListener;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDefaultListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    .line 51
    new-instance v0, Lcom/htc/opensense/widget/Gesture$GestureHandler;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/Gesture$GestureHandler;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mHandler:Landroid/os/Handler;

    .line 172
    if-nez p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDefaultListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    .line 179
    :goto_0
    new-instance v0, Lcom/htc/opensense/widget/Gesture$ClickBehavior;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/Gesture$ClickBehavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mClickBehavior:Lcom/htc/opensense/widget/Gesture$ClickBehavior;

    .line 180
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture;->mClickBehavior:Lcom/htc/opensense/widget/Gesture$ClickBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/Gesture$DoubleClickBehavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mZoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    .line 183
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcMultiTouchFlag:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture;->mZoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    new-instance v0, Lcom/htc/opensense/widget/Gesture$DragBehavior;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/Gesture$DragBehavior;-><init>(Lcom/htc/opensense/widget/Gesture;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDragBehavior:Lcom/htc/opensense/widget/Gesture$DragBehavior;

    .line 188
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture;->mDragBehavior:Lcom/htc/opensense/widget/Gesture$DragBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture;->mDefaultBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDefaultBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mActiveBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    .line 193
    return-void

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/opensense/widget/Gesture;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/htc/opensense/widget/Gesture;->mDoubleTap:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/opensense/widget/Gesture;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/htc/opensense/widget/Gesture;->mDoubleTap:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$ClickBehavior;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mClickBehavior:Lcom/htc/opensense/widget/Gesture$ClickBehavior;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mLastEvt:Lcom/htc/opensense/widget/Gesture$Event;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 15
    sget-wide v0, Lcom/htc/opensense/widget/Gesture;->DOUBLE_TAP_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/widget/Gesture;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/htc/opensense/widget/Gesture;->TAP_TIMEOUT:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$ZoomBehavior;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mZoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    return-object v0
.end method

.method private action2Str(I)Ljava/lang/String;
    .locals 2
    .parameter "action"

    .prologue
    .line 726
    packed-switch p1, :pswitch_data_0

    .line 738
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action non-primary pointer down "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    :goto_0
    return-object v0

    .line 728
    :pswitch_0
    const-string v0, "action down"

    goto :goto_0

    .line 730
    :pswitch_1
    const-string v0, "action up"

    goto :goto_0

    .line 732
    :pswitch_2
    const-string v0, "action move"

    goto :goto_0

    .line 734
    :pswitch_3
    const-string v0, "action cancel"

    goto :goto_0

    .line 736
    :pswitch_4
    const-string v0, "action outside"

    goto :goto_0

    .line 740
    :cond_0
    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 741
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

    .line 743
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

    .line 726
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
    .line 775
    const-string v0, "Action: "

    .line 776
    .local v0, fmt:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 793
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_0

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Non-primary pointer down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
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

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    return-void

    .line 778
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

    .line 779
    goto :goto_0

    .line 781
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

    .line 782
    goto :goto_0

    .line 784
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

    .line 785
    goto :goto_0

    .line 787
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

    .line 788
    goto/16 :goto_0

    .line 790
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

    .line 791
    goto/16 :goto_0

    .line 796
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

    .line 776
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
.method public addBehavior(Lcom/htc/opensense/widget/Gesture$IBehavior;)V
    .locals 2
    .parameter "behavior"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public getActiveBehavior()Lcom/htc/opensense/widget/Gesture$IBehavior;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mActiveBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    return-object v0
.end method

.method public getDragDistanceX()F
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDragBehavior:Lcom/htc/opensense/widget/Gesture$DragBehavior;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/Gesture$DragBehavior;->getDragDistanceX()F

    move-result v0

    return v0
.end method

.method public getDragDistanceY()F
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDragBehavior:Lcom/htc/opensense/widget/Gesture$DragBehavior;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/Gesture$DragBehavior;->getDragDistanceY()F

    move-result v0

    return v0
.end method

.method public getHistory(I)Lcom/htc/opensense/widget/Gesture$Event;
    .locals 1
    .parameter "i"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mHistory:Lcom/htc/opensense/widget/Gesture$RingQueue;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/widget/Gesture$RingQueue;->getHisotry(I)Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v0

    return-object v0
.end method

.method public recognize(Landroid/view/MotionEvent;)I
    .locals 4
    .parameter "me"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture;->mCurMotionEvent:Landroid/view/MotionEvent;

    .line 753
    iget-object v3, p0, Lcom/htc/opensense/widget/Gesture;->mHistory:Lcom/htc/opensense/widget/Gesture$RingQueue;

    invoke-virtual {v3, p1}, Lcom/htc/opensense/widget/Gesture$RingQueue;->obtain(Landroid/view/MotionEvent;)Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v1

    .line 754
    .local v1, evt:Lcom/htc/opensense/widget/Gesture$Event;
    if-nez v1, :cond_0

    .line 755
    iget-object v3, p0, Lcom/htc/opensense/widget/Gesture;->mDefaultBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    invoke-interface {v3}, Lcom/htc/opensense/widget/Gesture$IBehavior;->gesture()I

    move-result v3

    .line 771
    :goto_0
    return v3

    .line 757
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/Gesture;->mHistory:Lcom/htc/opensense/widget/Gesture$RingQueue;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/Gesture$RingQueue;->getLastEvt()Lcom/htc/opensense/widget/Gesture$Event;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/widget/Gesture;->mLastEvt:Lcom/htc/opensense/widget/Gesture$Event;

    .line 758
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mDefaultBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    .line 759
    .local v0, behavior:Lcom/htc/opensense/widget/Gesture$IBehavior;
    iget-object v3, p0, Lcom/htc/opensense/widget/Gesture;->mBehaviorChain:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 760
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/widget/Gesture$IBehavior;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 761
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #behavior:Lcom/htc/opensense/widget/Gesture$IBehavior;
    check-cast v0, Lcom/htc/opensense/widget/Gesture$IBehavior;

    .line 762
    .restart local v0       #behavior:Lcom/htc/opensense/widget/Gesture$IBehavior;
    invoke-interface {v0, v1}, Lcom/htc/opensense/widget/Gesture$IBehavior;->analysis(Lcom/htc/opensense/widget/Gesture$Event;)V

    .line 763
    invoke-interface {v0}, Lcom/htc/opensense/widget/Gesture$IBehavior;->isBubble()Z

    move-result v3

    if-nez v3, :cond_1

    .line 766
    :cond_2
    iput-object v0, p0, Lcom/htc/opensense/widget/Gesture;->mActiveBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    .line 767
    iget-object v3, p0, Lcom/htc/opensense/widget/Gesture;->mHistory:Lcom/htc/opensense/widget/Gesture$RingQueue;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/widget/Gesture$RingQueue;->put(Lcom/htc/opensense/widget/Gesture$Event;)V

    .line 771
    iget-object v3, p0, Lcom/htc/opensense/widget/Gesture;->mActiveBehavior:Lcom/htc/opensense/widget/Gesture$IBehavior;

    invoke-interface {v3}, Lcom/htc/opensense/widget/Gesture$IBehavior;->gesture()I

    move-result v3

    goto :goto_0
.end method

.method public setListener(Lcom/htc/opensense/widget/Gesture$GestureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    .line 197
    return-void
.end method
