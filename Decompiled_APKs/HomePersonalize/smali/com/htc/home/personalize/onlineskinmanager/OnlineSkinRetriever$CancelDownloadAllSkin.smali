.class public Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;
.super Ljava/lang/Object;
.source "OnlineSkinRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CancelDownloadAllSkin"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 293
    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 295
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v3, "no skin list to be canceled!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$200(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->setStatusToAllSkin(I)V

    .line 320
    :cond_0
    return-void

    .line 299
    :cond_1
    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 301
    .local v7, info:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v1, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 303
    .local v1, strGUID:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$200(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 305
    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/htc/home/personalize/util/SkinDownloadUtils;->CancelDownloadSkinAPK(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$200(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    const-string v3, ""

    iget-object v4, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    #calls: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V
    invoke-static {v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$400(Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    :cond_3
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$200(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$200(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;->this$0:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    #getter for: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$200(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    #calls: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V
    invoke-static {v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$400(Ljava/lang/String;I)V

    goto :goto_0
.end method
