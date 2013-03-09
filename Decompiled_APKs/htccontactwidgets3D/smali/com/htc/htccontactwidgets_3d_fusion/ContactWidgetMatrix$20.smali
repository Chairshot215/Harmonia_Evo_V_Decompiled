.class Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;
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
    .line 3907
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x1a17

    const/16 v9, 0x1a0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x1a14

    .line 3909
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 4172
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 3914
    :pswitch_1
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3917
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a0d

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3918
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a0d

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3920
    :cond_1
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3921
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3922
    :cond_2
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3924
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->pauseProcess()V

    .line 3925
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    .line 3928
    :cond_3
    const/4 v0, 0x0

    .line 3929
    .local v0, bRequery:Z
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->onCheckRequery()Z

    move-result v0

    .line 3931
    const-string v3, "ContactWidgetMatrix"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KEY_ACTIVITY_RESUMED Scene path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Item path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetScene(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3934
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->getCollectionCount()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScrollOffset:I
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)I

    move-result v3

    if-lez v3, :cond_4

    .line 3937
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScrollOffset:I
    invoke-static {v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)I

    move-result v4

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v3, v4, v5, v7}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 3938
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v4, -0x1

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScrollOffset:I
    invoke-static {v3, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5202(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;I)I

    .line 3941
    :cond_4
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3942
    :cond_5
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_9

    :cond_7
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 3949
    :cond_9
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3950
    :cond_a
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z
    invoke-static {v3, v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 3954
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3955
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3956
    :cond_b
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3959
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 3960
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3962
    :cond_c
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 3963
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3965
    :cond_d
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3966
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3968
    :cond_e
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 3969
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4027
    :cond_f
    :goto_1
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4029
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a16

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4030
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a16

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4031
    :cond_10
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a16

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 4033
    :cond_11
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4034
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4036
    :cond_12
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 4037
    .local v1, message:Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 4038
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 4039
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->getLastVisibleIndex()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 4040
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3972
    .end local v1           #message:Landroid/os/Message;
    :cond_13
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    const-string v4, "Frequent Contacts"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3974
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3975
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3976
    :cond_14
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 3980
    :cond_15
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a15

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3981
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a15

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3982
    :cond_16
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a15

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3983
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static {v3, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    goto/16 :goto_1

    .line 3988
    :cond_17
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3989
    :cond_18
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3990
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mInitialize:Z
    invoke-static {v3, v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 3992
    :cond_19
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3993
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z
    invoke-static {v3, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 3995
    :cond_1a
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z
    invoke-static {v3, v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 3997
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3998
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3999
    :cond_1b
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 4002
    :cond_1c
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryGroupList:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4003
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4004
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4005
    :cond_1d
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_1

    .line 4009
    :cond_1e
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 4010
    .restart local v1       #message:Landroid/os/Message;
    const/16 v3, 0x1a0e

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4011
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1f

    .line 4013
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 4014
    iput v7, v1, Landroid/os/Message;->arg2:I

    .line 4016
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 4020
    :cond_1f
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 4021
    iput v7, v1, Landroid/os/Message;->arg2:I

    .line 4023
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 4047
    .end local v0           #bRequery:Z
    .end local v1           #message:Landroid/os/Message;
    :pswitch_2
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a10

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4048
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a10

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4050
    :cond_20
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->pauseProcess()V

    .line 4051
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    .line 4053
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_0

    .line 4055
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4056
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z
    invoke-static {v3, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4402(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 4057
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I
    invoke-static {v3, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;I)I

    .line 4058
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v4, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->extractFavorites(Landroid/database/Cursor;)V

    .line 4060
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4062
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a19

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 4063
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->notifyDataSetChanged()V

    .line 4076
    :cond_21
    :goto_2
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4077
    :try_start_0
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4078
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    const/4 v5, 0x0

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z
    invoke-static {v3, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 4082
    :cond_22
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 4083
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 4085
    :cond_23
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4066
    :cond_24
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iput v7, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 4067
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 4068
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v4, v3, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->setCursor(Landroid/database/Cursor;Z)V

    .line 4072
    :goto_3
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a19

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 4073
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->notifyDataSetChanged()V

    goto :goto_2

    .line 4070
    :cond_25
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v4, v3, v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->setCursor(Landroid/database/Cursor;Z)V

    goto :goto_3

    .line 4091
    :pswitch_3
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4094
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a13

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4095
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v4, 0x1a13

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4097
    :cond_26
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mInitialize:Z
    invoke-static {v3, v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    .line 4098
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4099
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4100
    :cond_27
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 4107
    :pswitch_4
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4108
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4112
    :cond_28
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->pauseProcess()V

    .line 4113
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    .line 4115
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$1;

    invoke-direct {v3, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$1;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4123
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 4129
    .end local v2           #thread:Ljava/lang/Thread;
    :pswitch_5
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/FxListView;->isScrolling()Z

    move-result v3

    if-eq v3, v8, :cond_0

    .line 4131
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4132
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4134
    :cond_29
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    .line 4135
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->startProcess()V

    .line 4136
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->queryIndicators(II)V
    invoke-static {v3, v4, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;II)V

    goto/16 :goto_0

    .line 4144
    :pswitch_6
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    iget-object v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v3, :cond_0

    .line 4145
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #calls: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->updateContactStatus()V
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    goto/16 :goto_0

    .line 4150
    :pswitch_7
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4152
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    invoke-virtual {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->StoreGroupnameToDB()V

    .line 4153
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z
    invoke-static {v3, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$5402(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z

    goto/16 :goto_0

    .line 4159
    :pswitch_8
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4160
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3, v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4162
    :cond_2a
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$2;

    invoke-direct {v3, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20$2;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4168
    .restart local v2       #thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3909
    :pswitch_data_0
    .packed-switch 0x1a0d
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
