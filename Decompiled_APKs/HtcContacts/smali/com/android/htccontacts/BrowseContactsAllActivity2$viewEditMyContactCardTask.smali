.class Lcom/android/htccontacts/BrowseContactsAllActivity2$viewEditMyContactCardTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "viewEditMyContactCardTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Lcom/android/htccontacts/BrowseContactsAllActivity2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1548
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1549
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/BrowseContactsAllActivity2;[Ljava/lang/Void;)Ljava/lang/Long;
    .locals 13
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 1553
    const-wide/16 v9, 0x0

    .line 1554
    .local v9, lMyContactId:J
    move-object v7, p1

    .line 1556
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v6

    .line 1557
    .local v6, bundleId:Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string v0, "_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1558
    const-string v0, "_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 1559
    .local v11, lMyRawContactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v11

    if-gez v0, :cond_1

    .line 1560
    invoke-virtual {v7}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1564
    .local v8, cursorData:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1565
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1566
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1567
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1572
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1578
    .end local v8           #cursorData:Landroid/database/Cursor;
    .end local v11           #lMyRawContactId:J
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1570
    .restart local v8       #cursorData:Landroid/database/Cursor;
    .restart local v11       #lMyRawContactId:J
    :cond_2
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1544
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$viewEditMyContactCardTask;->doInBackground(Lcom/android/htccontacts/BrowseContactsAllActivity2;[Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/Long;)V
    .locals 4
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1583
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1584
    .local v0, lMyContactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1585
    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->editMyContactCard(J)V
    invoke-static {p1, v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$2100(Lcom/android/htccontacts/BrowseContactsAllActivity2;J)V

    .line 1589
    :goto_0
    return-void

    .line 1587
    :cond_0
    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->veiwMyContactCard()V
    invoke-static {p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$2200(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1544
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$viewEditMyContactCardTask;->onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/Long;)V

    return-void
.end method
