.class Lcom/htc/android/htcime/PPIME/PPInputMethod$1;
.super Landroid/os/Handler;
.source "PPInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/PPIME/PPInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/PPIME/PPInputMethod;)V
    .locals 0
    .parameter

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1788
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1811
    :cond_0
    :goto_0
    return-void

    .line 1790
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->bIsHandwritingPanelDown:Z

    if-eqz v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    #getter for: Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_nCandidateCount:I
    invoke-static {v0}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->access$000(Lcom/htc/android/htcime/PPIME/PPInputMethod;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iput v2, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurSelectedWCLIdx:I

    goto :goto_0

    .line 1796
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v1, v1, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1801
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v0, v4, :cond_3

    .line 1802
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->bIsHandwritingPanelDown:Z

    if-eqz v0, :cond_2

    .line 1803
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    #getter for: Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->access$100(Lcom/htc/android/htcime/PPIME/PPInputMethod;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    goto :goto_0

    .line 1805
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1808
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    iget-object v0, v0, Lcom/htc/android/htcime/PPIME/PPInputMethod;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, p0, Lcom/htc/android/htcime/PPIME/PPInputMethod$1;->this$0:Lcom/htc/android/htcime/PPIME/PPInputMethod;

    #getter for: Lcom/htc/android/htcime/PPIME/PPInputMethod;->m_strAutoCompleteCandidate:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod;->access$100(Lcom/htc/android/htcime/PPIME/PPInputMethod;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/android/htcime/HTCIMEService;->setWCLTextByID(Ljava/lang/String;II)V

    goto :goto_0

    .line 1788
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
