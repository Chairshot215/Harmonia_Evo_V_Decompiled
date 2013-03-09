.class public Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;
.super Landroid/content/ContentProvider;
.source "AlbumProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;
    }
.end annotation


# static fields
.field private static final ALBUMS:I = 0x1

.field private static final ALBUMS_TABLE:Ljava/lang/String; = "albums"

.field private static final ALBUM_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.photos.album"

.field private static final AUTHORITY:Ljava/lang/String; = "com.google.photos.provider.Album"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DB_NAME:Ljava/lang/String; = "picasa"

.field private static final DB_VERSION:I = 0x3

.field private static DROPBOX_NAME:Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private databaseOpener:Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "content://com.google.photos.provider.Album/albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 47
    sget-object v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.photos.provider.Album"

    const-string v2, "albums"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 138
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->DROPBOX_NAME:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 68
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    move v0, v5

    .line 99
    :goto_0
    return v0

    .line 72
    :cond_1
    sget-object v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->databaseOpener:Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    aget-object v1, p2, v5

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v5

    .line 79
    goto :goto_0

    .line 82
    :cond_3
    const-string v2, "albums"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    array-length v1, p2

    move v2, v5

    move v3, v5

    :goto_1
    if-ge v2, v1, :cond_6

    aget-object v4, p2, v2

    .line 89
    sget-object v5, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->DROPBOX_NAME:Ljava/lang/String;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->DROPBOX_NAME:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 91
    :cond_4
    const-string v5, "albums"

    const-string v6, "_id"

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 92
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 87
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v0, v3

    .line 99
    goto/16 :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-string v0, "vnd.android.cursor.dir/vnd.google.photos.album"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->databaseOpener:Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    const-string v1, "albums"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 109
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 110
    sget-object v2, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 112
    return-object v0

    .line 114
    :cond_1
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Error inserting album."

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->databaseOpener:Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->DROPBOX_NAME:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->databaseOpener:Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider$DatabaseOpener;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    const-string v1, "albums"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 125
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
