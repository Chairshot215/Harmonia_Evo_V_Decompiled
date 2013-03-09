.class Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "OnlineSkinRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkinInstalledObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:J

.field private mstrGUID:Ljava/lang/String;

.field private mstrPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "packageName"
    .parameter "strGUID"
    .parameter "id"

    .prologue
    .line 845
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mContext:Landroid/content/Context;

    .line 846
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrPackageName:Ljava/lang/String;

    .line 847
    iput-object p2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    .line 848
    iput-wide p3, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mId:J

    .line 849
    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 8
    .parameter "packageName"
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x0

    .line 852
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skin"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "has been installed. return code = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 855
    const-string v0, "HomePersonalize SkinPicker.OnlineSkinRetriever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install and add to notification : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v6

    .line 857
    .local v6, objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrPackageName:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    #calls: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V
    invoke-static {v0, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$400(Ljava/lang/String;I)V

    .line 859
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mId:J

    invoke-static {v0, v1, v2, v3}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->SetDownloadCompleteNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 866
    :goto_0
    return-void

    .line 861
    .end local v6           #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataManager;->loadStoreItemByProductId(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v6

    .line 862
    .restart local v6       #objSkin:Lcom/htc/home/personalize/storedatamanager/StoreItem;
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrPackageName:Ljava/lang/String;

    iget-object v4, v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;->displayName:Ljava/lang/String;

    iget-object v5, v6, Lcom/htc/home/personalize/storedatamanager/StoreItem;->versionCode:Ljava/lang/String;

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;->SetDownloadStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mstrGUID:Ljava/lang/String;

    #calls: Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->NotifyDownloadStateChanged(Ljava/lang/String;I)V
    invoke-static {v0, v7}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->access$400(Ljava/lang/String;I)V

    .line 864
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever$SkinInstalledObserver;->mContext:Landroid/content/Context;

    const v1, 0x7f09000f

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_0
.end method
