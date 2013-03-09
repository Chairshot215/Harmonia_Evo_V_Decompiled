.class public Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "HtcDeleteCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgress:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 412
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    check-cast p1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    .end local p1
    check-cast p2, [Ljava/util/ArrayList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;->doInBackground(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 6
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p2, params:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 425
    const/4 v2, 0x0

    aget-object v1, p2, v2

    .line 426
    .local v1, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 427
    iget-object v3, p1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 431
    return-object v5
.end method

.method protected onPostExecute(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;Ljava/lang/Void;)V
    .locals 4
    .parameter "target"
    .parameter "result"

    .prologue
    .line 437
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 440
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 406
    check-cast p1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;->onPostExecute(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 406
    check-cast p1, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcDeleteCallHistoryActivity$DeleteTask;->onPreExecute(Lcom/android/htccontacts/HtcDeleteCallHistoryActivity;)V

    return-void
.end method
