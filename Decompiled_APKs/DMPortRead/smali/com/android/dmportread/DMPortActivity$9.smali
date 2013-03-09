.class Lcom/android/dmportread/DMPortActivity$9;
.super Landroid/os/Handler;
.source "DMPortActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMPortActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMPortActivity;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMPortActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 526
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mRxView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$1400(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->intRxCnt:I
    invoke-static {v1}, Lcom/android/dmportread/DMPortActivity;->access$900(Lcom/android/dmportread/DMPortActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mTxView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$1500(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->intTxCnt:I
    invoke-static {v1}, Lcom/android/dmportread/DMPortActivity;->access$1000(Lcom/android/dmportread/DMPortActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mRxUSB:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$1700(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->intRxUSB:I
    invoke-static {v1}, Lcom/android/dmportread/DMPortActivity;->access$1100(Lcom/android/dmportread/DMPortActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->rxCount:I
    invoke-static {v2}, Lcom/android/dmportread/DMPortActivity;->access$1600(Lcom/android/dmportread/DMPortActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->mTxUSB:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/dmportread/DMPortActivity;->access$1900(Lcom/android/dmportread/DMPortActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->intTxUSB:I
    invoke-static {v1}, Lcom/android/dmportread/DMPortActivity;->access$1200(Lcom/android/dmportread/DMPortActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/dmportread/DMPortActivity$9;->this$0:Lcom/android/dmportread/DMPortActivity;

    #getter for: Lcom/android/dmportread/DMPortActivity;->txCount:I
    invoke-static {v2}, Lcom/android/dmportread/DMPortActivity;->access$1800(Lcom/android/dmportread/DMPortActivity;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    return-void
.end method
