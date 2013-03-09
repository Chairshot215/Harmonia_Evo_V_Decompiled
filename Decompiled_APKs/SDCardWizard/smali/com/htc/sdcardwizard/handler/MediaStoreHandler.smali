.class abstract Lcom/htc/sdcardwizard/handler/MediaStoreHandler;
.super Lcom/htc/sdcardwizard/handler/CasperHandler;
.source "MediaStoreHandler.java"


# static fields
.field private static final CATEGORY_INFO_URI:Landroid/net/Uri; = null

.field private static final COUNT_COLUMN_NAME:Ljava/lang/String; = "COUNT(*)"

.field private static final INDEX_ALBUM_ID:I = 0x4

.field private static final INDEX_DATA:I = 0x5

.field private static final INDEX_DATE:I = 0x2

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_NAME:I = 0x1

.field private static final INDEX_SIZE:I = 0x3

.field private static final ITEMS_PROJECTION:[Ljava/lang/String; = null

.field private static final MILISECONDS_IN_SECOND:I = 0x3e8

.field private static final SIZE_COLUMN_NAME:Ljava/lang/String; = "SUM(_size)"

.field private static final TAG:Ljava/lang/String; = "LSCW/MediaStoreHandler"


# instance fields
.field private final infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

.field private final selection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->CATEGORY_INFO_URI:Landroid/net/Uri;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->ITEMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V
    .locals 6
    .parameter "owner"
    .parameter "iconGetter"
    .parameter "info_selection"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/htc/sdcardwizard/handler/CasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 128
    new-instance v0, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;

    sget-object v2, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->CATEGORY_INFO_URI:Landroid/net/Uri;

    const-string v3, "COUNT(*)"

    const-string v4, "SUM(_size)"

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdcardwizard/handler/CursorCategoryInfoGetter;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    .line 129
    iput-object p3, p0, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->selection:Ljava/lang/String;

    .line 130
    return-void
.end method

.method private static getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "_size DESC"

    return-object v0
.end method


# virtual methods
.method public final deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 8
    .parameter "deletableItems"

    .prologue
    .line 91
    iget-object v5, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 92
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 94
    .local v3, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :try_start_0
    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, count:I
    if-lez v0, :cond_0

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getExtraData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getExtraData()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "LSCW/MediaStoreHandler"

    const-string v6, "Items can\'t be deleted"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :cond_1
    return-void
.end method

.method public final getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->infoGetter:Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;

    invoke-interface {v0}, Lcom/htc/sdcardwizard/handler/CategoryInfoGetter;->get()Lcom/htc/sdcardwizard/handler/CategoryInfo;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDirectoryOnSd()Ljava/lang/String;
.end method

.method protected abstract getItemIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method

.method public final getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 21

    .prologue
    .line 59
    new-instance v16, Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct/range {v16 .. v16}, Lcom/htc/sdcardwizard/handler/SDCardItems;-><init>()V

    .line 60
    .local v16, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->CATEGORY_INFO_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->ITEMS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->selection:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->getSortOrder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 66
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 68
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->getSelectAllIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 69
    .local v13, defaultIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 70
    const/4 v8, 0x0

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 71
    .local v15, id:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v11, v17, v19

    .line 73
    .local v11, date:J
    const/4 v8, 0x3

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v6, v8

    .line 74
    .local v6, size:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-static {v8, v6, v7, v11, v12}, Lcom/htc/sdcardwizard/utils/Formatter;->size_date(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, desc:Ljava/lang/String;
    const/4 v8, 0x4

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, icon:Ljava/lang/String;
    const/4 v8, 0x5

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, data:Ljava/lang/String;
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, itemId:Ljava/lang/String;
    new-instance v2, Lcom/htc/sdcardwizard/handler/SDCardItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;->getItemIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct/range {v2 .. v9}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 80
    .local v2, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/sdcardwizard/handler/SDCardItems;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    .end local v2           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v3           #itemId:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #desc:Ljava/lang/String;
    .end local v6           #size:J
    .end local v9           #data:Ljava/lang/String;
    .end local v11           #date:J
    .end local v13           #defaultIcon:Landroid/graphics/drawable/Drawable;
    .end local v14           #icon:Ljava/lang/String;
    .end local v15           #id:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v8

    .restart local v13       #defaultIcon:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 86
    .end local v13           #defaultIcon:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v16
.end method

.method public moveItemsToSd(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 121
    return-void
.end method
