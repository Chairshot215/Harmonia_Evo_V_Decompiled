.class final Lcom/htc/sdcardwizard/handler/GalleryHandler;
.super Lcom/htc/sdcardwizard/handler/CasperHandler;
.source "GalleryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/handler/GalleryHandler$Item;
    }
.end annotation


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.album"

.field private static final IMAGE_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGE_ITEMS_PROJECTION:[Ljava/lang/String; = null

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image"

.field private static final IMAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "LSW/GalleryHandler"

.field private static final VIDEO_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final VIDEO_ITEMS_PROJECTION:[Ljava/lang/String; = null

.field private static final VIDEO_TYPE:Ljava/lang/String; = "video"

.field private static final VIDEO_URI:Landroid/net/Uri;


# instance fields
.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_URI:Landroid/net/Uri;

    .line 29
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_URI:Landroid/net/Uri;

    .line 162
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_INFO_PROJECTION:[Ljava/lang/String;

    .line 166
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_INFO_PROJECTION:[Ljava/lang/String;

    .line 178
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id AS item_id"

    aput-object v1, v0, v3

    const-string v1, "_display_name AS item_name"

    aput-object v1, v0, v4

    const-string v1, "datetaken AS item_date"

    aput-object v1, v0, v5

    const-string v1, "_size AS item_size"

    aput-object v1, v0, v6

    const-string v1, "\'image\' AS item_icon"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_ITEMS_PROJECTION:[Ljava/lang/String;

    .line 187
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id AS item_id"

    aput-object v1, v0, v3

    const-string v1, "_display_name AS item_name"

    aput-object v1, v0, v4

    const-string v1, "datetaken AS item_date"

    aput-object v1, v0, v5

    const-string v1, "_size AS item_size"

    aput-object v1, v0, v6

    const-string v1, "\'video\' AS item_icon"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_ITEMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 35
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.album"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/CasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->resolver:Landroid/content/ContentResolver;

    .line 37
    return-void
.end method


# virtual methods
.method public deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 8
    .parameter "deletableItems"

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 107
    .local v3, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :try_start_0
    iget-object v4, p0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, count:I
    if-lez v0, :cond_0

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getExtraData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 110
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getExtraData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0           #count:I
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LSW/GalleryHandler"

    const-string v5, "Items can\'t be deleted"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :cond_1
    return-void
.end method

.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->GALLERY:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 14

    .prologue
    .line 41
    const/4 v6, 0x0

    .line 42
    .local v6, count:I
    const-wide/16 v10, 0x0

    .line 44
    .local v10, size:J
    const/4 v7, 0x0

    .line 46
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v8, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v12, v0, [Landroid/database/Cursor;

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v12, v13

    invoke-direct {v8, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v7           #cursor:Landroid/database/Cursor;
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-long/2addr v10, v0

    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 54
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :cond_1
    if-eqz v8, :cond_4

    .line 60
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .line 63
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    invoke-direct {v0, v6, v10, v11}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v0

    .line 56
    :catch_0
    move-exception v9

    .line 57
    .local v9, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v0, "LSW/GalleryHandler"

    const-string v1, "Couldn\'t get info"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    if-eqz v7, :cond_2

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 59
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_3

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 59
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_2

    .line 56
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_1

    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_4
    move-object v7, v8

    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f04001b

    return v0
.end method

.method public getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 21

    .prologue
    .line 68
    new-instance v19, Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct/range {v19 .. v19}, Lcom/htc/sdcardwizard/handler/SDCardItems;-><init>()V

    .line 70
    .local v19, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    const/4 v11, 0x0

    .line 72
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v12, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v9, v4, [Landroid/database/Cursor;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_ITEMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    aput-object v4, v9, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sdcardwizard/handler/GalleryHandler;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_URI:Landroid/net/Uri;

    sget-object v5, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_ITEMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    aput-object v4, v9, v20

    invoke-direct {v12, v9}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v11           #cursor:Landroid/database/Cursor;
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 79
    .local v17, id:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, name:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 81
    .local v13, date:J
    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 82
    .local v7, size:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-static {v4, v7, v8, v13, v14}, Lcom/htc/sdcardwizard/utils/Formatter;->size_date(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, desc:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 84
    .local v16, icon:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, data:Ljava/lang/String;
    const-string v4, "image"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 87
    .local v18, isImage:Z
    new-instance v3, Lcom/htc/sdcardwizard/handler/SDCardItem;

    if-eqz v18, :cond_3

    sget-object v4, Lcom/htc/sdcardwizard/handler/GalleryHandler;->IMAGE_URI:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdcardwizard/handler/GalleryHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v9, v0, v1, v2}, Lcom/htc/sdcardwizard/utils/IconHelper;->getThumbnail(Landroid/content/Context;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct/range {v3 .. v10}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 88
    .local v3, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sdcardwizard/handler/SDCardItems;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    sget-object v4, Lcom/htc/sdcardwizard/handler/SDCardItem;->sizeComparator:Ljava/util/Comparator;

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .end local v3           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #desc:Ljava/lang/String;
    .end local v7           #size:J
    .end local v10           #data:Ljava/lang/String;
    .end local v13           #date:J
    .end local v16           #icon:Ljava/lang/String;
    .end local v17           #id:Ljava/lang/String;
    .end local v18           #isImage:Z
    :cond_1
    if-eqz v12, :cond_5

    .line 97
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .line 100
    .end local v12           #cursor:Landroid/database/Cursor;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v19

    .line 87
    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #desc:Ljava/lang/String;
    .restart local v7       #size:J
    .restart local v10       #data:Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #date:J
    .restart local v16       #icon:Ljava/lang/String;
    .restart local v17       #id:Ljava/lang/String;
    .restart local v18       #isImage:Z
    :cond_3
    :try_start_2
    sget-object v4, Lcom/htc/sdcardwizard/handler/GalleryHandler;->VIDEO_URI:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 93
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #desc:Ljava/lang/String;
    .end local v7           #size:J
    .end local v10           #data:Ljava/lang/String;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #date:J
    .end local v16           #icon:Ljava/lang/String;
    .end local v17           #id:Ljava/lang/String;
    .end local v18           #isImage:Z
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 94
    .local v15, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v4, "LSW/GalleryHandler"

    const-string v9, "Couldn\'t get items"

    invoke-static {v4, v9, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-eqz v11, :cond_2

    .line 97
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 96
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v11, :cond_4

    .line 97
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 96
    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    move-object v11, v12

    .end local v12           #cursor:Landroid/database/Cursor;
    .restart local v11       #cursor:Landroid/database/Cursor;
    goto :goto_3

    .line 93
    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v15

    move-object v11, v12

    .end local v12           #cursor:Landroid/database/Cursor;
    .restart local v11       #cursor:Landroid/database/Cursor;
    goto :goto_2

    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_5
    move-object v11, v12

    .end local v12           #cursor:Landroid/database/Cursor;
    .restart local v11       #cursor:Landroid/database/Cursor;
    goto :goto_1
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 154
    const v0, 0x7f040024

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/GalleryHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f040023

    return v0
.end method

.method public moveItemsToSd(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 135
    return-void
.end method
