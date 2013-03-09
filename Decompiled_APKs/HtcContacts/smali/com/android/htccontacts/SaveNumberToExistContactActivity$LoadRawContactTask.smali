.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "SaveNumberToExistContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadRawContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/model/EntityDelta;",
        "Lcom/android/htccontacts/SaveNumberToExistContactActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/SaveNumberToExistContactActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1081
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1082
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/SaveNumberToExistContactActivity;[Ljava/lang/Long;)Lcom/android/htccontacts/model/EntityDelta;
    .locals 8
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 1087
    move-object v0, p1

    .line 1089
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    aget-object v2, p2, v5

    .line 1090
    .local v2, rawContactId:Ljava/lang/Long;
    invoke-virtual {v0}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1091
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1092
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v7, v7}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v1

    .line 1093
    .local v1, delta:Lcom/android/htccontacts/model/EntityDelta;
    return-object v1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1077
    check-cast p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;->doInBackground(Lcom/android/htccontacts/SaveNumberToExistContactActivity;[Ljava/lang/Long;)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v0

    return-object v0
.end method

.method fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta;
    .locals 10
    .parameter "resolver"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1113
    const/4 v8, 0x0

    .line 1115
    .local v8, entity:Lcom/android/htccontacts/model/EntityDelta;
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1118
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1119
    invoke-static {v7}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v9

    .line 1123
    .local v9, iterator:Landroid/content/EntityIterator;
    :try_start_0
    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 1127
    .local v6, before:Landroid/content/Entity;
    invoke-static {v6}, Lcom/android/htccontacts/model/EntityDelta;->fromBefore(Landroid/content/Entity;)Lcom/android/htccontacts/model/EntityDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1131
    .end local v6           #before:Landroid/content/Entity;
    :cond_0
    invoke-interface {v9}, Landroid/content/EntityIterator;->close()V

    .line 1134
    .end local v9           #iterator:Landroid/content/EntityIterator;
    :cond_1
    return-object v8

    .line 1131
    .restart local v9       #iterator:Landroid/content/EntityIterator;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1099
    if-nez p2, :cond_1

    .line 1100
    invoke-virtual {p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->finish()V

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p1}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    invoke-virtual {p1, p2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity;->assignEntity(Lcom/android/htccontacts/model/EntityDelta;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1077
    check-cast p1, Lcom/android/htccontacts/SaveNumberToExistContactActivity;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/model/EntityDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$LoadRawContactTask;->onPostExecute(Lcom/android/htccontacts/SaveNumberToExistContactActivity;Lcom/android/htccontacts/model/EntityDelta;)V

    return-void
.end method
