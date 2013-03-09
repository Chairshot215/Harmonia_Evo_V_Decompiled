.class public Lcom/android/browser/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Bookmarks"

.field static final QUERY_BOOKMARKS_WHERE:Ljava/lang/String; = "url == ? OR url == ?"

.field private static final acceptableBookmarkSchemes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBookmark(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    .locals 5
    .parameter "context"
    .parameter "showToast"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "parent"

    .prologue
    .line 72
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v2, values:Landroid/content/ContentValues;
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "title"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "url"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "folder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v3, "thumbnail"

    invoke-static {p4}, Lcom/android/browser/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 80
    const-string v3, "parent"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    if-eqz p1, :cond_0

    .line 86
    const v3, 0x7f0c000a

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 89
    :cond_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "Bookmarks"

    const-string v4, "addBookmark"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    .line 138
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static queryCombinedForUrl(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 162
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object v5

    .line 167
    :cond_1
    if-nez p1, :cond_2

    .line 168
    move-object p1, p2

    .line 174
    :cond_2
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    aput-object p2, v4, v3

    .line 175
    .local v4, selArgs:[Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "url"

    aput-object v0, v2, v1

    .line 176
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "url == ? OR url == ?"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method static removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "title"

    .prologue
    .line 103
    const/4 v6, 0x0

    .line 105
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "url = ? AND title = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 129
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 119
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 121
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    if-eqz p0, :cond_2

    .line 123
    const v0, 0x7f0c000b

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 126
    .end local v1           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 127
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "Bookmarks"

    const-string v2, "removeFromBookmarks"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method static removeQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 181
    if-nez p0, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 185
    .local v1, query:I
    move-object v0, p0

    .line 186
    .local v0, noQuery:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 187
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "cr"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 202
    new-instance v0, Lcom/android/browser/Bookmarks$1;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/android/browser/Bookmarks$1;-><init>(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/Bookmarks$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 225
    return-void
.end method

.method static urlHasAcceptableScheme(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 144
    if-nez p0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 149
    sget-object v2, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    const/4 v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
