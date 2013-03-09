.class public Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactCommonSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactCommonSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SelectGroupContactListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        "Lcom/android/htccontacts/ContactCommonSearchPicker;",
        ">;"
    }
.end annotation


# instance fields
.field mResultIntent:Landroid/content/Intent;

.field progressDialog:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/android/htccontacts/ContactCommonSearchPicker;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 338
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ContactCommonSearchPicker;[Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;)Landroid/content/Intent;
    .locals 18
    .parameter "target"
    .parameter "params"

    .prologue
    .line 343
    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/ContactCommonSearchPicker;->access$100(Lcom/android/htccontacts/ContactCommonSearchPicker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 345
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    aget-object v10, p2, v5

    .line 346
    .local v10, data:Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;
    iget-object v5, v10, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->mResultIntent:Landroid/content/Intent;

    .line 347
    iget-object v8, v10, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;->contactsIdList:Ljava/util/ArrayList;

    .line 348
    .local v8, contactsIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, v10, Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;->groupTitleList:Ljava/util/ArrayList;

    .line 350
    .local v11, groupTitleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    const/16 v5, 0x14

    invoke-direct {v14, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 352
    .local v14, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v14, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 354
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/ContactCommonSearchPicker;->generateBasicQueryUriByExtra(Z)Landroid/net/Uri;

    move-result-object v2

    .line 356
    .local v2, queryUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 358
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 359
    .local v17, title:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 360
    const-string v5, "PARAM_IN_GROUPS"

    move-object/from16 v0, v17

    invoke-virtual {v7, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    goto :goto_0

    .line 364
    .end local v17           #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 365
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    .line 366
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/ContactCommonSearchPicker;->getContactSelection()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, selection:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 370
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 371
    .local v15, needToReset:Z
    if-eqz v9, :cond_3

    .line 372
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 373
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 374
    .local v13, id:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 375
    const/4 v15, 0x1

    .line 376
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    .end local v13           #id:I
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/htccontacts/ContactCommonSearchPicker;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 384
    if-eqz v15, :cond_5

    .line 385
    new-instance v16, Ljava/util/ArrayList;

    const/16 v5, 0x32

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    .local v16, newIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 387
    .restart local v13       #id:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 389
    .end local v13           #id:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->mResultIntent:Landroid/content/Intent;

    const-string v6, "SELECTED_ID"

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 392
    .end local v16           #newIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->mResultIntent:Landroid/content/Intent;

    return-object v5
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    check-cast p1, Lcom/android/htccontacts/ContactCommonSearchPicker;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->doInBackground(Lcom/android/htccontacts/ContactCommonSearchPicker;[Lcom/android/htccontacts/ContactCommonSearchPicker$GroupTaskData;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ContactCommonSearchPicker;Landroid/content/Intent;)V
    .locals 2
    .parameter "target"
    .parameter "intent"

    .prologue
    .line 412
    const/4 v1, -0x1

    invoke-virtual {p1, v1, p2}, Lcom/android/htccontacts/ContactCommonSearchPicker;->setResult(ILandroid/content/Intent;)V

    .line 414
    iget-object v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->progressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/HtcProgressDialog;

    .line 416
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 420
    :cond_0
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactCommonSearchPicker;->finish()V

    .line 421
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    check-cast p1, Lcom/android/htccontacts/ContactCommonSearchPicker;

    .end local p1
    check-cast p2, Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->onPostExecute(Lcom/android/htccontacts/ContactCommonSearchPicker;Landroid/content/Intent;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ContactCommonSearchPicker;)V
    .locals 2
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 397
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 399
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 401
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 402
    invoke-virtual {p1, v0}, Lcom/android/htccontacts/ContactCommonSearchPicker;->manageDialog(Landroid/app/Dialog;)V

    .line 403
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->progressDialog:Ljava/lang/ref/WeakReference;

    .line 406
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 330
    check-cast p1, Lcom/android/htccontacts/ContactCommonSearchPicker;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactCommonSearchPicker$SelectGroupContactListTask;->onPreExecute(Lcom/android/htccontacts/ContactCommonSearchPicker;)V

    return-void
.end method
