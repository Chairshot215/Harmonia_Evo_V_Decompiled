.class Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ArrangeMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/ArrangeMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateMemberOrderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/group/ArrangeMemberActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 402
    return-void
.end method

.method private generateOperation(Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "data"
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v10, operationListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    if-nez p2, :cond_1

    .line 447
    const/4 v10, 0x0

    .line 489
    .end local v10           #operationListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    :cond_0
    :goto_0
    return-object v10

    .line 449
    .restart local v10       #operationListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    :cond_1
    sget-object v13, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 450
    .local v13, uri:Landroid/net/Uri;
    const-string v15, "update_member_order"

    invoke-static {v13, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 451
    const/4 v8, 0x0

    .line 452
    .local v8, operation:Landroid/content/ContentProviderOperation;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v9, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 454
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v14, 0x0

    .line 455
    .local v14, values:Landroid/content/ContentValues;
    const/4 v11, 0x1

    .line 456
    .local v11, order:I
    const-wide/high16 v15, 0x4024

    const-wide/high16 v17, 0x4022

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    double-to-int v1, v15

    .line 457
    .local v1, MAX:I
    const/4 v5, 0x0

    .line 458
    .local v5, counts:I
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;

    .line 459
    .local v7, item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    add-int v15, v11, v1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 460
    .local v12, orderSequence:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 461
    iget-wide v3, v7, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;->_id:J

    .line 462
    .local v3, contactId:J
    new-instance v14, Landroid/content/ContentValues;

    .end local v14           #values:Landroid/content/ContentValues;
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .restart local v14       #values:Landroid/content/ContentValues;
    const-string v15, "contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    const-string v15, "title"

    move-object/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v15, "display_order"

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v15, v7, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;->displayName:Ljava/lang/CharSequence;

    if-eqz v15, :cond_3

    .line 467
    const-string v15, "display_name"

    iget-object v0, v7, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;->displayName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_2
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 473
    invoke-virtual {v2, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 474
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 475
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v11, v11, 0x1

    .line 478
    add-int/lit8 v5, v5, 0x1

    .line 479
    const/16 v15, 0x1c2

    if-lt v5, v15, :cond_2

    .line 480
    const/4 v5, 0x0

    .line 481
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_1

    .line 470
    :cond_3
    const-string v15, "display_name"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_2

    .line 486
    .end local v3           #contactId:J
    .end local v7           #item:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberItem;
    .end local v12           #orderSequence:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 487
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/group/ArrangeMemberActivity;[Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;)Ljava/lang/Integer;
    .locals 8
    .parameter "target"
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 407
    aget-object v2, p2, v7

    .line 408
    .local v2, data:Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;->memberList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;->memberList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 409
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 427
    :goto_0
    return-object v6

    .line 411
    :cond_1
    iget-object v6, p1, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mGroupTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;->generateOperation(Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 412
    .local v1, applyListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    invoke-virtual {p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 413
    .local v5, resolver:Landroid/content/ContentResolver;
    if-eqz v5, :cond_3

    .line 414
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 415
    .local v0, applyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 417
    :try_start_0
    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 418
    :catch_0
    move-exception v3

    .line 419
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 420
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 421
    .local v3, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v0           #applyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #e:Landroid/content/OperationApplicationException;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p1, Lcom/android/htccontacts/group/ArrangeMemberActivity;->mGroupTitle:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 397
    check-cast p1, Lcom/android/htccontacts/group/ArrangeMemberActivity;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;->doInBackground(Lcom/android/htccontacts/group/ArrangeMemberActivity;[Lcom/android/htccontacts/group/ArrangeMemberActivity$MemberOrderData;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/group/ArrangeMemberActivity;Ljava/lang/Integer;)V
    .locals 0
    .parameter "target"
    .parameter "result"

    .prologue
    .line 432
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    #calls: Lcom/android/htccontacts/group/ArrangeMemberActivity;->dismissProgressDialog()V
    invoke-static {p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->access$800(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    .line 434
    invoke-virtual {p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->finish()V

    .line 435
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 397
    check-cast p1, Lcom/android/htccontacts/group/ArrangeMemberActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;->onPostExecute(Lcom/android/htccontacts/group/ArrangeMemberActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 439
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 440
    #calls: Lcom/android/htccontacts/group/ArrangeMemberActivity;->showProgressDialog()V
    invoke-static {p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity;->access$900(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    .line 441
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 397
    check-cast p1, Lcom/android/htccontacts/group/ArrangeMemberActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/group/ArrangeMemberActivity$UpdateMemberOrderTask;->onPreExecute(Lcom/android/htccontacts/group/ArrangeMemberActivity;)V

    return-void
.end method
