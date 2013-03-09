.class Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AddBookmarkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EditBookmarkInfoLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMap:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "bundle"

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 1066
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->mContext:Landroid/content/Context;

    .line 1067
    iput-object p2, p0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->mMap:Landroid/os/Bundle;

    .line 1068
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 1072
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1073
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;

    invoke-direct {v8}, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;-><init>()V

    .line 1074
    .local v8, info:Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;
    const/4 v6, 0x0

    .line 1078
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->mMap:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1079
    .local v11, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->mMap:Landroid/os/Bundle;

    const-string v2, "_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    .line 1080
    iget-object v1, p0, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->mMap:Landroid/os/Bundle;

    const-string v2, "check_for_dupe"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1081
    .local v7, checkForDupe:Z
    if-eqz v7, :cond_1

    iget-wide v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1082
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v12, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    .line 1089
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1091
    :cond_1
    iget-wide v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 1092
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "parent"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1100
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1101
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentId:J

    .line 1102
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountName:Ljava/lang/String;

    .line 1103
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->accountType:Ljava/lang/String;

    .line 1104
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->title:Ljava/lang/String;

    .line 1106
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1107
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1113
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->parentTitle:Ljava/lang/String;

    .line 1115
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1119
    :cond_4
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "parent"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "modified DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1124
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1125
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1126
    .local v9, parent:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1127
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1134
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1135
    iput-wide v9, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedId:J

    .line 1136
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedTitle:Ljava/lang/String;

    .line 1137
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountName:Ljava/lang/String;

    .line 1138
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;->lastUsedAccountType:Ljava/lang/String;

    .line 1140
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    .end local v9           #parent:J
    :cond_6
    if-eqz v6, :cond_7

    .line 1144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1148
    :cond_7
    return-object v8

    .line 1143
    .end local v7           #checkForDupe:Z
    .end local v11           #url:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_8

    .line 1144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->loadInBackground()Lcom/android/browser/AddBookmarkPage$EditBookmarkInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/android/browser/AddBookmarkPage$EditBookmarkInfoLoader;->forceLoad()V

    .line 1154
    return-void
.end method
