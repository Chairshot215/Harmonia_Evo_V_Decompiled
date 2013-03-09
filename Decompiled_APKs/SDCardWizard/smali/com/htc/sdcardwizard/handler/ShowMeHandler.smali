.class final Lcom/htc/sdcardwizard/handler/ShowMeHandler;
.super Lcom/htc/sdcardwizard/handler/CasperHandler;
.source "ShowMeHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.showme"

.field private static final COUNT_COLUMN_NAME:Ljava/lang/String; = "items_count"

.field private static final ITEMS_PROJECTION:[Ljava/lang/String; = null

.field private static final PROVIDER_PATH:Ljava/lang/String; = "content://com.htc.showme.cleaner/"

.field private static final SIZE_COLUMN_NAME:Ljava/lang/String; = "items_size"

.field private static final TAG:Ljava/lang/String; = "LSCW/ShowMeHandler"

.field private static final URI_DELETE:Landroid/net/Uri;

.field private static final URI_INFO:Landroid/net/Uri;

.field private static final URI_ITEMS:Landroid/net/Uri;


# instance fields
.field private final infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "content://com.htc.showme.cleaner/info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->URI_INFO:Landroid/net/Uri;

    .line 22
    const-string v0, "content://com.htc.showme.cleaner/get"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->URI_ITEMS:Landroid/net/Uri;

    .line 23
    const-string v0, "content://com.htc.showme.cleaner/delete"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->URI_DELETE:Landroid/net/Uri;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "item_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "item_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "item_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "item_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->ITEMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "owner"

    .prologue
    .line 39
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.showme"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/CasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 40
    new-instance v0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;

    sget-object v2, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->URI_INFO:Landroid/net/Uri;

    const-string v3, "items_count"

    const-string v4, "items_size"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    .line 41
    return-void
.end method


# virtual methods
.method public deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 8
    .parameter "deletableItems"

    .prologue
    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 86
    .local v3, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v3           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    :try_start_0
    iget-object v5, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 91
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->URI_DELETE:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "LSCW/ShowMeHandler"

    const-string v6, "Items can\'t be deleted"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->SHOW_ME:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    invoke-interface {v0}, Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;->get()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f04001b

    return v0
.end method

.method public getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 14

    .prologue
    .line 50
    new-instance v11, Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct {v11}, Lcom/htc/sdcardwizard/handler/SDCardItems;-><init>()V

    .line 52
    .local v11, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    const/4 v7, 0x0

    .line 54
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v12, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->URI_ITEMS:Landroid/net/Uri;

    sget-object v2, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->ITEMS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 59
    :cond_0
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, id:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, name:Ljava/lang/String;
    const/4 v12, 0x2

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 62
    .local v8, date:J
    const/4 v12, 0x3

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 64
    .local v5, size:J
    iget-object v12, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-static {v12, v5, v6, v8, v9}, Lcom/htc/sdcardwizard/utils/Formatter;->size_date(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, desc:Ljava/lang/String;
    new-instance v1, Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-direct/range {v1 .. v6}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 67
    .local v1, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v11, v1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 69
    sget-object v12, Lcom/htc/sdcardwizard/handler/SDCardItem;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #desc:Ljava/lang/String;
    .end local v5           #size:J
    .end local v8           #date:J
    :cond_1
    if-eqz v7, :cond_2

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 79
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_2
    :goto_0
    return-object v11

    .line 72
    :catch_0
    move-exception v10

    .line 73
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v12, "LSCW/ShowMeHandler"

    const-string v13, "Couldn\'t get items"

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-eqz v7, :cond_2

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 75
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v7, :cond_3

    .line 76
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v12
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 128
    const v0, 0x7f040028

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/ShowMeHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 108
    const v0, 0x7f040027

    return v0
.end method

.method public final isInstalled()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const-string v1, "com.htc.showme"

    invoke-static {v0, v1}, Lcom/htc/sdcardwizard/utils/IconHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final moveItemsToSd(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 104
    return-void
.end method
