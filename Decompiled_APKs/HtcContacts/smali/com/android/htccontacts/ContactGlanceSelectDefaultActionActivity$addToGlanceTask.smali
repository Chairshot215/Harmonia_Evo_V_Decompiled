.class Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "ContactGlanceSelectDefaultActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "addToGlanceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1039
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1035
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;->doInBackground(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1043
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->addToGlance()V

    .line 1044
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Ljava/lang/Void;)V
    .locals 0
    .parameter "target"
    .parameter "result"

    .prologue
    .line 1049
    invoke-virtual {p1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->afterAddToGlance()V

    .line 1050
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1035
    check-cast p1, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$addToGlanceTask;->onPostExecute(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;Ljava/lang/Void;)V

    return-void
.end method
