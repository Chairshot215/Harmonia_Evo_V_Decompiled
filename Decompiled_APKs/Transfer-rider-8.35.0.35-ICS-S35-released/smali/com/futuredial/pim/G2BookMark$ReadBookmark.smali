.class public Lcom/futuredial/pim/G2BookMark$ReadBookmark;
.super Ljava/lang/Object;
.source "G2BookMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/G2BookMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadBookmark"
.end annotation


# instance fields
.field private bNoRecord:Z

.field private cursor:Landroid/database/Cursor;

.field private jsonObject_item:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/futuredial/pim/G2BookMark;


# direct methods
.method public constructor <init>(Lcom/futuredial/pim/G2BookMark;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object p1, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->this$0:Lcom/futuredial/pim/G2BookMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->jsonObject_item:Lorg/json/JSONObject;

    .line 143
    iput-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->bNoRecord:Z

    return-void
.end method


# virtual methods
.method public InitRead()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 147
    const/4 v7, 0x0

    .line 149
    .local v7, nRet:I
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->this$0:Lcom/futuredial/pim/G2BookMark;

    iget-object v0, v0, Lcom/futuredial/pim/G2BookMark;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->this$0:Lcom/futuredial/pim/G2BookMark;

    iget-object v1, v1, Lcom/futuredial/pim/G2BookMark;->uri_bookmark:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "bookmark=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    .line 150
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return v7

    .line 151
    :catch_0
    move-exception v6

    .line 152
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const/4 v7, 0x1

    .line 154
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 156
    iput-object v8, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iput-object p1, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->jsonObject_item:Lorg/json/JSONObject;

    .line 174
    invoke-virtual {p0}, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->ReadOneItem()I

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ReadOneItem()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 182
    const/4 v2, 0x0

    .line 186
    .local v2, nRet:I
    :try_start_0
    iget-boolean v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->bNoRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 187
    const/4 v2, 0x0

    .line 211
    .end local v2           #nRet:I
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    iput-boolean v8, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->bNoRecord:Z

    .line 214
    :cond_0
    :goto_0
    return v2

    .line 190
    .restart local v2       #nRet:I
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    const-string v7, "title"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, nColumnID:I
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, strTitle:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 193
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->jsonObject_item:Lorg/json/JSONObject;

    const-string v7, "1"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_2
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    const-string v7, "url"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 197
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 198
    .local v5, strUrl:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 199
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->jsonObject_item:Lorg/json/JSONObject;

    const-string v7, "2"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    :cond_3
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    const-string v7, "favicon"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 203
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, strFavicon:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 205
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->jsonObject_item:Lorg/json/JSONObject;

    const-string v7, "3"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :cond_4
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    iput-boolean v8, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->bNoRecord:Z

    goto :goto_0

    .line 207
    .end local v1           #nColumnID:I
    .end local v3           #strFavicon:Ljava/lang/String;
    .end local v4           #strTitle:Ljava/lang/String;
    .end local v5           #strUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "G2BookMark"

    const-string v7, "ParseOneItem(),Exception"

    invoke-static {v6, v7}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    iget-object v6, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    iput-boolean v8, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->bNoRecord:Z

    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 212
    iput-boolean v8, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->bNoRecord:Z

    :cond_5
    throw v6
.end method

.method public UnInitRead()I
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, nRet:I
    iget-object v1, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/pim/G2BookMark$ReadBookmark;->cursor:Landroid/database/Cursor;

    .line 168
    :cond_0
    return v0
.end method
