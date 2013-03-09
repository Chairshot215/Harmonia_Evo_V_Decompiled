.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;
.super Ljava/lang/Object;
.source "ContactWidgetMatrix.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 3804
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v2, 0x1a11

    const/16 v6, 0x1a0e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x1a0f

    .line 3806
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3904
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 3809
    :pswitch_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    .line 3810
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->updateList(Ljava/lang/Object;)V

    goto :goto_0

    .line 3815
    :pswitch_2
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    .line 3816
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x1a1b

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3817
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x1a1b

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3818
    :cond_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->updateList(Ljava/lang/Object;)V

    goto :goto_0

    .line 3824
    :pswitch_3
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    .line 3825
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x1a19

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3826
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3827
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3829
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_4

    .line 3831
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iput v4, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 3834
    sget-object v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->Orange_FR_CID_num:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->checkCustomizatedSku(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3835
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->setVoiceMailItem()V

    .line 3840
    :goto_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 3838
    :cond_3
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->setDefaultItem()V

    goto :goto_1

    .line 3845
    :cond_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->notifyDataSetChanged()V

    .line 3848
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v5, :cond_0

    .line 3850
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->pauseProcess()V

    .line 3851
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    .line 3852
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3853
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3855
    :cond_5
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3856
    .local v0, message:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 3857
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3858
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getLastVisibleIndex()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3859
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-interface {v1, v0, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 3868
    .end local v0           #message:Landroid/os/Message;
    :pswitch_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    .line 3870
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3871
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3873
    :cond_6
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->updateUI()V

    goto/16 :goto_0

    .line 3879
    :pswitch_5
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    .line 3881
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x1a12

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3882
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    const/16 v2, 0x1a12

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3884
    :cond_7
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iput v4, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 3887
    sget-object v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->Orange_FR_CID_num:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->checkCustomizatedSku(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3888
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->setVoiceMailItem()V

    .line 3890
    :cond_8
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->updateList(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3895
    :pswitch_6
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->showLoadMessages()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto/16 :goto_0

    .line 3898
    :pswitch_7
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->hideLoadMessage()V
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto/16 :goto_0

    .line 3806
    nop

    :pswitch_data_0
    .packed-switch 0x1a0c
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
