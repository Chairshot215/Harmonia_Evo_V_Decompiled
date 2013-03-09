.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 487
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 488
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.store.action.DISPATCH"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v2

    .line 490
    .local v2, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-eqz v2, :cond_0

    .line 492
    const-string v4, "requester"

    const-string v5, "com.htc.store_oad"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const-string v4, "navigate_to"

    const-string v5, "item_detail"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    const-string v4, "online_item_id"

    iget-object v5, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v4, "online_item_content_type"

    const-string v5, "Skin"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v4, "online_item_v1_id"

    iget-object v5, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v4, "online_item_v1_type"

    iget-object v5, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->appType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1300(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v3

    .line 499
    .local v3, nDownloadStatus:I
    const-string v4, "download_status"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v4, "SkinPicker.OnlineSkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Skin] start OAD, type: Skin, id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v3           #nDownloadStatus:I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$7;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-virtual {v4, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
