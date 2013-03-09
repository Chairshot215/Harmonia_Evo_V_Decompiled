.class final Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;
.super Lcom/htc/sdcardwizard/handler/CasperHandler;
.source "AttachmentsMailHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.android.mail"

.field private static final IDX_ITEM_FILENAME:I = 0x1

.field private static final IDX_ITEM_FILEPATH:I = 0x2

.field private static final MAIL_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final MAIL_ITEMS_PROJECTION:[Ljava/lang/String; = null

.field private static final MAIL_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "LSCW/AttachmentsMailHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getAttachmentsMailUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->MAIL_URI:Landroid/net/Uri;

    .line 23
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_filepath"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->MAIL_INFO_PROJECTION:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_filename"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "_filepath"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->MAIL_ITEMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 37
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.android.mail"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/CasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 38
    return-void
.end method


# virtual methods
.method public deleteItems(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 9
    .parameter "deletableItems"

    .prologue
    .line 115
    new-instance v4, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;

    invoke-direct {v4, p0}, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;-><init>(Lcom/htc/sdcardwizard/handler/CasperHandler;)V

    .line 116
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

    .line 117
    .local v2, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, itemId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 120
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    .line 121
    .local v5, success:Z
    if-eqz v5, :cond_1

    .line 122
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/htc/sdcardwizard/handler/CasperHandler$MediaScannerNotifier;->scan(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v6, "LSCW/AttachmentsMailHandler"

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v5           #success:Z
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LSCW/AttachmentsMailHandler"

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

    .line 125
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v5       #success:Z
    :cond_1
    :try_start_1
    const-string v6, "LSCW/AttachmentsMailHandler"

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

    .line 132
    .end local v2           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v3           #itemId:Ljava/lang/String;
    .end local v5           #success:Z
    :cond_2
    return-void
.end method

.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->ATTACHMENTS_MAIL:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getCategoryInfo()Lcom/htc/sdcardwizard/handler/CategoryInfo;
    .locals 13

    .prologue
    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, count:I
    const-wide/16 v11, 0x0

    .line 45
    .local v11, size:J
    const/4 v7, 0x0

    .line 47
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->MAIL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->MAIL_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    :cond_0
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, filePath:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 66
    .end local v10           #filePath:Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_3
    :goto_1
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryInfo;

    invoke-direct {v0, v6, v11, v12}, Lcom/htc/sdcardwizard/handler/CategoryInfo;-><init>(IJ)V

    return-object v0

    .line 54
    .restart local v10       #filePath:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v9}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    add-long/2addr v11, v0

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 63
    .end local v9           #file:Ljava/io/File;
    .end local v10           #filePath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 64
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "LSCW/AttachmentsMailHandler"

    const-string v1, "Couldn\'t get info"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    if-eqz v7, :cond_3

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 66
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 165
    const v0, 0x7f04001b

    return v0
.end method

.method public getItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 14

    .prologue
    .line 75
    new-instance v11, Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct {v11}, Lcom/htc/sdcardwizard/handler/SDCardItems;-><init>()V

    .line 77
    .local v11, items:Lcom/htc/sdcardwizard/handler/SDCardItems;
    const/4 v6, 0x0

    .line 79
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v12, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->MAIL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->MAIL_ITEMS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    if-eqz v6, :cond_2

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 83
    :cond_0
    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, fileName:Ljava/lang/String;
    const/4 v12, 0x2

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 99
    :cond_1
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    .line 100
    sget-object v12, Lcom/htc/sdcardwizard/handler/SDCardItem;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_3
    :goto_1
    return-object v11

    .line 89
    .restart local v1       #filePath:Ljava/lang/String;
    .restart local v2       #fileName:Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 93
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 94
    .local v4, size:J
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 95
    .local v7, date:J
    iget-object v12, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    invoke-static {v12, v4, v5, v7, v8}, Lcom/htc/sdcardwizard/utils/Formatter;->size_date(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, desc:Ljava/lang/String;
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdcardwizard/handler/SDCardItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    .local v0, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v11, v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    .end local v0           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #desc:Ljava/lang/String;
    .end local v4           #size:J
    .end local v7           #date:J
    .end local v10           #file:Ljava/io/File;
    :catch_0
    move-exception v9

    .line 104
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v12, "LSCW/AttachmentsMailHandler"

    const-string v13, "Couldn\'t get items"

    invoke-static {v12, v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    if-eqz v6, :cond_3

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 106
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_5

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v12
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f040022

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/AttachmentsMailHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 160
    const v0, 0x7f040021

    return v0
.end method

.method public moveItemsToSd(Lcom/htc/sdcardwizard/handler/SDCardItems;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 156
    return-void
.end method
