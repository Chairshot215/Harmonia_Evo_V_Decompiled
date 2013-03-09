.class Lcom/android/phone/NetworkUnlockScreen$4;
.super Landroid/os/CountDownTimer;
.source "NetworkUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen$4;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$4;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mLockText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/NetworkUnlockScreen;->access$1500(Lcom/android/phone/NetworkUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$4;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    const/4 v1, 0x1

    #calls: Lcom/android/phone/NetworkUnlockScreen;->toggleButtonsEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkUnlockScreen;->access$1600(Lcom/android/phone/NetworkUnlockScreen;Z)V

    .line 678
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 668
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 669
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$4;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mLockText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/NetworkUnlockScreen;->access$1500(Lcom/android/phone/NetworkUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkUnlockScreen$4;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NetworkUnlockScreen;->access$1400(Lcom/android/phone/NetworkUnlockScreen;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040300

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    return-void
.end method
