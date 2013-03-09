.class Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ArrageGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ArrageGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateOrderTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/ArrageGroupActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method private generateOperation(Ljava/util/ArrayList;)Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;",
            ">;)",
            "Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, orderData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;>;"
    new-instance v7, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;-><init>(Lcom/android/htccontacts/ArrageGroupActivity$1;)V

    .line 543
    .local v7, returnGroupOrderData:Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;
    invoke-static {}, Lcom/android/htccontacts/group/GroupEntity;->getNameWhereWithArgMark()Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, selection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 545
    .local v9, selectionArgs:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 546
    .local v10, values:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 547
    .local v4, operation:Landroid/content/ContentProviderOperation;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 550
    .local v6, order:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;

    .line 551
    .local v2, groupItem:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    new-instance v10, Landroid/content/ContentValues;

    .end local v10           #values:Landroid/content/ContentValues;
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .restart local v10       #values:Landroid/content/ContentValues;
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    .line 553
    const/4 v11, 0x0

    iget-object v12, v2, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    .line 554
    const-string v11, "display_order"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    sget-object v11, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 556
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 557
    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 558
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 559
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-boolean v11, v2, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->IsDeleted:Z

    if-eqz v11, :cond_0

    .line 561
    iget-object v11, v2, Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;->Title:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 564
    goto :goto_0

    .line 565
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #groupItem:Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;
    :cond_1
    iput-object v5, v7, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;->operations:Ljava/util/ArrayList;

    .line 566
    iput-object v1, v7, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;->deleteTitleList:Ljava/util/ArrayList;

    .line 567
    return-object v7
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ArrageGroupActivity;[Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 8
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/ArrageGroupActivity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .local p2, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;>;"
    const/4 v6, 0x0

    .line 502
    aget-object v3, p2, v6

    .line 504
    .local v3, orderData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/RemoveOrderGroupBaseAdapter$GroupItem;>;"
    const/4 v2, 0x1

    .line 506
    .local v2, isSuccess:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 507
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 522
    :goto_0
    return-object v5

    .line 511
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;->generateOperation(Ljava/util/ArrayList;)Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;

    move-result-object v1

    .line 513
    .local v1, groupOperation:Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;
    invoke-virtual {p1}, Lcom/android/htccontacts/ArrageGroupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 515
    .local v4, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v5, "com.android.contacts"

    iget-object v6, v1, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;->operations:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :goto_1
    iget-object v5, v1, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask$GroupOrderData;->deleteTitleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Lcom/android/htccontacts/ArrageGroupActivity;->doUpdateDelete(Ljava/util/ArrayList;)V

    .line 522
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "ArrageGroupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update Order: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 518
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 519
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v5, "ArrageGroupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update Order: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    check-cast p1, Lcom/android/htccontacts/ArrageGroupActivity;

    .end local p1
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;->doInBackground(Lcom/android/htccontacts/ArrageGroupActivity;[Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ArrageGroupActivity;Ljava/lang/Integer;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 527
    if-eqz p1, :cond_1

    .line 528
    #calls: Lcom/android/htccontacts/ArrageGroupActivity;->dismissProgressDialog()V
    invoke-static {p1}, Lcom/android/htccontacts/ArrageGroupActivity;->access$800(Lcom/android/htccontacts/ArrageGroupActivity;)V

    .line 529
    invoke-virtual {p1}, Lcom/android/htccontacts/ArrageGroupActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 533
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ArrageGroupActivity;->setResult(I)V

    .line 534
    invoke-virtual {p1}, Lcom/android/htccontacts/ArrageGroupActivity;->finish()V

    .line 537
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    check-cast p1, Lcom/android/htccontacts/ArrageGroupActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;->onPostExecute(Lcom/android/htccontacts/ArrageGroupActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ArrageGroupActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 491
    #calls: Lcom/android/htccontacts/ArrageGroupActivity;->showProgressDialog()V
    invoke-static {p1}, Lcom/android/htccontacts/ArrageGroupActivity;->access$700(Lcom/android/htccontacts/ArrageGroupActivity;)V

    .line 492
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, Lcom/android/htccontacts/ArrageGroupActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ArrageGroupActivity$UpdateOrderTask;->onPreExecute(Lcom/android/htccontacts/ArrageGroupActivity;)V

    return-void
.end method
