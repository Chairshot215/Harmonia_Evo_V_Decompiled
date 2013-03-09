.class Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateSimIndexAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mSaveOrNot:Z

.field mSimIndex:I

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(ILandroid/net/Uri;)V
    .locals 1
    .parameter "simIndex"
    .parameter "uri"

    .prologue
    .line 997
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 998
    iput p1, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mSimIndex:I

    .line 999
    iput-object p2, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mUri:Landroid/net/Uri;

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mSaveOrNot:Z

    .line 1001
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 992
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 1004
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mUri:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v5, "index_on_sim"

    aput-object v5, v3, v12

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1007
    .local v7, cursor:Landroid/database/Cursor;
    const-string v10, ""

    .line 1008
    .local v10, sIndexes:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v11, :cond_1

    .line 1010
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1011
    .local v9, sIndexOnSim:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mSimIndex:I

    invoke-static {v9, v0}, Lcom/android/mms/util/SimIndexUtil;->addSimIndexes(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 1012
    .local v8, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v8}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    .line 1013
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1014
    iput-boolean v11, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mSaveOrNot:Z

    move-object v4, v10

    .line 1018
    .end local v8           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #sIndexOnSim:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 1017
    :cond_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 992
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "sIndexes"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1022
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mSaveOrNot:Z

    if-ne v0, v1, :cond_0

    .line 1023
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1024
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "index_on_sim"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$UpdateSimIndexAsyncTask;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1028
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
