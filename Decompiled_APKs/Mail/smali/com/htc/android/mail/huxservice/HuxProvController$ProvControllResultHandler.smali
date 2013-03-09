.class public abstract Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;
.super Landroid/os/Handler;
.source "HuxProvController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxProvController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProvControllResultHandler"
.end annotation


# static fields
.field public static final RESULT_NOTIFY:I = 0x3

.field public static final SMS_RESULT:I = 0x1

.field public static final SMS_TIMEOUT:I = 0x2


# instance fields
.field mIsPinReturned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->mIsPinReturned:Z

    .line 532
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 534
    return-void
.end method

.method public provResultNotify(ILjava/lang/Object;)V
    .locals 2
    .parameter "notifyKey"
    .parameter "obj"

    .prologue
    .line 548
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 549
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 550
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 551
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 552
    return-void
.end method

.method public resetIsPinRetuned()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->mIsPinReturned:Z

    .line 556
    return-void
.end method

.method public sendSMSResult(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 537
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 538
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 540
    return-void
.end method

.method public smsWaitTimeOut()V
    .locals 2

    .prologue
    .line 543
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 544
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 545
    return-void
.end method
