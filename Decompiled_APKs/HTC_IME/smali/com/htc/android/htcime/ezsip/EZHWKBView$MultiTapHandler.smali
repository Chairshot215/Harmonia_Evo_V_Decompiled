.class public Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;
.super Landroid/os/Handler;
.source "EZHWKBView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/EZHWKBView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MultiTapHandler"
.end annotation


# static fields
.field private static final MULTITAP_EXPIRE_TIMEOUT:I = 0x4b0


# instance fields
.field protected mLastMultitapKeyCode:I

.field protected mLastShiftState:I

.field protected mMultitapKeyListCurIdx:I

.field protected mMultitapKeyListSize:I

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/ezsip/EZHWKBView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 329
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 332
    const v0, 0xffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    .line 333
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListCurIdx:I

    .line 334
    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListSize:I

    .line 335
    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastShiftState:I

    return-void
.end method


# virtual methods
.method public Done()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 376
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->doAutoCapCheck(I)I

    move-result v0

    .line 378
    .local v0, targetShiftState:I
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    if-eq v1, v0, :cond_0

    .line 379
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    invoke-virtual {v1, v0, v3}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->setIMECapMode(IZ)V

    .line 381
    .end local v0           #targetShiftState:I
    :cond_0
    const v1, 0xffff

    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    .line 382
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->removeMessages(I)V

    .line 383
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    const/high16 v2, 0x727

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->sendKeyEvent(I)V

    .line 384
    return-void
.end method

.method public KeyDown()V
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListCurIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListCurIdx:I

    .line 343
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListCurIdx:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListSize:I

    if-lt v0, v1, :cond_0

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mMultitapKeyListCurIdx:I

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastShiftState:I

    .line 347
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->SetTimer()V

    .line 348
    return-void
.end method

.method public MultitapDone()V
    .locals 4

    .prologue
    .line 357
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 358
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v2, "com.htc.android.htcime.adjustMetaState"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    const/high16 v3, 0x727

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->sendKeyEvent(I)V

    .line 362
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 363
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->doAutoCapCheck(I)I

    move-result v1

    .line 365
    .local v1, targetShiftState:I
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    if-eq v2, v1, :cond_1

    .line 368
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->setIMECapMode(IZ)V

    .line 371
    .end local v1           #targetShiftState:I
    :cond_1
    const v2, 0xffff

    iput v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    .line 372
    return-void
.end method

.method public PressDel()V
    .locals 2

    .prologue
    .line 387
    const v0, 0xffff

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->mLastMultitapKeyCode:I

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    const v1, 0x7270001

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->sendKeyEvent(I)V

    .line 390
    return-void
.end method

.method public SetTimer()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->removeMessages(I)V

    .line 352
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;->MultitapDone()V

    .line 339
    return-void
.end method
