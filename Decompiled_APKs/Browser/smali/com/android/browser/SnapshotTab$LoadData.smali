.class Lcom/android/browser/SnapshotTab$LoadData;
.super Landroid/os/AsyncTask;
.source "SnapshotTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SnapshotTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mTab:Lcom/android/browser/SnapshotTab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "view_state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "background"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_created"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/SnapshotTab$LoadData;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/SnapshotTab;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "t"
    .parameter "cr"

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    .line 167
    iput-object p2, p0, Lcom/android/browser/SnapshotTab$LoadData;->mContentResolver:Landroid/content/ContentResolver;

    .line 168
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    #getter for: Lcom/android/browser/SnapshotTab;->mSnapshotId:J
    invoke-static {v0}, Lcom/android/browser/SnapshotTab;->access$000(Lcom/android/browser/SnapshotTab;)J

    move-result-wide v6

    .line 173
    .local v6, id:J
    sget-object v0, Lcom/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/browser/SnapshotTab$LoadData;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/browser/SnapshotTab$LoadData;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/SnapshotTab$LoadData;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x0

    .line 180
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    iget-object v6, v6, Lcom/android/browser/SnapshotTab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 182
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    iget-object v6, v6, Lcom/android/browser/SnapshotTab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const/4 v7, 0x2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 183
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 184
    .local v3, favicon:[B
    if-eqz v3, :cond_0

    .line 185
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    iget-object v6, v6, Lcom/android/browser/SnapshotTab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 188
    :cond_0
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    invoke-virtual {v6}, Lcom/android/browser/SnapshotTab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 189
    .local v5, web:Landroid/webkit/WebView;
    if-eqz v5, :cond_1

    .line 190
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 191
    .local v1, data:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 193
    .local v4, stream:Ljava/util/zip/GZIPInputStream;
    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadViewState(Ljava/io/InputStream;)Z

    .line 195
    .end local v0           #bis:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v4           #stream:Ljava/util/zip/GZIPInputStream;
    :cond_1
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    #setter for: Lcom/android/browser/SnapshotTab;->mBackgroundColor:I
    invoke-static {v6, v7}, Lcom/android/browser/SnapshotTab;->access$102(Lcom/android/browser/SnapshotTab;I)I

    .line 196
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    #setter for: Lcom/android/browser/SnapshotTab;->mDateCreated:J
    invoke-static {v6, v7, v8}, Lcom/android/browser/SnapshotTab;->access$202(Lcom/android/browser/SnapshotTab;J)J

    .line 197
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    iget-object v6, v6, Lcom/android/browser/SnapshotTab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v7, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    invoke-interface {v6, v7}, Lcom/android/browser/WebViewController;->onPageFinished(Lcom/android/browser/Tab;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v3           #favicon:[B
    .end local v5           #web:Landroid/webkit/WebView;
    :cond_2
    if-eqz p1, :cond_3

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_3
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    #setter for: Lcom/android/browser/SnapshotTab;->mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;
    invoke-static {v6, v9}, Lcom/android/browser/SnapshotTab;->access$302(Lcom/android/browser/SnapshotTab;Lcom/android/browser/SnapshotTab$LoadData;)Lcom/android/browser/SnapshotTab$LoadData;

    .line 208
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "SnapshotTab"

    const-string v7, "Failed to load view state, closing tab"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    iget-object v6, v6, Lcom/android/browser/SnapshotTab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v7, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    invoke-interface {v6, v7}, Lcom/android/browser/WebViewController;->closeTab(Lcom/android/browser/Tab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    if-eqz p1, :cond_4

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_4
    iget-object v6, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    #setter for: Lcom/android/browser/SnapshotTab;->mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;
    invoke-static {v6, v9}, Lcom/android/browser/SnapshotTab;->access$302(Lcom/android/browser/SnapshotTab;Lcom/android/browser/SnapshotTab$LoadData;)Lcom/android/browser/SnapshotTab$LoadData;

    goto :goto_0

    .line 203
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz p1, :cond_5

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_5
    iget-object v7, p0, Lcom/android/browser/SnapshotTab$LoadData;->mTab:Lcom/android/browser/SnapshotTab;

    #setter for: Lcom/android/browser/SnapshotTab;->mLoadTask:Lcom/android/browser/SnapshotTab$LoadData;
    invoke-static {v7, v9}, Lcom/android/browser/SnapshotTab;->access$302(Lcom/android/browser/SnapshotTab;Lcom/android/browser/SnapshotTab$LoadData;)Lcom/android/browser/SnapshotTab$LoadData;

    throw v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/SnapshotTab$LoadData;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
