.class final Lcom/htc/sdcardwizard/handler/WallpaperHandler;
.super Lcom/htc/sdcardwizard/handler/FileCasperHandler;
.source "WallpaperHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/handler/WallpaperHandler$NameLikeFilter;
    }
.end annotation


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.home.personalize"

.field private static final FILTER:Ljava/lang/String; = "THUMBNAIL_PORTRAIT"

.field private static final TAG:Ljava/lang/String; = "LSCW/WallpaperHandler"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 20
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.home.personalize"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getWallpaperDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 13
    .parameter "deletableItems"

    .prologue
    .line 67
    const-string v0, ""

    .line 68
    .local v0, BLANK:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 69
    .local v7, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v7}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, itemId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 71
    const-string v10, "THUMBNAIL_PORTRAIT"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, baseName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/WallpaperHandler;->getPath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/htc/sdcardwizard/handler/WallpaperHandler$NameLikeFilter;

    invoke-direct {v11, v1}, Lcom/htc/sdcardwizard/handler/WallpaperHandler$NameLikeFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/htc/sdcardwizard/utils/FileHelper;->getFileList(Ljava/lang/String;Ljava/io/FileFilter;)Lcom/htc/sdcardwizard/utils/FileList;

    move-result-object v4

    .line 73
    .local v4, files:Lcom/htc/sdcardwizard/utils/FileList;
    invoke-virtual {v4}, Lcom/htc/sdcardwizard/utils/FileList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 75
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v9

    .line 76
    .local v9, success:Z
    if-eqz v9, :cond_1

    .line 77
    const-string v10, "LSCW/WallpaperHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File is deleted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v9           #success:Z
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "LSCW/WallpaperHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File can\'t be deleted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 79
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v9       #success:Z
    :cond_1
    :try_start_1
    const-string v10, "LSCW/WallpaperHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File is not deleted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    .end local v1           #baseName:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #files:Lcom/htc/sdcardwizard/utils/FileList;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v8           #itemId:Ljava/lang/String;
    .end local v9           #success:Z
    :cond_2
    return-void
.end method

.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->WALLPAPER:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f04001b

    return v0
.end method

.method protected getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "THUMBNAIL_PORTRAIT"

    return-object v0
.end method

.method protected getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "path"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/htc/sdcardwizard/utils/IconHelper;->loadIconByFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f040032

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/WallpaperHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f040031

    return v0
.end method
