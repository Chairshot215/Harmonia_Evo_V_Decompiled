.class public Lcom/android/htccontacts/util/SelectVisibleContactAccounts$UpdateTask;
.super Landroid/os/AsyncTask;
.source "SelectVisibleContactAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/SelectVisibleContactAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 835
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 831
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$UpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "param"

    .prologue
    const/4 v11, 0x0

    .line 855
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 856
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-object v11

    .line 859
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 860
    .local v8, values:Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 863
    .local v7, resolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$500()[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 868
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 869
    .local v3, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$500()[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;

    move-result-object v2

    .local v2, arr$:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    .line 870
    .local v0, account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    invoke-virtual {v0, v3}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;->buildDiff(Ljava/util/ArrayList;)V

    .line 869
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 872
    .end local v0           #account:Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    :cond_2
    const-string v9, "com.android.contacts"

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 873
    .end local v2           #arr$:[Lcom/android/htccontacts/util/SelectVisibleContactAccounts$AccountDisplay;
    .end local v3           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v4

    .line 874
    .local v4, e:Landroid/os/RemoteException;
    const-string v9, "SelectVisibleContactAccounts"

    const-string v10, "Problem saving display groups"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 875
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 876
    .local v4, e:Landroid/content/OperationApplicationException;
    const-string v9, "SelectVisibleContactAccounts"

    const-string v10, "Problem saving display groups"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 831
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts$UpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 886
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 889
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 890
    .local v1, browseActivity:Lcom/android/htccontacts/BrowseContactsAllActivity2;
    instance-of v2, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 891
    check-cast v1, Lcom/android/htccontacts/BrowseContactsAllActivity2;

    .line 894
    :cond_0
    if-nez v1, :cond_2

    .line 904
    :cond_1
    :goto_0
    return-void

    .line 898
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 900
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$700()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 901
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$000()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 841
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 842
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    invoke-static {}, Lcom/android/htccontacts/util/SelectVisibleContactAccounts;->access$700()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
