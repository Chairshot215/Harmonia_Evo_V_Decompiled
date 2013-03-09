.class Lcom/google/android/setupwizard/ActivationActivity$6;
.super Landroid/os/CountDownTimer;
.source "ActivationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupwizard/ActivationActivity;->onSpcRetriesFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/ActivationActivity;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 935
    iput-object p1, p0, Lcom/google/android/setupwizard/ActivationActivity$6;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/android/setupwizard/ActivationActivity$6;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #calls: Lcom/google/android/setupwizard/ActivationActivity;->doShutdown()V
    invoke-static {v0}, Lcom/google/android/setupwizard/ActivationActivity;->access$1400(Lcom/google/android/setupwizard/ActivationActivity;)V

    .line 945
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 938
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 939
    .local v0, secondsLeft:I
    iget-object v1, p0, Lcom/google/android/setupwizard/ActivationActivity$6;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    #getter for: Lcom/google/android/setupwizard/ActivationActivity;->mCountdownText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/setupwizard/ActivationActivity;->access$1300(Lcom/google/android/setupwizard/ActivationActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupwizard/ActivationActivity$6;->this$0:Lcom/google/android/setupwizard/ActivationActivity;

    invoke-virtual {v2}, Lcom/google/android/setupwizard/ActivationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 941
    return-void
.end method
