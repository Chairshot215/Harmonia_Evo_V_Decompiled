.class Lcom/google/android/gsf/login/ChoosePasswordActivity$1;
.super Landroid/os/Handler;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 65
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 66
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordCheckerThread:Lcom/google/android/gsf/login/CancelableCallbackThread;
    invoke-static {v3, v4}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$002(Lcom/google/android/gsf/login/ChoosePasswordActivity;Lcom/google/android/gsf/login/CancelableCallbackThread;)Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 67
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromMessage(Landroid/os/Message;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v3, v4, :cond_4

    .line 68
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->getUserData()Ljava/util/HashMap;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->STRENGTH:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, strength:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 71
    .local v2, value:I
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$100(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$100(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetails:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$200(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_3

    move v0, v2

    .line 76
    .local v0, detailIndex:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$300(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetails:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$200(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->isXLargeScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordDetail:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$300(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetailColors:[I
    invoke-static {v4}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$400(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .end local v0           #detailIndex:I
    .end local v1           #strength:Ljava/lang/String;
    .end local v2           #value:I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mPasswordNeedsRating:Z
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$500(Lcom/google/android/gsf/login/ChoosePasswordActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #calls: Lcom/google/android/gsf/login/ChoosePasswordActivity;->ratePassword()V
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$600(Lcom/google/android/gsf/login/ChoosePasswordActivity;)V

    .line 91
    :cond_2
    return-void

    .line 75
    .restart local v1       #strength:Ljava/lang/String;
    .restart local v2       #value:I
    :cond_3
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    #getter for: Lcom/google/android/gsf/login/ChoosePasswordActivity;->mDetails:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$200(Lcom/google/android/gsf/login/ChoosePasswordActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 84
    .end local v1           #strength:Ljava/lang/String;
    .end local v2           #value:I
    :cond_4
    iget-object v3, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    iget-boolean v3, v3, Lcom/google/android/gsf/login/ChoosePasswordActivity;->LOCAL_LOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Password rating failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
