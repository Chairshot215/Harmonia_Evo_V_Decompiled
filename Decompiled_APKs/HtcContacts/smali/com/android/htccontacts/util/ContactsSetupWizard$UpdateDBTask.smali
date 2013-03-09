.class Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateDBTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDBTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/util/ContactsSetupWizard;",
        ">;"
    }
.end annotation


# instance fields
.field progressDialogRef:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateDBTask;->progressDialogRef:Ljava/lang/ref/WeakReference;

    .line 670
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/util/ContactsSetupWizard;[Ljava/util/ArrayList;)Ljava/lang/Integer;
    .locals 4
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/util/ContactsSetupWizard;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 695
    .local p2, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    aget-object v1, p2, v2

    .line 698
    .local v1, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    iget-object v2, p1, Lcom/android/htccontacts/util/ContactsSetupWizard;->resolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 704
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 707
    const/4 v2, 0x0

    return-object v2

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem update visible group "

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v2

    .line 701
    :catch_1
    move-exception v0

    .line 702
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem update visible group "

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 665
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateDBTask;->doInBackground(Lcom/android/htccontacts/util/ContactsSetupWizard;[Ljava/util/ArrayList;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;Ljava/lang/Integer;)V
    .locals 4
    .parameter "target"
    .parameter "result"

    .prologue
    .line 686
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 687
    invoke-virtual {p1}, Lcom/android/htccontacts/util/ContactsSetupWizard;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p1, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x270f

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 691
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 665
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateDBTask;->onPostExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 674
    invoke-super {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 682
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 665
    check-cast p1, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/ContactsSetupWizard$UpdateDBTask;->onPreExecute(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    return-void
.end method
