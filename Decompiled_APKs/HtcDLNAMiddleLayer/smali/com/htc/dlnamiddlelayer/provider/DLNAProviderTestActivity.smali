.class public Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;
.super Landroid/app/Activity;
.source "DLNAProviderTestActivity.java"


# static fields
.field protected static mData:Ljava/lang/String;


# instance fields
.field protected mDelete:I

.field protected mtxtView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    sput-object v0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mDelete:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mtxtView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public Test_DeleteDB()V
    .locals 4

    .prologue
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mDelete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAStore;->getAudioContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public Test_InsertDB()V
    .locals 4

    .prologue
    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v1, val:Landroid/content/ContentValues;
    const-string v2, "filepath"

    const-string v3, "/sdcard/01.mp3"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "indexid"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAStore;->getAudioContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    .local v0, cur:Landroid/net/Uri;
    return-void
.end method

.method public Test_QueryDB()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAStore;->getAudioContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 122
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0, v6}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->parseMediaTable(Landroid/database/Cursor;)Z

    .line 124
    if-eqz v6, :cond_0

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 126
    const/4 v6, 0x0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mtxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mtxtView:Landroid/widget/TextView;

    sget-object v1, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_1
    return-void
.end method

.method public Test_UpdateDB()V
    .locals 5

    .prologue
    .line 216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v0, val:Landroid/content/ContentValues;
    const-string v2, "filepath"

    const-string v3, "/sdcard/02.mp3(update!!)"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "indexid"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mDelete:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAStore;->getAudioContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->setContentView(I)V

    .line 33
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mtxtView:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mtxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mtxtView:Landroid/widget/TextView;

    const-string v1, "Please Select Menu!!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v0, "DLNA DB Query"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 65
    const-string v0, "DLNA DB Insert"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 66
    const-string v0, "DLNA DB Update"

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 67
    const-string v0, "DLNA DB Delete"

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 45
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 80
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 115
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 84
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->Test_QueryDB()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DLNAProviderTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAProviderTestActivity:onOptionsItemSelected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1

    .line 89
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->Test_InsertDB()V

    .line 90
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->Test_QueryDB()V

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->Test_UpdateDB()V

    .line 96
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->Test_QueryDB()V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->Test_DeleteDB()V

    .line 102
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->Test_QueryDB()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    return-void
.end method

.method protected parseMediaTable(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cur"

    .prologue
    .line 139
    const-string v4, ""

    sput-object v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, bRes:Z
    if-nez p1, :cond_1

    .line 168
    :cond_0
    return v0

    .line 147
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 152
    .local v2, idx:I
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, filepath:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 155
    .local v3, indexid:I
    sget-object v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    .line 162
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=========\n _idx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n filepath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n indexid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    .line 164
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 159
    :cond_2
    iput v2, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mDelete:I

    goto :goto_1
.end method

.method protected parseServerTable(Landroid/database/Cursor;)Z
    .locals 11
    .parameter "cur"

    .prologue
    .line 173
    const-string v10, ""

    sput-object v10, Lcom/htc/dlnamiddlelayer/provider/DLNAProviderTestActivity;->mData:Ljava/lang/String;

    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, bRes:Z
    if-nez p1, :cond_1

    .line 198
    :cond_0
    return v1

    .line 181
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_0

    .line 185
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 186
    .local v6, idx:I
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, content_id:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, content_name:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, container:Ljava/lang/String;
    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 190
    .local v5, file_type:I
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, uri_path:Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, artist_name:Ljava/lang/String;
    const/4 v10, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, thumbnail:Ljava/lang/String;
    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 195
    .local v7, serve_id:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method
