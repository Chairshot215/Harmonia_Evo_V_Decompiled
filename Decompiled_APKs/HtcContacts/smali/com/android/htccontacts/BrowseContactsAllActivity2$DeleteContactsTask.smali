.class Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/BrowseContactsAllActivity2;",
        ">;"
    }
.end annotation


# instance fields
.field APPLY_BATCH_SIZE:I

.field private applyBatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field deleteNum:I

.field progressCount:I

.field progressRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V
    .locals 2
    .parameter "activity"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 2803
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 2797
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->APPLY_BATCH_SIZE:I

    .line 2798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->applyBatchList:Ljava/util/ArrayList;

    .line 2799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressRef:Ljava/lang/ref/WeakReference;

    .line 2800
    iput v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->deleteNum:I

    .line 2801
    iput v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressCount:I

    .line 2804
    iput p2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->deleteNum:I

    .line 2805
    return-void
.end method

.method private createOperation()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2836
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2837
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2838
    .local v7, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v8, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->applyBatchList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2839
    .local v2, contactId:J
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2840
    .local v1, builder:Landroid/net/Uri$Builder;
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2841
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 2842
    .local v4, deletionUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 2843
    .local v6, operationBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2845
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .end local v2           #contactId:J
    .end local v4           #deletionUri:Landroid/net/Uri;
    .end local v6           #operationBuilder:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    return-object v7
.end method

.method private flushApplyBatchList(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "resolver"

    .prologue
    .line 2817
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->createOperation()Ljava/util/ArrayList;

    move-result-object v5

    .line 2818
    .local v5, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v8, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->applyBatchList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2819
    const/4 v1, 0x0

    .line 2821
    .local v1, counts:I
    :try_start_0
    const-string v8, "com.android.contacts"

    invoke-virtual {p1, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v7

    .line 2822
    .local v7, results:[Landroid/content/ContentProviderResult;
    if-eqz v7, :cond_0

    .line 2823
    move-object v0, v7

    .local v0, arr$:[Landroid/content/ContentProviderResult;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 2824
    .local v6, result:Landroid/content/ContentProviderResult;
    iget-object v8, v6, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    add-int/2addr v1, v8

    .line 2823
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2827
    .end local v0           #arr$:[Landroid/content/ContentProviderResult;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #result:Landroid/content/ContentProviderResult;
    .end local v7           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v2

    .line 2828
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2832
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return v1

    .line 2829
    :catch_1
    move-exception v2

    .line 2830
    .local v2, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method private tryToFlushApplyBatchList(Landroid/content/ContentResolver;Z)I
    .locals 3
    .parameter "resolver"
    .parameter "force"

    .prologue
    .line 2808
    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->applyBatchList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2809
    .local v1, size:I
    const/4 v0, 0x0

    .line 2810
    .local v0, counts:I
    if-lez v1, :cond_1

    if-nez p2, :cond_0

    iget v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->APPLY_BATCH_SIZE:I

    if-lt v1, v2, :cond_1

    .line 2811
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->flushApplyBatchList(Landroid/content/ContentResolver;)I

    move-result v0

    .line 2813
    :cond_1
    return v0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/BrowseContactsAllActivity2;[Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 16
    .parameter "target"
    .parameter "params"

    .prologue
    .line 2876
    const/4 v13, 0x0

    aget-object v4, p2, v13

    check-cast v4, Ljava/util/ArrayList;

    .line 2878
    .local v4, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x1

    aget-object v13, p2, v13

    check-cast v13, [Z

    move-object v9, v13

    check-cast v9, [Z

    .line 2879
    .local v9, isSimArray:[Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2880
    .local v11, size:I
    if-eqz v4, :cond_0

    if-nez v11, :cond_1

    .line 2881
    :cond_0
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2954
    :goto_0
    return-object v13

    .line 2885
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->acquireWakeLock()V

    .line 2888
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2890
    .local v1, beginTime:J
    sget-object v12, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2891
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2893
    .local v10, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 2896
    .local v8, isIncludeSIM:Z
    const/16 v13, 0xa

    if-gt v11, v13, :cond_3

    .line 2897
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->APPLY_BATCH_SIZE:I

    .line 2906
    :goto_1
    const/4 v7, 0x0

    .local v7, index:I
    :goto_2
    if-ge v7, v11, :cond_9

    .line 2907
    const/4 v5, 0x0

    .line 2908
    .local v5, deleteCount:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2909
    .local v3, contactId:I
    const/4 v6, 0x0

    .line 2910
    .local v6, deleteUri:Landroid/net/Uri;
    aget-boolean v13, v9, v7

    if-eqz v13, :cond_5

    .line 2911
    int-to-long v13, v3

    invoke-static {v13, v14, v10}, Lcom/htc/provider/IccContract;->getDeleteIccPhonebookUri(JLandroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v6

    .line 2913
    const/4 v8, 0x1

    .line 2918
    :goto_3
    if-eqz v6, :cond_8

    .line 2919
    if-eqz v8, :cond_6

    .line 2921
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v10, v6, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2922
    add-int/lit8 v5, v5, 0x1

    .line 2939
    :goto_4
    add-int/lit8 v13, v11, -0x1

    if-ne v7, v13, :cond_2

    .line 2940
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->tryToFlushApplyBatchList(Landroid/content/ContentResolver;Z)I

    move-result v13

    add-int/2addr v5, v13

    .line 2943
    :cond_2
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Integer;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->publishProgress([Ljava/lang/Object;)V

    .line 2906
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2899
    .end local v3           #contactId:I
    .end local v5           #deleteCount:I
    .end local v6           #deleteUri:Landroid/net/Uri;
    .end local v7           #index:I
    :cond_3
    const/16 v13, 0x14

    if-gt v11, v13, :cond_4

    .line 2900
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->APPLY_BATCH_SIZE:I

    goto :goto_1

    .line 2903
    :cond_4
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->APPLY_BATCH_SIZE:I

    goto :goto_1

    .line 2915
    .restart local v3       #contactId:I
    .restart local v5       #deleteCount:I
    .restart local v6       #deleteUri:Landroid/net/Uri;
    .restart local v7       #index:I
    :cond_5
    int-to-long v13, v3

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_3

    .line 2927
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->APPLY_BATCH_SIZE:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_7

    .line 2928
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->applyBatchList:Ljava/util/ArrayList;

    int-to-long v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2929
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->tryToFlushApplyBatchList(Landroid/content/ContentResolver;Z)I

    move-result v13

    add-int/2addr v5, v13

    goto :goto_4

    .line 2932
    :cond_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v6, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v5, v13

    goto :goto_4

    .line 2937
    :cond_8
    const-string v13, "BrowseContactsAllActivity2"

    const-string v14, "doInBackground delete Uri = null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2948
    .end local v3           #contactId:I
    .end local v5           #deleteCount:I
    .end local v6           #deleteUri:Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v4, v8}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntentWithDeltedContactList(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 2951
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->releaseWakeLock()V

    .line 2954
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto/16 :goto_0

    .line 2923
    .restart local v3       #contactId:I
    .restart local v5       #deleteCount:I
    .restart local v6       #deleteUri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    goto :goto_4
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2796
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->doInBackground(Lcom/android/htccontacts/BrowseContactsAllActivity2;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/Integer;)V
    .locals 3
    .parameter "target"
    .parameter "result"

    .prologue
    .line 2958
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 2959
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2960
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2962
    :cond_0
    invoke-static {p1}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 2965
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2966
    const-string v1, "BrowseContactsAllActivity2"

    const-string v2, "broadcast intent for action com.android.htccontacts.intent.delete_contacts_finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.htccontacts.intent.delete_contacts_finish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 2969
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2796
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 2863
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressCount:I

    .line 2864
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->reInitProgressDialog(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    .line 2867
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2868
    const-string v0, "BrowseContactsAllActivity2"

    const-string v1, "broadcast intent for action com.android.htccontacts.intent.delete_contacts_start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.intent.delete_contacts_start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 2871
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2796
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->onPreExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 2973
    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 2974
    .local v0, d:Lcom/htc/app/HtcProgressDialog;
    const/4 v2, 0x1

    .line 2975
    .local v2, progress:I
    array-length v3, p1

    if-lez v3, :cond_0

    .line 2976
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 2977
    .local v1, obj:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2978
    :goto_0
    iget v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressCount:I

    .line 2980
    .end local v1           #obj:Ljava/lang/Integer;
    :cond_0
    if-eqz v0, :cond_1

    .line 2981
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 2984
    :cond_1
    return-void

    .line 2977
    .restart local v1       #obj:Ljava/lang/Integer;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2796
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public reInitProgressDialog(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 2849
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    const v3, 0x7f0a0192

    const v4, 0x7f0a0193

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->createProgressDialog(III)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressRef:Ljava/lang/ref/WeakReference;

    .line 2850
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 2851
    .local v0, d:Lcom/htc/app/HtcProgressDialog;
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->deleteNum:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 2853
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2854
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 2855
    iget v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$DeleteContactsTask;->progressCount:I

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 2856
    invoke-virtual {p1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->manageDialog(Landroid/app/Dialog;)V

    .line 2859
    :cond_0
    return-void
.end method
