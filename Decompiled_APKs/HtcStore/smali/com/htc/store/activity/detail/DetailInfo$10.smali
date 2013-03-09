.class Lcom/htc/store/activity/detail/DetailInfo$10;
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
    .line 708
    iput-object p1, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const v6, 0x7f0a0002

    .line 710
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "click button - open or go to"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 742
    :goto_0
    :pswitch_0
    return-void

    .line 713
    :pswitch_1
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOpenIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$3200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$3300(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/store/module/vo/ItemItem;->getOnlinePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/store/util/ActivityUtils;->getPackageIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    #setter for: Lcom/htc/store/activity/detail/DetailInfo;->mOpenIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$3202(Lcom/htc/store/activity/detail/DetailInfo;Landroid/content/Intent;)Landroid/content/Intent;

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOpenIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$3200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 717
    :try_start_0
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOpenIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$3200(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/store/activity/detail/DetailInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$3400(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v3, v6}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 722
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->getContext()Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$3500(Lcom/htc/store/activity/detail/DetailInfo;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v3, v6}, Lcom/htc/store/activity/detail/DetailInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/store/util/ActivityUtils;->showStaticShortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :pswitch_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/store/util/ActivityUtils;->getIntentToAudioDetail(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 731
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    invoke-virtual {v2, v1}, Lcom/htc/store/activity/detail/DetailInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 732
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 733
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/htc/store/activity/detail/DetailInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 739
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_3
    iget-object v2, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    iget-object v3, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/store/activity/detail/DetailInfo;->access$2700(Lcom/htc/store/activity/detail/DetailInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mOnlineItemType:I
    invoke-static {v4}, Lcom/htc/store/activity/detail/DetailInfo;->access$2300(Lcom/htc/store/activity/detail/DetailInfo;)I

    move-result v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/htc/store/activity/detail/DetailInfo$10;->this$0:Lcom/htc/store/activity/detail/DetailInfo;

    #getter for: Lcom/htc/store/activity/detail/DetailInfo;->mItemItem:Lcom/htc/store/module/vo/ItemItem;
    invoke-static {v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$700(Lcom/htc/store/activity/detail/DetailInfo;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v6

    #calls: Lcom/htc/store/activity/detail/DetailInfo;->sendBroadcastToPicker(Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/store/activity/detail/DetailInfo;->access$2900(Lcom/htc/store/activity/detail/DetailInfo;Ljava/lang/String;IILcom/htc/store/module/vo/ItemItem;)V

    goto/16 :goto_0

    .line 711
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
