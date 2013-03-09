.class Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "HtcViewContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveToSIMContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/HtcViewContactDetailActivity;",
        ">;"
    }
.end annotation


# instance fields
.field progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/app/HtcProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field successCount:I


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 4427
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 4424
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->successCount:I

    .line 4428
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/HtcViewContactDetailActivity;[Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;)Ljava/lang/Integer;
    .locals 23
    .parameter "target"
    .parameter "params"

    .prologue
    .line 4459
    const/4 v2, 0x0

    aget-object v9, p2, v2

    .line 4460
    .local v9, data:Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;
    iget-object v0, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->phones:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 4461
    .local v19, phones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->labels:Ljava/util/ArrayList;

    .line 4462
    .local v10, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v15, v9, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;->emails:Ljava/util/ArrayList;

    .line 4464
    .local v15, mails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 4465
    .local v17, phoneIdx:I
    const/4 v12, 0x0

    .line 4468
    .local v12, mailIdx:I
    const/16 v20, 0x0

    .line 4469
    .local v20, resultCode:I
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 4470
    .local v22, size:I
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 4471
    .local v11, labelsize:I
    :goto_0
    const/16 v21, 0x0

    .line 4472
    .local v21, saveCounts:I
    if-nez v15, :cond_6

    const/4 v14, 0x0

    .line 4474
    .local v14, mailSize:I
    :goto_1
    move/from16 v18, v22

    .line 4475
    .local v18, phoneRemains:I
    move v13, v14

    .line 4477
    .local v13, mailRemains:I
    const/4 v8, 0x0

    .line 4478
    .local v8, addedMoreEmailContact:Z
    const/16 v16, 0x0

    .line 4480
    .local v16, needNotifyExisted:Z
    :cond_0
    :goto_2
    if-gtz v18, :cond_1

    if-lez v13, :cond_a

    .line 4481
    :cond_1
    const-string v3, ""

    .line 4482
    .local v3, number:Ljava/lang/String;
    const/4 v7, 0x0

    .line 4483
    .local v7, label:Ljava/lang/String;
    const-string v6, ""

    .line 4484
    .local v6, email:Ljava/lang/String;
    if-gtz v18, :cond_2

    .line 4485
    const/16 v17, 0x0

    .line 4486
    const/4 v8, 0x1

    .line 4488
    :cond_2
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #number:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 4489
    .restart local v3       #number:Ljava/lang/String;
    move/from16 v0, v17

    if-ge v0, v11, :cond_3

    .line 4490
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #label:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 4492
    .restart local v7       #label:Ljava/lang/String;
    :cond_3
    #getter for: Lcom/android/htccontacts/HtcViewContactDetailActivity;->mNoFreeSIMEmailFields:Z
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1900(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    if-lez v13, :cond_4

    if-ge v12, v14, :cond_4

    .line 4493
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #email:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 4494
    .restart local v6       #email:Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    .line 4496
    :cond_4
    add-int/lit8 v17, v17, 0x1

    .line 4497
    const-string v4, ""

    const-string v5, ""

    move-object/from16 v2, p1

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->saveToSim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    invoke-static/range {v2 .. v8}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$2000(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v20

    .line 4498
    add-int/lit8 v18, v18, -0x1

    .line 4499
    add-int/lit8 v13, v13, -0x1

    .line 4501
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    .line 4502
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 4470
    .end local v3           #number:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #label:Ljava/lang/String;
    .end local v8           #addedMoreEmailContact:Z
    .end local v11           #labelsize:I
    .end local v13           #mailRemains:I
    .end local v14           #mailSize:I
    .end local v16           #needNotifyExisted:Z
    .end local v18           #phoneRemains:I
    .end local v21           #saveCounts:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 4472
    .restart local v11       #labelsize:I
    .restart local v21       #saveCounts:I
    :cond_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    goto :goto_1

    .line 4504
    .restart local v3       #number:Ljava/lang/String;
    .restart local v6       #email:Ljava/lang/String;
    .restart local v7       #label:Ljava/lang/String;
    .restart local v8       #addedMoreEmailContact:Z
    .restart local v13       #mailRemains:I
    .restart local v14       #mailSize:I
    .restart local v16       #needNotifyExisted:Z
    .restart local v18       #phoneRemains:I
    :cond_7
    const/4 v2, 0x5

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    .line 4505
    const/4 v2, 0x1

    move-object/from16 v0, p1

    #setter for: Lcom/android/htccontacts/HtcViewContactDetailActivity;->mNoFreeSIMEmailFields:Z
    invoke-static {v0, v2}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1902(Lcom/android/htccontacts/HtcViewContactDetailActivity;Z)Z

    goto :goto_2

    .line 4506
    :cond_8
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_9

    .line 4507
    if-nez v16, :cond_0

    const/16 v16, 0x1

    goto :goto_2

    .line 4508
    :cond_9
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    .line 4509
    if-eqz v16, :cond_a

    const/16 v16, 0x0

    .line 4538
    .end local v3           #number:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #label:Ljava/lang/String;
    :cond_a
    if-eqz v16, :cond_b

    .line 4539
    const/16 v20, 0x2

    .line 4541
    :cond_b
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->successCount:I

    .line 4542
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 4511
    .restart local v3       #number:Ljava/lang/String;
    .restart local v6       #email:Ljava/lang/String;
    .restart local v7       #label:Ljava/lang/String;
    :cond_c
    const/4 v2, 0x4

    move/from16 v0, v20

    if-ne v0, v2, :cond_0

    .line 4512
    if-eqz v16, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4423
    check-cast p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->doInBackground(Lcom/android/htccontacts/HtcViewContactDetailActivity;[Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMDataPackage;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/lang/Integer;)V
    .locals 2
    .parameter "target"
    .parameter "result"

    .prologue
    .line 4433
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4434
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1600(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4435
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->dismissSaveToSimContactProgress()V

    .line 4438
    :cond_0
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z
    invoke-static {p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1700(Lcom/android/htccontacts/HtcViewContactDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4439
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->successCount:I

    #calls: Lcom/android/htccontacts/HtcViewContactDetailActivity;->showSaveToSIMInformationDialog(II)V
    invoke-static {p1, v0, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->access$1800(Lcom/android/htccontacts/HtcViewContactDetailActivity;II)V

    .line 4441
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4423
    check-cast p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->onPostExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V
    .locals 2
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 4444
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 4445
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4446
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 4447
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 4448
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 4449
    const v1, 0x7f0a0054

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4450
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->progress:Ljava/lang/ref/WeakReference;

    .line 4451
    if-eqz p1, :cond_0

    .line 4452
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/HtcViewContactDetailActivity;->showSaveToSimContactProgress(Ljava/lang/ref/WeakReference;)V

    .line 4454
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4423
    check-cast p1, Lcom/android/htccontacts/HtcViewContactDetailActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetailActivity$SaveToSIMContactsTask;->onPreExecute(Lcom/android/htccontacts/HtcViewContactDetailActivity;)V

    return-void
.end method
