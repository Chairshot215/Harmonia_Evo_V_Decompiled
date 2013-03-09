.class public Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;
.super Landroid/os/AsyncTask;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/AsyncTaskUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenFriendStreamProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgress:Lcom/htc/app/HtcProgressDialog;

.field private mRefContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null !!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->mRefContext:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 19
    .parameter "params"

    .prologue
    .line 61
    const/4 v1, 0x2

    move-object/from16 v0, p1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect number of parameters !!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v1, p1, v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect paramter type, must be String for both"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_2
    const/4 v1, 0x0

    aget-object v17, p1, v1

    check-cast v17, Ljava/lang/String;

    .line 68
    .local v17, type:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v16, p1, v1

    check-cast v16, Ljava/lang/String;

    .line 69
    .local v16, sourceId:Ljava/lang/String;
    if-eqz v17, :cond_3

    if-nez v16, :cond_5

    .line 70
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->showNotFoundToast()V

    .line 107
    :cond_4
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 73
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->mRefContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    .line 74
    .local v8, context:Landroid/content/Context;
    if-eqz v8, :cond_4

    .line 75
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 77
    .local v15, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v1, "com.htc.friendstream"

    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v14

    .line 79
    .local v14, packageGids:[I
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/socialnetwork/User;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "user_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "buddy_icon_url"

    aput-object v5, v3, v4

    const-string v4, "user_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 80
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 82
    :try_start_1
    const-string v1, "user_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 83
    .local v12, idxUsername:I
    const-string v1, "buddy_icon_url"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 84
    .local v11, idxBuddyIcon:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 86
    .local v18, username:Ljava/lang/String;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, buddyiconurl:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.htc.socialnetwork.facebook.VIEW_PROFILE"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v13, intent:Landroid/content/Intent;
    const-string v1, "com.facebook.theusername"

    move-object/from16 v0, v18

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "com.facebook.theuserid"

    move-object/from16 v0, v16

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "com.facebook.theusericon"

    invoke-virtual {v13, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {v8, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v7           #buddyiconurl:Ljava/lang/String;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v18           #username:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 102
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #idxBuddyIcon:I
    .end local v12           #idxUsername:I
    .end local v14           #packageGids:[I
    :catch_0
    move-exception v10

    .line 103
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AsyncTaskUtils"

    const-string v2, "com.htc.friendstream package cannot be found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #idxBuddyIcon:I
    .restart local v12       #idxUsername:I
    .restart local v14       #packageGids:[I
    :cond_6
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->showNotFoundToast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 98
    .end local v11           #idxBuddyIcon:I
    .end local v12           #idxUsername:I
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->mProgress:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->mProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 56
    const-string v0, "blah"

    const-string v1, "progress dialog dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 41
    iget-object v1, p0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->mRefContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 42
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 43
    const-string v1, ""

    const v2, 0x7f0a0034

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask$1;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask$1;-><init>(Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/util/AsyncTaskUtils$OpenFriendStreamProfileTask;->mProgress:Lcom/htc/app/HtcProgressDialog;

    .line 51
    :cond_0
    return-void
.end method

.method public showNotFoundToast()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
