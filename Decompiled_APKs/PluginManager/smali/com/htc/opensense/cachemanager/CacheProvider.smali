.class public Lcom/htc/opensense/cachemanager/CacheProvider;
.super Landroid/content/ContentProvider;
.source "CacheProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final CACHE_IMAGE:I = 0x5

.field static final DOWNlOADS:I = 0x0

.field static final DOWNlOAD_ID:I = 0x1

.field public static final IMAGE_CACHE_FOLDER:Ljava/lang/String; = "img"

.field public static final LOG_TAG:Ljava/lang/String; = "CacheProvider"

.field static final PROFILES:I = 0x2

.field static final PROFILE_ID:I = 0x3

.field static final RAWQUERY:I = 0x4

.field static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field mDatabaseHelper:Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 36
    sget-object v0, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cachemanager"

    const-string v2, "item"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    sget-object v0, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cachemanager"

    const-string v2, "item/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cachemanager"

    const-string v2, "profile"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cachemanager"

    const-string v2, "profile/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cachemanager"

    const-string v2, "rawquery"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.cachemanager"

    const-string v2, "img_cache/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 122
    iget-object v9, p0, Lcom/htc/opensense/cachemanager/CacheProvider;->mDatabaseHelper:Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;

    invoke-virtual {v9}, Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v9, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 124
    .local v6, match:I
    const/4 v7, 0x0

    .line 125
    .local v7, table:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 126
    .local v3, insertTime:J
    packed-switch v6, :pswitch_data_0

    .line 134
    :goto_0
    :pswitch_0
    if-eqz v7, :cond_0

    .line 135
    move-object v0, p2

    .local v0, arr$:[Landroid/content/ContentValues;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v8, v0, v2

    .line 136
    .local v8, value:Landroid/content/ContentValues;
    const-string v9, " last_modified_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    .end local v0           #arr$:[Landroid/content/ContentValues;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v8           #value:Landroid/content/ContentValues;
    :pswitch_1
    const-string v7, "item"

    .line 129
    goto :goto_0

    .line 131
    :pswitch_2
    const-string v7, "profile"

    goto :goto_0

    .line 141
    :cond_0
    array-length v9, p2

    return v9

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x1

    .line 146
    iget-object v5, p0, Lcom/htc/opensense/cachemanager/CacheProvider;->mDatabaseHelper:Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 148
    .local v2, match:I
    const/4 v3, 0x0

    .line 149
    .local v3, table:Ljava/lang/String;
    const/4 v4, 0x0

    .line 151
    .local v4, where:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v3, :cond_1

    .line 181
    invoke-virtual {v0, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    :cond_1
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 153
    :pswitch_1
    const-string v3, "item"

    .line 154
    move-object v4, p2

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    .local v1, id:Ljava/lang/String;
    const-string v3, "item"

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    if-eqz p2, :cond_0

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 165
    .end local v1           #id:Ljava/lang/String;
    :pswitch_3
    const-string v3, "profile"

    .line 166
    move-object v4, p2

    .line 167
    goto :goto_0

    .line 169
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .restart local v1       #id:Ljava/lang/String;
    const-string v3, "profile"

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    if-eqz p2, :cond_0

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 177
    .end local v1           #id:Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/opensense/cachemanager/CacheProvider;->deleteFile(Landroid/net/Uri;)I

    move-result v5

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public deleteFile(Landroid/net/Uri;)I
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    .line 329
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/opensense/cachemanager/CacheProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "img"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .local v1, fileToDelete:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v2

    .line 333
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-object v6, p0, Lcom/htc/opensense/cachemanager/CacheProvider;->mDatabaseHelper:Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 197
    .local v1, match:I
    const/4 v4, 0x0

    .line 198
    .local v4, table:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 208
    :goto_0
    :pswitch_0
    if-eqz v4, :cond_0

    .line 209
    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 210
    .local v2, rowID:J
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 212
    .end local v2           #rowID:J
    :cond_0
    return-object v5

    .line 200
    :pswitch_1
    const-string v4, "item"

    .line 201
    const-string v6, " last_modified_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 205
    :pswitch_2
    const-string v4, "profile"

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isUriExist(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    .line 321
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/opensense/cachemanager/CacheProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "img"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v1, fileToDelete:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    return v2
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/opensense/cachemanager/CacheProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;-><init>(Lcom/htc/opensense/cachemanager/CacheProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/cachemanager/CacheProvider;->mDatabaseHelper:Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x800

    .line 340
    const-string v4, "CacheProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v4, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 342
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 344
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/opensense/cachemanager/CacheProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "img"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 349
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 351
    .local v3, parcel_mode:I
    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 352
    const/high16 v4, 0x3000

    or-int/2addr v3, v4

    .line 353
    or-int/2addr v3, v7

    .line 360
    :cond_2
    :goto_0
    const-string v4, "t"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    const/high16 v4, 0x400

    or-int/2addr v3, v4

    .line 363
    :cond_3
    const-string v4, "a"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 364
    const/high16 v4, 0x200

    or-int/2addr v3, v4

    .line 366
    :cond_4
    if-nez v3, :cond_7

    .line 367
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 354
    :cond_5
    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 355
    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    goto :goto_0

    .line 356
    :cond_6
    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    .line 358
    or-int/2addr v3, v7

    goto :goto_0

    .line 370
    :cond_7
    const-string v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    .line 372
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_8
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    return-object v4

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Ljava/io/IOException;
    const-string v4, "CacheProvider"

    const-string v5, "openFile failed!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "uri"
    .parameter "projections"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 224
    iget-object v4, p0, Lcom/htc/opensense/cachemanager/CacheProvider;->mDatabaseHelper:Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 225
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 226
    .local v10, c:Landroid/database/Cursor;
    const-string v4, "CacheProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v4, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 228
    .local v13, match:I
    const-string v4, "CacheProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "match  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, table:Ljava/lang/String;
    const/4 v5, 0x0

    .line 232
    .local v5, where:Ljava/lang/String;
    packed-switch v13, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 270
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :cond_1
    move-object v11, v10

    .line 275
    :goto_1
    return-object v11

    .line 234
    :pswitch_0
    const-string v4, "CacheProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_1

    .line 237
    :pswitch_1
    const-string v3, "item"

    .line 238
    move-object/from16 v5, p3

    .line 239
    goto :goto_0

    .line 241
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 242
    .local v12, id:Ljava/lang/String;
    const-string v3, "item"

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    if-eqz p3, :cond_0

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 249
    .end local v12           #id:Ljava/lang/String;
    :pswitch_3
    const-string v3, "profile"

    .line 250
    move-object/from16 v5, p3

    .line 251
    goto :goto_0

    .line 253
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 254
    .restart local v12       #id:Ljava/lang/String;
    const-string v3, "profile"

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    if-eqz p3, :cond_0

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 261
    .end local v12           #id:Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/opensense/cachemanager/CacheProvider;->isUriExist(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    new-instance v11, Landroid/database/MatrixCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "key"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "value"

    aput-object v7, v4, v6

    invoke-direct {v11, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 264
    .local v11, cursor:Landroid/database/MatrixCursor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "file_exist"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "true"

    aput-object v7, v4, v6

    invoke-virtual {v11, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 267
    .end local v11           #cursor:Landroid/database/MatrixCursor;
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v7, 0x1

    .line 281
    iget-object v6, p0, Lcom/htc/opensense/cachemanager/CacheProvider;->mDatabaseHelper:Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/htc/opensense/cachemanager/CacheProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 282
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 283
    .local v0, count:I
    sget-object v6, Lcom/htc/opensense/cachemanager/CacheProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 284
    .local v3, match:I
    const/4 v4, 0x0

    .line 285
    .local v4, table:Ljava/lang/String;
    const/4 v5, 0x0

    .line 287
    .local v5, where:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 313
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 314
    invoke-virtual {v1, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 316
    :cond_1
    return v0

    .line 289
    :pswitch_0
    const-string v4, "item"

    .line 290
    move-object v5, p3

    .line 291
    goto :goto_0

    .line 293
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    .local v2, id:Ljava/lang/String;
    const-string v4, "item"

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    if-eqz p3, :cond_0

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 301
    .end local v2           #id:Ljava/lang/String;
    :pswitch_2
    const-string v4, "profile"

    .line 302
    move-object v5, p3

    .line 303
    goto :goto_0

    .line 305
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .restart local v2       #id:Ljava/lang/String;
    const-string v4, "profile"

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 308
    if-eqz p3, :cond_0

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
