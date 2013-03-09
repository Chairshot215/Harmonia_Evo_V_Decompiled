.class Lcom/htc/store/activity/detail/DetailInfo$9;
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
    .line 680
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 682
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "click button - uninstall"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->disableActionButton()V
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2200(Lcom/htc/store/activity/detail/DetailInfo;)V

    .line 684
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 704
    :goto_0
    return-void

    .line 687
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$3000(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/store/util/InstallationUtils;->unInstallApk(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)V

    goto :goto_0

    .line 690
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/store/activity/detail/DetailInfo;->showDialog(I)V

    goto :goto_0

    .line 696
    :pswitch_2
    iget-object v0, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/store/activity/detail/DetailInfo;->access$3100(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$9;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/store/util/InstallationUtils;->uninstallAudioItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 701
    :pswitch_3
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "this type shouldn\'t have an uninstall button"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
