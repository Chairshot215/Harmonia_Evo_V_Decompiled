.class public Lcom/htc/musicenhancer/provider/ProviderTestActivity;
.super Landroid/app/Activity;
.source "ProviderTestActivity.java"


# static fields
.field private static final MENU_ITEM_TEST_DELETE:I = 0x3

.field private static final MENU_ITEM_TEST_DELETE_ID:I = 0x6

.field private static final MENU_ITEM_TEST_DELETE_SETTING:I = 0xa

.field private static final MENU_ITEM_TEST_INSERT:I = 0x0

.field private static final MENU_ITEM_TEST_INSERT_SETTING:I = 0x7

.field private static final MENU_ITEM_TEST_QUERY:I = 0x1

.field private static final MENU_ITEM_TEST_QUERY_ID:I = 0x4

.field private static final MENU_ITEM_TEST_QUERY_SETTING:I = 0x8

.field private static final MENU_ITEM_TEST_UPDATE:I = 0x2

.field private static final MENU_ITEM_TEST_UPDATE_ID:I = 0x5

.field private static final MENU_ITEM_TEST_UPDATE_SETTING:I = 0x9

.field private static final MSG_WHAT_TEST_DELETE:I = 0x3

.field private static final MSG_WHAT_TEST_DELETE_ID:I = 0x6

.field private static final MSG_WHAT_TEST_DELETE_SETTING:I = 0xa

.field private static final MSG_WHAT_TEST_INSERT:I = 0x0

.field private static final MSG_WHAT_TEST_INSERT_SETTING:I = 0x7

.field private static final MSG_WHAT_TEST_QUERY:I = 0x1

.field private static final MSG_WHAT_TEST_QUERY_ID:I = 0x4

.field private static final MSG_WHAT_TEST_QUERY_SETTING:I = 0x8

.field private static final MSG_WHAT_TEST_UPDATE:I = 0x2

.field private static final MSG_WHAT_TEST_UPDATE_ID:I = 0x5

.field private static final MSG_WHAT_TEST_UPDATE_SETTING:I = 0x9

.field private static final TAG:Ljava/lang/String; = "[ProviderTestActivity]"


# instance fields
.field private final mCursorColumns:[Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mMediaColumns:[Ljava/lang/String;

.field private final mSettingColumns:[Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dl_album_id"

    aput-object v1, v0, v3

    const-string v1, "dl_album_key"

    aput-object v1, v0, v4

    const-string v1, "dl_data"

    aput-object v1, v0, v5

    const-string v1, "dl_data_backup"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "dl_is_failed"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mCursorColumns:[Ljava/lang/String;

    .line 27
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_key"

    aput-object v1, v0, v4

    const-string v1, "album_art"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mMediaColumns:[Ljava/lang/String;

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "auto_download"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mSettingColumns:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    .line 58
    new-instance v0, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity$1;-><init>(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testQuery()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testDelete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/musicenhancer/provider/ProviderTestActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testQuery(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/musicenhancer/provider/ProviderTestActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/musicenhancer/provider/ProviderTestActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testDelete(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testQuerySetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/musicenhancer/provider/ProviderTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->testUpdateSetting()Z

    move-result v0

    return v0
.end method

.method private testDelete()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 365
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 366
    .local v3, startMillis:J
    sget-object v5, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rows"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    const-string v5, "[ProviderTestActivity]"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-gtz v0, :cond_0

    .line 373
    const/4 v5, 0x0

    .line 376
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private testDelete(I)Z
    .locals 8
    .parameter "rowId"

    .prologue
    const/4 v7, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 382
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 383
    .local v3, startMillis:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 386
    .local v0, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to delete one row"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const-string v5, "[ProviderTestActivity]"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-gtz v0, :cond_0

    .line 391
    const/4 v5, 0x0

    .line 394
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private testDeleteSetting()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 400
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 401
    .local v3, startMillis:J
    sget-object v5, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 402
    .local v0, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It takes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to delete setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    if-gtz v0, :cond_0

    .line 406
    const/4 v5, 0x0

    .line 409
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private testInsert()Z
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mMediaColumns:[Ljava/lang/String;

    const-string v5, "album_key"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 199
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v1, v13

    .line 228
    :goto_0
    return v1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v6, 0x0

    .line 204
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "dl_album_id"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v1, "dl_album_key"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "dl_data"

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 212
    .local v9, startMillis:J
    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 213
    .local v11, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to insert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, result:Ljava/lang/String;
    const-string v1, "[ProviderTestActivity]"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    add-int/lit8 v6, v6, 0x1

    .line 218
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total insert + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 226
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 227
    const-string v1, "[ProviderTestActivity]"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v14

    .line 228
    goto/16 :goto_0

    .line 220
    .end local v8           #result:Ljava/lang/String;
    .end local v9           #startMillis:J
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v13

    .line 221
    goto/16 :goto_0
.end method

.method private testInsertSetting(I)Z
    .locals 10
    .parameter "autoDownload"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_0

    .line 233
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unsupported download setting"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 241
    .local v3, startMillis:J
    sget-object v7, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 243
    .local v5, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 244
    .local v2, ret:Z
    if-eqz v5, :cond_1

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "It takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to insert "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, result:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const/4 v2, 0x1

    .line 251
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private testQuery()Z
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 257
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 258
    .local v9, startMillis:J
    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mCursorColumns:[Ljava/lang/String;

    const-string v5, "dl_album_key"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It takes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to query all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const-string v1, "[ProviderTestActivity]"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-nez v6, :cond_0

    move v1, v11

    .line 289
    :goto_0
    return v1

    .line 268
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v8, sb:Ljava/lang/StringBuilder;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ", "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 281
    const-string v1, "[ProviderTestActivity]"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v12

    .line 289
    goto :goto_0

    .line 284
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v11

    .line 285
    goto :goto_0
.end method

.method private testQuery(I)Z
    .locals 12
    .parameter "rowId"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 293
    if-gtz p1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "row id < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 299
    .local v8, startMillis:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mCursorColumns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 302
    .local v6, cursor:Landroid/database/Cursor;
    const-string v1, "[ProviderTestActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms to query one row"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-nez v6, :cond_1

    move v1, v10

    .line 326
    :goto_0
    return v1

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, ",     "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, ",     "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ",     "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 319
    const-string v1, "[ProviderTestActivity]"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v11

    .line 326
    goto :goto_0

    .line 321
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v10

    .line 322
    goto :goto_0
.end method

.method private testQuerySetting()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mSettingColumns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 338
    .local v7, setting:I
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto Download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 345
    .end local v7           #setting:I
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 341
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 342
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    const-string v2, "Auto Download: 0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private testUpdate()Z
    .locals 10

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 415
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "dl_data"

    const-string v8, "/.htcmusthumbs/com.htc.music.providers.albumarts/albumarts/test"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v6, where:Ljava/lang/StringBuilder;
    const-string v7, "dl_data is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 421
    .local v3, startMillis:J
    sget-object v7, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, count:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "It takes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " rows"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, result:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const-string v7, "[ProviderTestActivity]"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-gtz v0, :cond_0

    .line 429
    const/4 v7, 0x0

    .line 432
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private testUpdate(I)Z
    .locals 9
    .parameter "rowId"

    .prologue
    const/4 v8, 0x0

    .line 436
    if-gez p1, :cond_0

    .line 437
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unsupported row id"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 441
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 442
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "dl_data_backup"

    const-string v7, "/.htcmusthumbs/com.htc.music.providers.albumarts/albumarts/test_backup"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 445
    .local v3, startMillis:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 448
    .local v0, count:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "It takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms to update one row"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const-string v6, "[ProviderTestActivity]"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-gtz v0, :cond_1

    .line 453
    const/4 v6, 0x0

    .line 456
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private testUpdateSetting()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 349
    invoke-virtual {p0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 351
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "auto_download"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    sget-object v4, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 355
    .local v0, count:I
    if-gtz v0, :cond_0

    .line 356
    const/4 v3, 0x0

    .line 359
    :cond_0
    return v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->setContentView(I)V

    .line 116
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mTextView:Landroid/widget/TextView;

    .line 117
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string v0, "Test Insert"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 128
    const/4 v0, 0x1

    const-string v1, "Test Query"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 129
    const/4 v0, 0x2

    const-string v1, "Test Update"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 130
    const/4 v0, 0x3

    const-string v1, "Test Delete"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 131
    const/4 v0, 0x4

    const-string v1, "Test Query ID"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 132
    const/4 v0, 0x5

    const-string v1, "Test Update ID"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 133
    const/4 v0, 0x6

    const-string v1, "Test Delete ID"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 134
    const/16 v0, 0x8

    const-string v1, "Test Query Setting"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 135
    const/16 v0, 0x9

    const-string v1, "Test Update Setting"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/16 v2, 0x1e

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, msg:Landroid/os/Message;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported item id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :pswitch_1
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 148
    :pswitch_2
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 156
    :pswitch_4
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 160
    :pswitch_5
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 161
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 163
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 167
    :pswitch_6
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 168
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 170
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 174
    :pswitch_7
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 175
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 177
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 181
    :pswitch_8
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 185
    :pswitch_9
    iget-object v1, p0, Lcom/htc/musicenhancer/provider/ProviderTestActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    return-void
.end method
