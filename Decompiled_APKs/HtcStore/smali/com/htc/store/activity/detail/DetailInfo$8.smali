.class Lcom/htc/store/activity/detail/DetailInfo$8;
.super Ljava/lang/Object;
.source "DetailInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/detail/DetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/detail/DetailInfo;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/detail/DetailInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    .line 656
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "click button - cancel"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->disableActionButton()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2200(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 658
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 665
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2600(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v5}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/htc/store/util/DownloadUtils;->abortDownloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    goto :goto_0

    .line 668
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2800(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v0

    check-cast v0, Lcom/htc/store/module/vo/SoundsetItem;

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mIsUpdateAvailable:Z
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$1800(Lcom/htc/store/activity/detail/DetailInfo;)Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/htc/store/util/DownloadUtils;->abortDownloadSoundset(Landroid/content/Context;Lcom/htc/store/module/vo/SoundsetItem;Z)I

    goto :goto_0

    .line 673
    :pswitch_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$8;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v3

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->sendBroadcastToPicker(Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2900(Lcom/htc/store/activity/detail/DetailInfo;Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
