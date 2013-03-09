.class Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/trace/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyDownInfo"
.end annotation


# instance fields
.field blockSIPKeyDown:Z

.field keyCode_SIP:I

.field keyID_IM:I

.field pauseTrace:Z

.field pos:Landroid/graphics/Point;

.field shiftState:I

.field state_beforePause:I

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/trace/Trace;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->reset()V

    .line 697
    return-void
.end method


# virtual methods
.method getKey()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->keyID_IM:I

    return v0
.end method

.method getKeyCode()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->keyCode_SIP:I

    return v0
.end method

.method getPos()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pos:Landroid/graphics/Point;

    return-object v0
.end method

.method getShiftState()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->shiftState:I

    return v0
.end method

.method isBlockSIPKeyDown()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->blockSIPKeyDown:Z

    return v0
.end method

.method isPause()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pauseTrace:Z

    return v0
.end method

.method pauseTrace(I)V
    .locals 1
    .parameter "state_before_pause"

    .prologue
    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pauseTrace:Z

    .line 719
    iput p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->state_beforePause:I

    .line 720
    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 708
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->keyID_IM:I

    .line 709
    const/16 v0, -0x62

    iput v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->keyCode_SIP:I

    .line 710
    invoke-static {}, Lcom/htc/android/htcime/ezsip/trace/Trace;->access$000()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pos:Landroid/graphics/Point;

    .line 711
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->blockSIPKeyDown:Z

    .line 712
    iput v2, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->shiftState:I

    .line 713
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pauseTrace:Z

    .line 714
    iput v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->state_beforePause:I

    .line 715
    return-void
.end method

.method restoreStateBeforePause()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;

    #getter for: Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->access$100(Lcom/htc/android/htcime/ezsip/trace/Trace;)Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->state_beforePause:I

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    .line 724
    return-void
.end method

.method public set(IIIIIZ)V
    .locals 1
    .parameter "keyid_im"
    .parameter "pos_x"
    .parameter "pos_y"
    .parameter "keycode_sip"
    .parameter "shift_state"
    .parameter "blocksipkeydown"

    .prologue
    .line 700
    iput p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->keyID_IM:I

    .line 701
    iput p4, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->keyCode_SIP:I

    .line 702
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->pos:Landroid/graphics/Point;

    .line 703
    iput p5, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->shiftState:I

    .line 704
    iput-boolean p6, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$KeyDownInfo;->blockSIPKeyDown:Z

    .line 705
    return-void
.end method
