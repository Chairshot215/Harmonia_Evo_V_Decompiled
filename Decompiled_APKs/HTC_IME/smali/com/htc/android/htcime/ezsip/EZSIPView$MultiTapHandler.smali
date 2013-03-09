.class public Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;
.super Landroid/os/Handler;
.source "EZSIPView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/EZSIPView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MultiTapHandler"
.end annotation


# static fields
.field private static final MULTITAP_EXPIRE_TIMEOUT:I = 0x4b0


# instance fields
.field protected mLastMultitapKeyIndex:I

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/ezsip/EZSIPView;)V
    .locals 1
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 647
    const v0, 0xffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 677
    const v0, 0xffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->removeMessages(I)V

    .line 679
    return-void
.end method

.method public KeyDown()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->removeMessages(I)V

    .line 657
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 658
    return-void
.end method

.method public MultitapDone()V
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    const/high16 v2, 0x718

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/EZSIPView;->sendKeyEvent(I)V

    .line 663
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 664
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/EZSIPView;->doAutoCapCheck(I)I

    move-result v0

    .line 666
    .local v0, targetShiftState:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftState:I

    if-eq v1, v0, :cond_0

    .line 669
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/htcime/ezsip/EZSIPView;->setIMECapMode(IZ)V

    .line 672
    .end local v0           #targetShiftState:I
    :cond_0
    const v1, 0xffff

    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 673
    return-void
.end method

.method public PressShift()V
    .locals 2

    .prologue
    .line 683
    const v0, 0xffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 684
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->removeMessages(I)V

    .line 685
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    const/high16 v1, 0x718

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->sendKeyEvent(I)V

    .line 686
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->MultitapDone()V

    .line 652
    return-void
.end method
