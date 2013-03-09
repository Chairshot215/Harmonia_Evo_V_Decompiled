.class Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactGlanceSelectDefaultActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;",
        ">;"
    }
.end annotation


# static fields
.field static final RESULT_FAILURE:I = 0x2

.field static final RESULT_SUCCESS:I = 0x1


# instance fields
.field private progress:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 988
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;[Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;)Ljava/lang/Integer;
    .locals 5
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1006
    move-object v0, p1

    .line 1007
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1009
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    aget-object v1, p2, v4

    .line 1010
    .local v1, delta:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1011
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->addToGlance()V

    .line 1013
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 979
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;->doInBackground(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;[Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$FavoriteDelta;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Ljava/lang/Integer;)V
    .locals 4
    .parameter "target"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 1019
    move-object v0, p1

    .line 1021
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1022
    const v1, 0x7f0a016d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1027
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1028
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->finish()V

    .line 1030
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1024
    const v1, 0x7f0a0055

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 979
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;->onPostExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 993
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const v2, 0x7f0a0054

    invoke-virtual {p1, v2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;->progress:Ljava/lang/ref/WeakReference;

    .line 1002
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 979
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$SaveContactTask;->onPreExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V

    return-void
.end method
