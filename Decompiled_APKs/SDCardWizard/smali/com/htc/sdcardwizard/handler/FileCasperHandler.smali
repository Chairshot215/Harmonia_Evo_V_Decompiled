.class abstract Lcom/htc/sdcardwizard/handler/FileCasperHandler;
.super Lcom/htc/sdcardwizard/handler/CasperHandler;
.source "FileCasperHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LSCW/FileCasperHandler"


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V
    .locals 0
    .parameter "owner"
    .parameter "iconGetter"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/htc/sdcardwizard/handler/CasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 48
    return-void
.end method

.method private final getFileFilter()Ljava/io/FileFilter;
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, filter:Ljava/io/FileFilter;
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getFilter()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 118
    const-string v2, "."

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/htc/sdcardwizard/utils/HiddensFileFilter;

    .end local v0           #filter:Ljava/io/FileFilter;
    invoke-direct {v0}, Lcom/htc/sdcardwizard/utils/HiddensFileFilter;-><init>()V

    .line 121
    .restart local v0       #filter:Ljava/io/FileFilter;
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    new-instance v0, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;

    .end local v0           #filter:Ljava/io/FileFilter;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/htc/sdcardwizard/utils/ExtentionsFileFilter;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 9
    .parameter "deletableItems"

    .prologue
    .line 56
    new-instance v4, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;

    invoke-direct {v4, p0}, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;-><init>(Lcom/htc/sdcardwizard/handler/CasperHandler;)V

    .line 57
    .local v4, scanner:Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;
    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 58
    .local v2, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, itemId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    .line 62
    .local v5, success:Z
    if-eqz v5, :cond_1

    .line 63
    const-string v6, "LSCW/FileCasperHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is deleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->scan(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->onDeleteItem(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v5           #success:Z
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LSCW/FileCasperHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File can\'t be deleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #success:Z
    :cond_1
    :try_start_1
    const-string v6, "LSCW/FileCasperHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is not deleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v2           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v3           #itemId:Ljava/lang/String;
    .end local v5           #success:Z
    :cond_2
    return-void
.end method

.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 5

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getFileFilter()Ljava/io/FileFilter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sdcardwizard/utils/FileHelper;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;

    move-result-object v0

    .line 28
    .local v0, files:Lcom/htc/sdcardwizard/utils/FileList;
    new-instance v1, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/utils/FileList;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/utils/FileList;->getTotalSize()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v1
.end method

.method protected abstract getFilter()Ljava/lang/String;
.end method

.method protected getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "path"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 13

    .prologue
    .line 33
    new-instance v10, Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct {v10}, Lcom/htc/sdcardwizard/handler/SDCardItems;-><init>()V

    .line 35
    .local v10, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getFileFilter()Ljava/io/FileFilter;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sdcardwizard/utils/FileHelper;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;

    move-result-object v8

    .line 36
    .local v8, files:Lcom/htc/sdcardwizard/utils/FileList;
    invoke-virtual {v8}, Lcom/htc/sdcardwizard/utils/FileList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 37
    .local v7, file:Ljava/io/File;
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-static {v1, v4, v5, v11, v12}, Lcom/htc/sdcardwizard/utils/Formatter;->size_date(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, desc:Ljava/lang/String;
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;)V

    .line 39
    .local v0, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v10, v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v0           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v3           #desc:Ljava/lang/String;
    .end local v7           #file:Ljava/io/File;
    :cond_0
    sget-object v1, Lcom/htc/sdcardwizard/handler/SDCardItem;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v10, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 43
    return-object v10
.end method

.method protected abstract getPath()Ljava/lang/String;
.end method

.method public final moveItemsToSd(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 101
    return-void
.end method

.method protected onDeleteItem(Ljava/lang/String;)V
    .locals 0
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method
