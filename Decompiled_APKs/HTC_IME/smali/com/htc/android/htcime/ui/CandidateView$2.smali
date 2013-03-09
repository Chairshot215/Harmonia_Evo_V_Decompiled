.class Lcom/htc/android/htcime/ui/CandidateView$2;
.super Landroid/os/Handler;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/CandidateView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/CandidateView;)V
    .locals 0
    .parameter

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1725
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1757
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1728
    :pswitch_0
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/CandidateView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #getter for: Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I
    invoke-static {v4}, Lcom/htc/android/htcime/ui/CandidateView;->access$800(Lcom/htc/android/htcime/ui/CandidateView;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #getter for: Lcom/htc/android/htcime/ui/CandidateView;->mPaddingBottom:I
    invoke-static {v4}, Lcom/htc/android/htcime/ui/CandidateView;->access$900(Lcom/htc/android/htcime/ui/CandidateView;)I

    move-result v4

    sub-int v1, v3, v4

    .line 1730
    .local v1, height:I
    const/4 v0, 0x2

    .line 1731
    .local v0, event:I
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    iget v2, v3, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    .line 1733
    .local v2, index:I
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #getter for: Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I
    invoke-static {v3}, Lcom/htc/android/htcime/ui/CandidateView;->access$1000(Lcom/htc/android/htcime/ui/CandidateView;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1751
    :goto_1
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #getter for: Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/htc/android/htcime/ui/CandidateView;->access$1300(Lcom/htc/android/htcime/ui/CandidateView;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1752
    :cond_1
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #calls: Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V
    invoke-static {v3, v0, v2}, Lcom/htc/android/htcime/ui/CandidateView;->access$1400(Lcom/htc/android/htcime/ui/CandidateView;II)V

    goto :goto_0

    .line 1736
    :pswitch_1
    const/4 v0, 0x2

    .line 1737
    goto :goto_1

    .line 1739
    :pswitch_2
    const/4 v0, 0x5

    .line 1740
    goto :goto_1

    .line 1742
    :pswitch_3
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #getter for: Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I
    invoke-static {v3}, Lcom/htc/android/htcime/ui/CandidateView;->access$1100(Lcom/htc/android/htcime/ui/CandidateView;)I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    if-le v3, v4, :cond_2

    .line 1743
    const/4 v0, 0x2

    goto :goto_1

    .line 1745
    :cond_2
    const/4 v0, 0x5

    .line 1746
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView$2;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    #getter for: Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTopTouchWordIndex:I
    invoke-static {v3}, Lcom/htc/android/htcime/ui/CandidateView;->access$1200(Lcom/htc/android/htcime/ui/CandidateView;)I

    move-result v2

    goto :goto_1

    .line 1725
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1733
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
