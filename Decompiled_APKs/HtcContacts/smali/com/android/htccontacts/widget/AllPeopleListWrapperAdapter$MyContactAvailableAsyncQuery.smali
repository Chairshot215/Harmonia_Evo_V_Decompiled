.class public Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;
.super Landroid/os/AsyncTask;
.source "AllPeopleListWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyContactAvailableAsyncQuery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mMyContactId:J

.field mMyContactRawId:J

.field mRefAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)V
    .locals 1
    .parameter "resolver"
    .parameter "adapter"

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 202
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mRefAdapter:Ljava/lang/ref/WeakReference;

    .line 203
    iput-object p1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mResolver:Landroid/content/ContentResolver;

    .line 204
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .parameter "params"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 208
    const/4 v9, 0x0

    .line 209
    .local v9, result:Z
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 211
    iget-wide v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mMyContactRawId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mMyContactId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v7

    .line 213
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mMyContactRawId:J

    .line 214
    const-string v0, "contact_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mMyContactId:J

    .line 217
    .end local v7           #bundle:Landroid/os/Bundle;
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v6, buffer:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mMyContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v0, " AND "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v0, "mimetype"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v0, " NOT IN ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v0, "\'com.htc.socialnetwork.facebook/login\' , "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v0, "\'com.htc.socialnetwork.flickr/login\' , "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v0, "\'com.htc.socialnetwork.plurk/login\' , "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v0, "\'com.htc.htctwitter/login\' "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v0, " ) "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 234
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 236
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v9, v10

    .line 239
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    .end local v6           #buffer:Ljava/lang/StringBuffer;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .restart local v6       #buffer:Ljava/lang/StringBuffer;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_3
    move v9, v11

    .line 236
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->mRefAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;

    .line 251
    .local v0, adapter:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mIsAvailableMyContact:Z

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mIsAvailableMyContact:Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
