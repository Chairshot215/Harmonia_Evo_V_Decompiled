.class Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;
.super Landroid/os/AsyncTask;
.source "LabelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gm/provider/LabelList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/gm/provider/LabelList;
    .locals 5
    .parameter "params"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    #getter for: Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->access$400(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    #getter for: Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->access$500(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    #getter for: Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mIncludeHiddenLabels:Z
    invoke-static {v4}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->access$600(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    .line 267
    .local v0, updatedList:Lcom/google/android/gm/provider/LabelList;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gm/provider/LabelList;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    #calls: Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->updateAllRegisteredLists(Lcom/google/android/gm/provider/LabelList;)V
    invoke-static {v0, p1}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->access$700(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;Lcom/google/android/gm/provider/LabelList;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mListRefreshTask:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;
    invoke-static {v0, v1}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->access$802(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;)Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;

    .line 282
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    #getter for: Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->mUpdateRequested:Z
    invoke-static {v0}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->access$900(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->this$0:Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;

    #calls: Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->startUpdateTask()V
    invoke-static {v0}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;->access$1000(Lcom/google/android/gm/provider/LabelList$LabelChangeObserver;)V

    .line 285
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 262
    check-cast p1, Lcom/google/android/gm/provider/LabelList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/LabelList$LabelChangeObserver$UpdateListTask;->onPostExecute(Lcom/google/android/gm/provider/LabelList;)V

    return-void
.end method
