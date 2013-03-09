.class Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;
.super Landroid/os/AsyncTask;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeletionDialogActionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field finishActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mContactUri:Landroid/net/Uri;

.field mContext:Landroid/content/Context;

.field mIsSIM:Z

.field mListener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)V
    .locals 1
    .parameter "context"
    .parameter "resolver"
    .parameter "isSIM"
    .parameter "contactUri"
    .parameter "finishActivity"
    .parameter "listener"

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mContext:Landroid/content/Context;

    .line 376
    iput-object p2, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mResolver:Landroid/content/ContentResolver;

    .line 377
    iput-object p4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mContactUri:Landroid/net/Uri;

    .line 378
    iput-boolean p3, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mIsSIM:Z

    .line 379
    if-eqz p5, :cond_0

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->finishActivityRef:Ljava/lang/ref/WeakReference;

    .line 382
    :cond_0
    iput-object p6, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mListener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    .line 383
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, deleteCount:I
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mResolver:Landroid/content/ContentResolver;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mContactUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 419
    const/4 v3, 0x0

    .line 421
    .local v3, deleteUri:Landroid/net/Uri;
    iget-boolean v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mIsSIM:Z

    if-eqz v4, :cond_2

    .line 422
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mContactUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 423
    .local v0, contactId:J
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v4}, Lcom/htc/provider/IccContract;->getDeleteIccPhonebookUri(JLandroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    .line 431
    .end local v0           #contactId:J
    :goto_0
    if-eqz v3, :cond_0

    .line 435
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 439
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    iget-boolean v7, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mIsSIM:Z

    invoke-static {v4, v5, v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteDeletionIntent(Landroid/content/Context;JZ)V

    .line 441
    .end local v3           #deleteUri:Landroid/net/Uri;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 426
    .restart local v3       #deleteUri:Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mContactUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 427
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 397
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, deleteCount:I
    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mListener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mListener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    invoke-interface {v2, v1}, Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;->afterDelete(I)V

    .line 406
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 407
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->finishActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->finishActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 409
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 410
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 413
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 352
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 389
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mListener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;->mListener:Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;

    invoke-interface {v0}, Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;->beforeDelete()V

    .line 392
    :cond_0
    return-void
.end method
