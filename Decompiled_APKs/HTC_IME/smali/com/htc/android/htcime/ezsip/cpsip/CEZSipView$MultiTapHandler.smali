.class public Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;
.super Landroid/os/Handler;
.source "CEZSipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MultiTapHandler"
.end annotation


# static fields
.field private static final MULTITAP_EXPIRE_TIMEOUT:I = 0x1c2


# instance fields
.field protected mLastMultitapKeyIndex:I

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;)V
    .locals 1
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 449
    const v0, 0xffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    const v1, 0xffff

    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 482
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->removeMessages(I)V

    .line 484
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    if-eqz v1, :cond_0

    .line 485
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    aput v2, v1, v0

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public KeyDown(I)V
    .locals 3
    .parameter "ButtonIndex"

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v0, p1, :cond_0

    const v0, 0xffff

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    aput v2, v0, v1

    .line 465
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->removeMessages(I)V

    .line 466
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 467
    return-void
.end method

.method public MultitapDone()V
    .locals 3

    .prologue
    .line 470
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    const/high16 v2, 0x718

    #calls: Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->sendKeyEvent(I)V
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->access$000(Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;I)V

    .line 471
    const v1, 0xffff

    iput v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 473
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    if-eqz v1, :cond_0

    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView;->mMultiTapIndex:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/cpsip/CEZSipView$MultiTapHandler;->MultitapDone()V

    .line 454
    return-void
.end method
