.class Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;
.super Landroid/os/CountDownTimer;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

.field final synthetic val$hwResetText:I

.field final synthetic val$hwResetText_singular:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$3;JJII)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iput p6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText_singular:I

    iput p7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText_singular:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText_singular:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7

    const-wide/16 v5, 0x3e8

    div-long v0, p1, v5

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText_singular:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText_singular:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHWResetIndicator:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$3;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$3$1;->val$hwResetText:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-long v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
