.class Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;
.super Landroid/content/AsyncTaskLoader;
.source "HtcViewMyContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewMyContactCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEntityLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/Entity;",
        ">;>;"
    }
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/HtcViewMyContactCardActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1873
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 1870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1875
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;->activityRef:Ljava/lang/ref/WeakReference;

    .line 1876
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1869
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1881
    const/4 v4, 0x0

    .line 1883
    .local v4, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    iget-object v11, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcViewMyContactCardActivity;

    .line 1884
    .local v2, activity:Lcom/android/htccontacts/HtcViewMyContactCardActivity;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->isFinishing()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move-object v5, v4

    .line 2002
    .end local v4           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .local v5, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_0
    return-object v5

    .line 1907
    .end local v5           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v4       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v3

    .line 1908
    .local v3, bundleMyContactIds:Landroid/os/Bundle;
    if-eqz v3, :cond_2

    const-string v11, "contact_id"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1909
    const-string v11, "contact_id"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    #setter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J
    invoke-static {v2, v11, v12}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1902(Lcom/android/htccontacts/HtcViewMyContactCardActivity;J)J

    .line 1913
    :cond_2
    const/4 v6, 0x0

    .line 1914
    .local v6, lookupUri:Landroid/net/Uri;
    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1915
    invoke-virtual {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1917
    if-nez v6, :cond_5

    .line 1918
    const-string v11, "HtcViewMyContactCardActivity"

    const-string v12, "MyEntityLoader loadInBackground getLookupUri NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const-wide/16 v0, -0x1

    .line 1920
    .local v0, MyContactCardRawContactId:J
    const/4 v7, 0x0

    .line 1921
    .local v7, result:I
    if-eqz v3, :cond_3

    const-string v11, "_id"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1922
    const-string v11, "_id"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1924
    :cond_3
    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1926
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1927
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "name_raw_contact_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1928
    sget-object v11, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "profile_name_raw_contact_id_correction"

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1930
    .local v8, u:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v8, v10, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1935
    .end local v8           #u:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_1
    const-string v11, "HtcViewMyContactCardActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MyEntityLoader loadInBackground profile_name_raw_contact_id_correction result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    if-lez v7, :cond_5

    .line 1937
    invoke-virtual {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1940
    .end local v0           #MyContactCardRawContactId:J
    .end local v7           #result:I
    :cond_5
    #setter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mProfileLookupUri:Landroid/net/Uri;
    invoke-static {v2, v6}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$2002(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1942
    #getter for: Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J
    invoke-static {v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->access$1900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Lcom/android/htccontacts/util/ContactsUtils;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    :cond_6
    move-object v5, v4

    .line 2002
    .end local v4           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v5       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    goto/16 :goto_0

    .line 1931
    .end local v5           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v0       #MyContactCardRawContactId:J
    .restart local v4       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v7       #result:I
    .restart local v8       #u:Landroid/net/Uri;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 1932
    .local v9, uoe:Ljava/lang/UnsupportedOperationException;
    const-string v11, "HtcViewMyContactCardActivity"

    const-string v12, "MyEntityLoader loadInBackground UnsupportedOperationException"

    invoke-static {v11, v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 2019
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;->onStopLoading()V

    .line 2021
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;->forceLoad()V

    .line 2009
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;->cancelLoad()Z

    .line 2015
    return-void
.end method
