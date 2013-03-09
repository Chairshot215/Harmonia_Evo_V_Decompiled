.class public Lcom/htc/home/personalize/olrespicker/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "test class to download resources requested from send2phone"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 26
    const-string v7, "GUID"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, guid:Ljava/lang/String;
    const-string v7, "TYPE"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 28
    .local v6, type:I
    const-string v7, "DownloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadService.onHandleIntent: guid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v7, 0x1

    invoke-static {v6, p0, v7}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;Z)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v4

    .line 31
    .local v4, list:Lcom/htc/home/personalize/localresource/LocalResourceList;
    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 32
    .local v3, lRes:Lcom/htc/home/personalize/localresource/LocalResource;
    :goto_0
    invoke-static {v2, v6, p0}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->getOnlineResourceByGuid(Ljava/lang/String;ILandroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v5

    .line 34
    .local v5, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    const-string v7, "DownloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadService.onHandleIntent: res="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    .line 36
    invoke-static {p0, v6, v5}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getResourcePath(Landroid/content/Context;ILcom/htc/home/personalize/abstractresource/Resource;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p0}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getInstance2(ILandroid/content/Context;)Lcom/htc/home/personalize/localresource/LocalResourceList;

    move-result-object v8

    invoke-static {v7, v5, v8, p0}, Lcom/htc/home/personalize/localresource/LocalResource;->check(Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource;Lcom/htc/home/personalize/localresource/LocalResourceList;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, details:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v1, downloadIntent:Landroid/content/Intent;
    const-string v7, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v7, "storedata_type"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string v7, "store_productid"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {p0, v1, v2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->startGetDownloadUrl(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 52
    .end local v0           #details:Ljava/io/File;
    .end local v1           #downloadIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 31
    .end local v3           #lRes:Lcom/htc/home/personalize/localresource/LocalResource;
    .end local v5           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_1
    invoke-virtual {v4, v2}, Lcom/htc/home/personalize/localresource/LocalResourceList;->getByGuid(Ljava/lang/String;)Lcom/htc/home/personalize/localresource/LocalResource;

    move-result-object v3

    goto :goto_0
.end method
