.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# static fields
.field static final SKIP_PROCESSING_KEY:Ljava/lang/String; = "skip_processing"

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForPhoto"


# instance fields
.field private final mPhotoStore:Lcom/android/providers/contacts/PhotoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .locals 1
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "photoStore"

    .prologue
    .line 47
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 48
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 49
    return-void
.end method

.method private hasNonNullPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 124
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 125
    .local v0, photoBytes:[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preProcessPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 106
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->hasNonNullPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    .line 108
    .local v0, photoExists:Z
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->processPhoto(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const/4 v1, 0x0

    .line 120
    .end local v0           #photoExists:Z
    :goto_0
    return v1

    .line 116
    .restart local v0       #photoExists:Z
    :cond_0
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 117
    const-string v1, "data14"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 120
    .end local v0           #photoExists:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processPhoto(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"

    .prologue
    .line 144
    const-string v7, "data15"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 145
    .local v3, originalPhoto:[B
    if-eqz v3, :cond_1

    .line 146
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f04

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 148
    .local v1, maxDisplayPhotoDim:I
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 151
    .local v2, maxThumbnailPhotoDim:I
    :try_start_0
    new-instance v6, Lcom/android/providers/contacts/PhotoProcessor;

    invoke-direct {v6, v3, v1, v2}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BII)V

    .line 153
    .local v6, processor:Lcom/android/providers/contacts/PhotoProcessor;
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v7, v6}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v4

    .line 154
    .local v4, photoFileId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_0

    .line 155
    const-string v7, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    :goto_0
    const-string v7, "data15"

    invoke-virtual {v6}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 160
    const/4 v7, 0x1

    .line 165
    .end local v1           #maxDisplayPhotoDim:I
    .end local v2           #maxThumbnailPhotoDim:I
    .end local v4           #photoFileId:J
    .end local v6           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :goto_1
    return v7

    .line 157
    .restart local v1       #maxDisplayPhotoDim:I
    .restart local v2       #maxThumbnailPhotoDim:I
    .restart local v4       #photoFileId:J
    .restart local v6       #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :cond_0
    const-string v7, "data14"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v4           #photoFileId:J
    .end local v6           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :catch_0
    move-exception v0

    .line 162
    .local v0, ioe:Ljava/io/IOException;
    const-string v7, "DataRowHandlerForPhoto"

    const-string v8, "Could not process photo for insert or update"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v1           #maxDisplayPhotoDim:I
    .end local v2           #maxThumbnailPhotoDim:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 130
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 131
    .local v1, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 132
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 133
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 3
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 57
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v0

    .line 69
    .local v0, dataId:J
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 72
    .end local v0           #dataId:J
    :cond_1
    :goto_0
    return-wide v0

    .line 61
    :cond_2
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 5
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 80
    .local v0, rawContactId:J
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    :goto_0
    return v2

    .line 84
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v2, v3

    .line 95
    goto :goto_0
.end method
