.class public Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
.super Ljava/lang/Object;
.source "OnlineSkinRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;,
        Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$CancelDownloadAllSkin;,
        Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;
    }
.end annotation


# static fields
.field public static final ACTION_EXTRA_NOTIFICATION_ITEM_GUID:Ljava/lang/String; = "notification_item_id"

.field private static final ACTION_NOTIFICAIONCLICK:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field private static final ACTION_NOTIFICAIONCOMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"

.field private static final ACTION_ONLINESKIN:Ljava/lang/String; = "com.htc.skinpicker.action.ONLINESKIN"

.field public static final ACTION_SKINPICKER:Ljava/lang/String; = "com.htc.intent.ACTION_NOTIFICATION_SKINPICKER"

.field public static final INVALID_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HomePersonalize SkinPicker.OnlineSkinRetriever"

.field private static mArrayListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

.field private static mOrientation:I

.field private static mSkinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/StoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mbNext:Z

.field private static miBaseIndex:I

.field private static miPageSize:I


# instance fields
.field private mIsFirstListRetrieve:Z

.field private mIsRetrievingList:Z

.field private mListPreparingDownloadItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListWaitingDownloadItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

.field private mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    sput-boolean v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mbNext:Z

    .line 50
    sput v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->miBaseIndex:I

    .line 51
    const/16 v0, 0xa

    sput v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->miPageSize:I

    .line 53
    sput-object v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    .line 54
    sput v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mOrientation:I

    .line 60
    sput-object v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "inContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsFirstListRetrieve:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsRetrievingList:Z

    .line 65
    iput-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    .line 66
    iput-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    .line 77
    sput-object p1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    invoke-direct {v0, p1, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    .line 83
    return-void
.end method

.method private CancelDownLoadSkinbyIntent(Ljava/lang/String;)V
    .locals 8
    .parameter "strGUID"

    .prologue
    .line 507
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CancelDownLoadSkinbyIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v6

    .line 509
    .local v6, nDownloadStatus:I
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v0, 0x1

    if-eq v6, v0, :cond_0

    .line 512
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v1, "this skin is downloaded or not download, do not cancel download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_0
    return-void

    .line 516
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v7

    .line 517
    .local v7, objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-nez v7, :cond_1

    .line 519
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid application retrieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    :cond_1
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detail page action. cancel download item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/home/personalize/util/SkinDownloadUtils;->CancelDownloadSkinAPK(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const/4 v2, 0x0

    const-string v3, ""

    iget-object v4, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private CreateDownloadStatusItems()V
    .locals 4

    .prologue
    .line 804
    sget-object v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 806
    .local v1, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    iget-object v3, v1, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->InsertNewItem(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    .end local v1           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_0
    return-void
.end method

.method private DownLoadSkinbyIntent(Ljava/lang/String;Z)V
    .locals 9
    .parameter "strGUID"
    .parameter "isSendtoPhone"

    .prologue
    .line 477
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownLoadSkinbyIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSendtoPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->GetDownloadStatus(Ljava/lang/String;)I

    move-result v7

    .line 479
    .local v7, nDownloadStatus:I
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v8

    .line 482
    .local v8, objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-nez v8, :cond_0

    .line 484
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid application retrieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    return-void

    .line 488
    :cond_0
    if-eqz v7, :cond_1

    .line 490
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v1, "this skin is downloading, do not download again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :cond_1
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send to phone or detail page action. download item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 496
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v0, "storedata_type"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    const-string v0, "store_productid"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 500
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const/4 v2, 0x1

    const-string v3, ""

    iget-object v4, v8, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v8, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static DownloadPreviews()V
    .locals 12

    .prologue
    .line 135
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v4, "DownloadPreviews+"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 139
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v4, "no skin list!"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .local v8, i:I
    .local v9, nRow:I
    :goto_0
    return-void

    .line 143
    .end local v8           #i:I
    .end local v9           #nRow:I
    :cond_0
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    sput v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mOrientation:I

    .line 144
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 145
    .restart local v9       #nRow:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 147
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 148
    .local v7, currentSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v2, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 149
    .local v2, strGUID:Ljava/lang/String;
    sget v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mOrientation:I

    invoke-static {v2, v1}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, strName:Ljava/lang/String;
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    sget v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mOrientation:I

    invoke-static {v1, v2, v4}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewFilePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, strFilePath:Ljava/lang/String;
    const-string v3, ""

    .line 152
    .local v3, strPreviewURL:Ljava/lang/String;
    sget v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mOrientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 153
    iget-object v3, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImageLandscape:Ljava/lang/String;

    .line 158
    :goto_2
    invoke-static {v10}, Lcom/htc/home/personalize/util/FileHelper;->IsFileExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 145
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 155
    :cond_1
    iget-object v3, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->previewImagePortrait:Ljava/lang/String;

    goto :goto_2

    .line 164
    :cond_2
    new-instance v0, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;

    const/4 v1, 0x0

    const-string v4, "image/*"

    sget-object v6, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 165
    .local v0, task:Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;
    new-instance v11, Ljava/lang/Thread;

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    .local v11, thread:Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 169
    .end local v0           #task:Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;
    .end local v2           #strGUID:Ljava/lang/String;
    .end local v3           #strPreviewURL:Ljava/lang/String;
    .end local v5           #strName:Ljava/lang/String;
    .end local v7           #currentSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .end local v10           #strFilePath:Ljava/lang/String;
    .end local v11           #thread:Ljava/lang/Thread;
    :cond_3
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v4, "DownloadPreviews-"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private LaunchOnlineSkinfromNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "strGUID"

    .prologue
    .line 551
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v1, intentOnlineSkin:Landroid/content/Intent;
    const-string v2, "com.htc.skinpicker.action.ONLINESKIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v2, "notification_item_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v1           #intentOnlineSkin:Landroid/content/Intent;
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v3, "can not found activity ACTION_ONLINESKIN"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private LaunchSkinPickerfromNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "strGUID"

    .prologue
    .line 564
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 565
    .local v1, intentSkinPicker:Landroid/content/Intent;
    const-string v2, "com.htc.intent.ACTION_NOTIFICATION_SKINPICKER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v2, "notification_item_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 568
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v1           #intentSkinPicker:Landroid/content/Intent;
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v3, "can not found activity ACTION_SKINPICKER"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private LoadSkinFromStoreManagerDB(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 531
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    .line 535
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 536
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    const-string v1, "Skin"

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->getStoreItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    .line 538
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 539
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyListRetrieved(I)V

    .line 546
    :goto_0
    return-void

    .line 541
    :cond_1
    const-string v0, "store_rehasnext"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mbNext:Z

    .line 542
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->CreateDownloadStatusItems()V

    .line 543
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyListRetrieved(I)V

    .line 544
    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->DownloadPreviews()V

    goto :goto_0
.end method

.method private LoadSkinListFromDB(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 576
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    .line 580
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    const-string v1, "Skin"

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->getStoreItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    .line 582
    return-void
.end method

.method private static declared-synchronized NotifyDownloadStateChanged(Ljava/lang/String;I)V
    .locals 4
    .parameter "strGUID"
    .parameter "nState"

    .prologue
    .line 770
    const-class v3, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;

    .line 771
    .local v1, listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    invoke-interface {v1, p0, p1}, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;->onDownloadStateChanged(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 770
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 773
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    return-void
.end method

.method private NotifyListRetrieved(I)V
    .locals 7
    .parameter "retCode"

    .prologue
    const/4 v6, 0x0

    .line 777
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 779
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v5, "handle waiting download items after retrieve list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 782
    .local v0, guid:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 783
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v3

    .line 784
    .local v3, objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->IsAvailablePhoneKbSpace(Lcom/htc/home/personalize/storedatamanager/StoreItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 785
    invoke-direct {p0, v0, v6}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->DownLoadSkinbyIntent(Ljava/lang/String;Z)V

    .line 793
    :goto_0
    iget-object v4, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 796
    .end local v0           #guid:Ljava/lang/String;
    .end local v3           #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_1
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;

    .line 798
    .local v2, listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-interface {v2, v4, p1}, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;->onListRetrieved(Ljava/util/ArrayList;I)V

    goto :goto_1

    .line 787
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    .restart local v0       #guid:Ljava/lang/String;
    .restart local v3       #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_2
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v5, "Storage is full"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-direct {p0, v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->updateNotDownloadToDetail(Ljava/lang/String;)V

    .line 789
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    const v5, 0x20c01c2

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 800
    .end local v0           #guid:Ljava/lang/String;
    .end local v3           #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private static declared-synchronized NotifyPreviewDownloaded(Ljava/lang/String;)V
    .locals 4
    .parameter "strGUID"

    .prologue
    .line 763
    const-class v3, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;

    .line 764
    .local v1, listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    invoke-interface {v1, p0}, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;->onPreviewDownloaded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 763
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 766
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    return-void
.end method

.method private OnDownloadManagerComplete(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v13

    .line 686
    .local v13, atrUri:Ljava/lang/String;
    const-string v1, "notificationextras"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 688
    .local v8, strGUID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "status"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const-string v7, "_data"

    aput-object v7, v3, v4

    const/4 v4, 0x2

    const-string v7, "mimetype"

    aput-object v7, v3, v4

    const/4 v4, 0x3

    const-string v7, "title"

    aput-object v7, v3, v4

    const/4 v4, 0x4

    const-string v7, "_id"

    aput-object v7, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 692
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    const-string v1, "mimetype"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 695
    .local v16, strMIME:Ljava/lang/String;
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strMIME = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v1, "image/*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 698
    const-string v1, "status"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 699
    .local v15, nStatus:I
    const-string v1, "_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, strData:Ljava/lang/String;
    const-string v1, "title"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 701
    .local v17, strOutputFile:Ljava/lang/String;
    invoke-static {v15}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 702
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v1, v3, v0}, Lcom/htc/home/personalize/util/FileHelper;->CopyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_0
    invoke-static {v8}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyPreviewDownloaded(Ljava/lang/String;)V

    .line 726
    .end local v3           #strData:Ljava/lang/String;
    .end local v15           #nStatus:I
    .end local v16           #strMIME:Ljava/lang/String;
    .end local v17           #strOutputFile:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v14, :cond_3

    .line 727
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_2
    const/4 v14, 0x0

    .line 730
    :cond_3
    return-void

    .line 711
    .restart local v16       #strMIME:Ljava/lang/String;
    :cond_4
    const-string v1, "status"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 712
    .restart local v15       #nStatus:I
    invoke-static {v15}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 713
    const-string v1, "_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 714
    .restart local v3       #strData:Ljava/lang/String;
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .local v5, lId:J
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v8

    .line 715
    invoke-direct/range {v1 .. v6}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->onPhoneStoreageSkinDownloaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 717
    .end local v3           #strData:Ljava/lang/String;
    .end local v5           #lId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    if-eqz v1, :cond_1

    .line 719
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download skin fail "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v1, 0x0

    invoke-static {v8, v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private OnNotificationClicked(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 586
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 588
    .local v6, atrUri:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "notificationextras"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 592
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 594
    const-string v0, "status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 595
    .local v10, nStatus:I
    const-string v0, "notificationextras"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 596
    .local v11, strGUID:Ljava/lang/String;
    invoke-static {v10}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 598
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;

    .line 600
    .local v9, listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    const/4 v0, 0x0

    invoke-interface {v9, v11, v0}, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;->onNotificationClick(Ljava/lang/String;Z)V

    goto :goto_0

    .line 603
    .end local v9           #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    :cond_0
    invoke-direct {p0, p1, v11}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->LaunchOnlineSkinfromNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 627
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #nStatus:I
    .end local v11           #strGUID:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v7, :cond_3

    .line 628
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 629
    :cond_2
    const/4 v7, 0x0

    .line 631
    :cond_3
    return-void

    .line 607
    .restart local v10       #nStatus:I
    .restart local v11       #strGUID:Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;

    .line 609
    .restart local v9       #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    const/4 v0, 0x1

    invoke-interface {v9, v11, v0}, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;->onNotificationClick(Ljava/lang/String;Z)V

    goto :goto_2

    .line 613
    .end local v9           #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationextras=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 614
    .local v12, where:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    invoke-direct {p0, p1, v11}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->LaunchSkinPickerfromNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 618
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #nStatus:I
    .end local v11           #strGUID:Ljava/lang/String;
    .end local v12           #where:Ljava/lang/String;
    :cond_6
    const-string v0, "notification_item_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "notification_item_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 620
    .restart local v11       #strGUID:Ljava/lang/String;
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;

    .line 622
    .restart local v9       #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    const/4 v0, 0x1

    invoke-interface {v9, v11, v0}, Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;->onNotificationClick(Ljava/lang/String;Z)V

    goto :goto_3

    .line 625
    .end local v9           #listener:Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;
    :cond_7
    invoke-direct {p0, p1, v11}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->LaunchSkinPickerfromNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static SetDownloadCompleteNotification(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .parameter "strPackageName"
    .parameter "strGUID"
    .parameter "id"

    .prologue
    .line 658
    const v5, 0x1080082

    .line 659
    .local v5, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 661
    .local v10, when:J
    sget-object v12, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v12, p0}, Lcom/htc/util/skin/HtcSkinUtil;->getSkinName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, contentTitle:Ljava/lang/String;
    sget-object v12, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    const v13, 0x7f090040

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, contentText:Ljava/lang/String;
    const-wide/16 v12, -0x1

    cmp-long v12, p2, v12

    if-nez v12, :cond_0

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 666
    .local v4, contentUri:Landroid/net/Uri;
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v7, notifyIntent:Landroid/content/Intent;
    sget-object v12, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string v12, "notification_item_id"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 671
    sget-object v12, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/high16 v14, 0x800

    invoke-static {v12, v13, v7, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 674
    .local v9, pendingIntent:Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6, v5, v3, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 675
    .local v6, notification:Landroid/app/Notification;
    sget-object v12, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v12, v3, v2, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 676
    iget v12, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v6, Landroid/app/Notification;->flags:I

    .line 679
    sget-object v12, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 680
    .local v8, notifyManager:Landroid/app/NotificationManager;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 681
    return-void

    .line 664
    .end local v4           #contentUri:Landroid/net/Uri;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #notifyIntent:Landroid/content/Intent;
    .end local v8           #notifyManager:Landroid/app/NotificationManager;
    .end local v9           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    sget-object v12, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v12, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->OnDownloadManagerComplete(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static cleanPreview(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    .local p1, IdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v5, "clean preview"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 872
    .local v1, id:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewFilePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, portPreview:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/home/personalize/util/FileHelper;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 874
    const/4 v4, 0x2

    invoke-static {p0, v1, v4}, Lcom/htc/home/personalize/util/FileHelper;->getPreviewFilePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, landPreview:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/htc/home/personalize/util/FileHelper;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 877
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #landPreview:Ljava/lang/String;
    .end local v3           #portPreview:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getAvailablePhoneKbSpace()D
    .locals 9

    .prologue
    .line 174
    new-instance v4, Landroid/os/StatFs;

    const-string v5, "/data/"

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 176
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 177
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 178
    .local v0, availableBlocks:J
    long-to-double v5, v0

    long-to-double v7, v2

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4090

    div-double/2addr v5, v7

    return-wide v5
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    const-class v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    .line 72
    :cond_0
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mInstance:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasNextPage()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mbNext:Z

    return v0
.end method

.method private onPhoneStoreageSkinDownloaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "context"
    .parameter "strData"
    .parameter "strGUID"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 634
    const/4 v6, 0x0

    .line 635
    .local v6, bStartInstalling:Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 636
    .local v8, pm:Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    .line 638
    invoke-virtual {v8, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 639
    .local v7, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_0

    .line 641
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, p3, p4, p5}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5}, Lcom/htc/home/personalize/util/FileHelper;->installApk(Landroid/content/Context;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;Ljava/lang/String;)V

    .line 643
    const/4 v6, 0x1

    .line 644
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloaded skin: PackageName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", SkinVersion="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", SkinVerisonName="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v7           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    if-nez v6, :cond_1

    .line 650
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v1, "can not start install apk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-object v1, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_1
    return-void
.end method

.method private updateNotDownloadToDetail(Ljava/lang/String;)V
    .locals 4
    .parameter "strID"

    .prologue
    .line 325
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v1, intentDetails:Landroid/content/Intent;
    const-string v2, "com.htc.store.action.UPDATE_DOWNLOAD_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v2, "requester"

    const-string v3, "com.htc.store_oad"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v0, GUIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v2, "online_item_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 331
    const-string v2, "online_item_content_type"

    const-string v3, "Skin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v2, "download_status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    sget-object v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    return-void
.end method


# virtual methods
.method public CancelDownloadSkinOnIndex(I)V
    .locals 7
    .parameter "nIndex"

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CancelDownloadSkinOnIndex+ : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-ltz p1, :cond_0

    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 261
    :cond_0
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incorrect index. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", skin list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 265
    .local v6, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v1, v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 266
    .local v1, strGUID:Ljava/lang/String;
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/home/personalize/util/SkinDownloadUtils;->CancelDownloadSkinAPK(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const-string v3, ""

    iget-object v4, v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V

    .line 272
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v2, "CancelDownloadSkinOnIndex-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public DownloadSkinOnIndex(I)V
    .locals 8
    .parameter "nIndex"

    .prologue
    const/4 v2, 0x1

    .line 235
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadSkinOnIndex+ : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    .line 238
    .local v7, objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v1, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    .line 241
    .local v1, strGUID:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v0, "storedata_type"

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v0, "store_productid"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const-string v3, ""

    iget-object v4, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v7, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V

    .line 252
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v2, "DownloadSkinOnIndex-"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public IsAvailablePhoneKbSpace(Lcom/htc/home/personalize/storedatamanager/StoreItem;)Z
    .locals 13
    .parameter "objSkin"

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 182
    if-nez p1, :cond_1

    .line 184
    const-string v8, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v9, "can not find corresponding item"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return v7

    .line 188
    :cond_1
    iget-object v6, p1, Lcom/htc/home/personalize/storedatamanager/StoreItem;->contentSize:Ljava/lang/String;

    .line 189
    .local v6, strSkinSize:Ljava/lang/String;
    const-string v9, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Download skin size :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v5, 0x0

    .line 191
    .local v5, strSize:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "kb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 192
    .local v4, nIdx:I
    if-eq v4, v12, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 194
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 195
    const-string v5, "kb"

    .line 198
    :cond_2
    if-nez v5, :cond_3

    .line 200
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mb"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 201
    if-eq v4, v12, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 203
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 204
    const-string v5, "mb"

    .line 212
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 213
    .local v3, fSkinSize:F
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->getAvailablePhoneKbSpace()D

    move-result-wide v1

    .line 214
    .local v1, fAvaiableSize:D
    const-string v9, "mb"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 216
    const/high16 v9, 0x4480

    mul-float/2addr v3, v9

    .line 219
    :cond_4
    const-string v9, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Phone space :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " skin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(in KB)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    float-to-double v9, v3

    cmpg-double v9, v1, v9

    if-gez v9, :cond_0

    move v7, v8

    .line 221
    goto/16 :goto_0

    .line 206
    .end local v1           #fAvaiableSize:D
    .end local v3           #fSkinSize:F
    :cond_5
    const-string v8, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v9, "can not get skin size"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v8, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurs during parse float "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public declared-synchronized RegisterDownloadEventListener(Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 734
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 736
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v1, "invlalid listener array"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :goto_0
    monitor-exit p0

    return-void

    .line 740
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 742
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the listener has been registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 746
    :cond_1
    :try_start_2
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized UnRegisterDownloadEventListener(Lcom/htc/home/personalize/onlineskinmanager/IOnlineDataListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 753
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v2, "invlalid listener array"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 756
    :cond_1
    :try_start_1
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 757
    .local v0, nIndex:I
    if-ltz v0, :cond_0

    .line 758
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mArrayListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 751
    .end local v0           #nIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearSkinList()V
    .locals 1

    .prologue
    .line 834
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 835
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 837
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    .line 838
    return-void
.end method

.method public getSkinList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/home/personalize/storedatamanager/StoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 829
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .locals 4
    .parameter "nIndex"

    .prologue
    const/4 v0, 0x0

    .line 812
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 814
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v2, "skin list is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    return-object v0

    .line 818
    :cond_0
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 820
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is larger than the list size ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 824
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    goto :goto_0
.end method

.method public getStoreDataManager()Lcom/htc/home/personalize/storedatamanager/StoreDataManager;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mStoreManager:Lcom/htc/home/personalize/storedatamanager/StoreDataManager;

    return-object v0
.end method

.method public onEventReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    .line 339
    .local v21, strAction:Ljava/lang/String;
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SkinPicker: onEventReceived : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST_RESPONSE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "Get ACTION_GETITEMLIST_RESPONSE"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v4, "storedata_type"

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 345
    .local v20, storeDataType:I
    if-eqz v20, :cond_1

    .line 346
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not the response for skin. type = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v20           #storeDataType:I
    :cond_0
    :goto_0
    return-void

    .line 349
    .restart local v20       #storeDataType:I
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsRetrievingList:Z

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->LoadSkinFromStoreManagerDB(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    .end local v20           #storeDataType:I
    :cond_2
    const-string v4, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL_RESPONSE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 353
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "Get ACTION_GETDOWNLOADURL_RESPONSE"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v4, "storedata_type"

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 355
    .local v23, type:I
    if-nez v23, :cond_0

    .line 356
    const-string v4, "result_code"

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 357
    .local v19, result:I
    const-string v4, "store_productid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, strProductID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 360
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download has canceled guid = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListPreparingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    if-nez v19, :cond_5

    .line 366
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v17

    .line 367
    .local v17, item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-nez v17, :cond_4

    .line 368
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "Want to download product with id does not contains in SkinList"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_4
    const-string v4, "store_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, strURI:Ljava/lang/String;
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download skin uri success: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v3, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;

    const/4 v4, 0x0

    const-string v7, "application/vnd.android.package-archive"

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    sget-object v9, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-direct/range {v3 .. v9}, Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 375
    .local v3, task:Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;
    new-instance v22, Ljava/lang/Thread;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 376
    .local v22, thread:Ljava/lang/Thread;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 378
    .end local v3           #task:Lcom/htc/home/personalize/onlineskinmanager/DownloadTask;
    .end local v6           #strURI:Ljava/lang/String;
    .end local v17           #item:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    .end local v22           #thread:Ljava/lang/Thread;
    :cond_5
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "download skin uri fail "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v7 .. v12}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 385
    .end local v5           #strProductID:Ljava/lang/String;
    .end local v19           #result:I
    .end local v23           #type:I
    :cond_6
    const-string v4, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 387
    invoke-direct/range {p0 .. p2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->OnNotificationClicked(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 389
    :cond_7
    const-string v4, "android.intent.action.DOWNLOAD_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 391
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$DownloadManagerCompleteTask;-><init>(Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 393
    :cond_8
    const-string v4, "com.htc.store.action.NOTIFY_OAD"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    const-string v4, "online_item_content_type"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 396
    .local v24, viewType:Ljava/lang/String;
    const-string v4, "Skin"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    const-string v4, "online_item_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 401
    .local v8, strID:Ljava/lang/String;
    const-string v4, "online_item_action"

    const/4 v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 402
    .local v13, action:I
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got ACTION_FROM_ASSET_DETAILS, action: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    packed-switch v13, :pswitch_data_0

    .line 470
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unhandled action: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 407
    :pswitch_0
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 408
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v18

    .line 409
    .local v18, objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-nez v18, :cond_a

    .line 410
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "download from detail, objSkin == null. retrieve list first"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->syncSkinList()V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 414
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->IsAvailablePhoneKbSpace(Lcom/htc/home/personalize/storedatamanager/StoreItem;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 415
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->DownLoadSkinbyIntent(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 417
    :cond_b
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "Storage is full"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->updateNotDownloadToDetail(Ljava/lang/String;)V

    .line 419
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    const v7, 0x20c01c2

    const/4 v9, 0x0

    invoke-static {v4, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 427
    .end local v18           #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_c
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 428
    .local v14, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v14, :cond_0

    .line 429
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    iget-object v4, v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 430
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->IsAvailablePhoneKbSpace(Lcom/htc/home/personalize/storedatamanager/StoreItem;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 431
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->DownloadSkinOnIndex(I)V

    goto/16 :goto_0

    .line 433
    :cond_d
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "Storage is full"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->updateNotDownloadToDetail(Ljava/lang/String;)V

    .line 435
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    const v7, 0x20c01c2

    const/4 v9, 0x0

    invoke-static {v4, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 428
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 444
    .end local v14           #count:I
    .end local v16           #i:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsRetrievingList:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_f

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mListWaitingDownloadItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 447
    :cond_f
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-eqz v4, :cond_10

    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_12

    .line 448
    :cond_10
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v18

    .line 449
    .restart local v18       #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    if-nez v18, :cond_11

    .line 450
    const-string v4, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v7, "cancel download from detail, objSkin == null. download skin task not start"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->CancelDownLoadSkinbyIntent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 458
    .end local v18           #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_12
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 459
    .local v15, count2:I
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    .line 460
    sget-object v4, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;

    iget-object v4, v4, Lcom/htc/home/personalize/storedatamanager/StoreItem;->productID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 461
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->CancelDownloadSkinOnIndex(I)V

    goto/16 :goto_0

    .line 459
    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 467
    .end local v15           #count2:I
    .end local v16           #i:I
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->LaunchSkinPickerfromNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized retrieveSkinList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 110
    monitor-enter p0

    :try_start_0
    const-string v2, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v3, "RetrieveSkinList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean v2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsRetrievingList:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v4, :cond_0

    .line 126
    :goto_0
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsRetrievingList:Z

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, intentToService:Landroid/content/Intent;
    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "storedata_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    sget-object v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mSkinList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    sput v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->miBaseIndex:I

    .line 120
    const-string v1, "base_idx"

    sget v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->miBaseIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "page_size"

    sget v2, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->miPageSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsFirstListRetrieve:Z

    .line 125
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    .end local v0           #intentToService:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized syncSkinList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 91
    monitor-enter p0

    :try_start_0
    const-string v1, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    const-string v2, "syncSkinList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-boolean v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsRetrievingList:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsRetrievingList:Z

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intentToService:Landroid/content/Intent;
    const-string v1, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "storedata_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    const-string v1, "base_idx"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    const-string v1, "page_size"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mIsFirstListRetrieve:Z

    .line 105
    sget-object v1, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v0           #intentToService:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
