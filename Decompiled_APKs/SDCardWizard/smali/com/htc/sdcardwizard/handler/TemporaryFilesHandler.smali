.class final Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;
.super Lcom/htc/sdcardwizard/handler/SDCardPureHandler;
.source "TemporaryFilesHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSCW/TemporaryFilesHandler"


# instance fields
.field private final infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

.field private final pathes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "owner"

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, v2}, Lcom/htc/sdcardwizard/handler/SDCardPureHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 22
    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getTemporaryFilesPaths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;->pathes:[Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;->pathes:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/FileCategoryInfoGetter;-><init>([Ljava/lang/String;Ljava/io/FileFilter;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    .line 24
    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 9

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;->pathes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 37
    .local v4, path:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4, v6}, Lcom/htc/sdcardwizard/utils/FileHelper;->deleteDirectory(Ljava/lang/String;Ljava/io/FileFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "LSCW/TemporaryFilesHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Path can\'t be deleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #path:Ljava/lang/String;
    :cond_0
    new-instance v5, Landroid/media/MediaScanner;

    iget-object v6, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 55
    .local v5, scanner:Landroid/media/MediaScanner;
    iget-object v6, p0, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;->pathes:[Ljava/lang/String;

    const-string v7, "external"

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    invoke-interface {v0}, Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;->get()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public showDeleteScreen(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const-class v2, Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/htc/sdcardwizard/handler/CategoryID;->TEMP_FILES:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-static {v0, v1}, Lcom/htc/sdcardwizard/handler/TemporaryFilesHandler;->putCategoryID(Landroid/content/Intent;Lcom/htc/sdcardwizard/handler/CategoryID;)V

    .line 64
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 65
    return-void
.end method
