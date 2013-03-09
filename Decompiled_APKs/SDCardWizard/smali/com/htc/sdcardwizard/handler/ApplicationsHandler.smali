.class final Lcom/htc/sdcardwizard/handler/ApplicationsHandler;
.super Lcom/htc/sdcardwizard/handler/CasperHandler;
.source "ApplicationsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;,
        Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;,
        Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;,
        Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;
    }
.end annotation


# static fields
.field private static final DELETE_OPERATION_WAIT_TIME:I = 0x3a98

.field private static final GET_SIZE_OPERATION_WAIT_TIME:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "LSCW/ApplicationsHandler"


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/CasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->packageManager:Landroid/content/pm/PackageManager;

    .line 33
    return-void
.end method

.method static synthetic access$300(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getApplicationInfo(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;)V
    .locals 9
    .parameter "operation"

    .prologue
    .line 115
    iget-object v6, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, appInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;-><init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V

    .line 118
    .local v4, observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;
    iget-object v6, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {p1, v6, v4, v7}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->setParams(Landroid/content/pm/PackageManager;Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;Landroid/content/Context;)V

    .line 120
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->isStorageMounted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 122
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-lez v6, :cond_0

    .line 123
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 125
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;->invokeGetSize(Ljava/lang/String;)V

    .line 127
    monitor-enter v4

    .line 129
    const-wide/16 v6, 0x7d0

    :try_start_0
    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-virtual {p1, v5, v0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->exec(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "LSCW/ApplicationsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed computing size for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 139
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private isStorageMounted()Z
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUnmounted()Z
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 7
    .parameter "deletableItems"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->isUnmounted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    :cond_0
    return-void

    .line 57
    :cond_1
    new-instance v3, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;

    invoke-direct {v3, p0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;-><init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler;)V

    .line 66
    .local v3, observer:Landroid/content/pm/IPackageDeleteObserver$Stub;
    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 68
    .local v2, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :try_start_0
    iget-object v4, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 69
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const-wide/16 v4, 0x3a98

    :try_start_1
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LSCW/ApplicationsHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package can\'t be deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->APPLICATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;-><init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V

    .line 38
    .local v0, infoOperation:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;
    invoke-direct {p0, v0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->getApplicationInfo(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;)V

    .line 40
    new-instance v1, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->getCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$CategoryInfoOperation;->getSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v1
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f04001f

    return v0
.end method

.method public getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 3

    .prologue
    .line 45
    new-instance v1, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;-><init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V

    .line 46
    .local v1, itemsOperation:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;
    invoke-direct {p0, v1}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler;->getApplicationInfo(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;)V

    .line 47
    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$ItemsOperation;->getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;

    move-result-object v0

    .line 48
    .local v0, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    sget-object v2, Lcom/htc/sdcardwizard/handler/SDCardItem;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f040020

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const v1, 0x208034d

    invoke-static {v0, v1}, Lcom/htc/sdcardwizard/utils/IconHelper;->loadIconByResourceId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f04001e

    return v0
.end method

.method public final moveItemsToSd(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 83
    return-void
.end method
