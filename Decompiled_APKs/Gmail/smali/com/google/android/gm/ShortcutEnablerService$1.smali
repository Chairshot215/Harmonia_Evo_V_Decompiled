.class Lcom/google/android/gm/ShortcutEnablerService$1;
.super Landroid/os/AsyncTask;
.source "ShortcutEnablerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ShortcutEnablerService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/google/android/gm/ShortcutEnablerService;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ShortcutEnablerService;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/gm/provider/LabelList;
    .locals 4
    .parameter "params"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    iget-object v1, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #getter for: Lcom/google/android/gm/ShortcutEnablerService;->mAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/ShortcutEnablerService;->access$000(Lcom/google/android/gm/ShortcutEnablerService;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ShortcutEnablerService$1;->doInBackground([Ljava/lang/Void;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gm/provider/LabelList;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #setter for: Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0, p1}, Lcom/google/android/gm/ShortcutEnablerService;->access$102(Lcom/google/android/gm/ShortcutEnablerService;Lcom/google/android/gm/provider/LabelList;)Lcom/google/android/gm/provider/LabelList;

    .line 58
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #getter for: Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$100(Lcom/google/android/gm/ShortcutEnablerService;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/LabelList;->registerForLabelChanges()V

    .line 59
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    new-instance v1, Lcom/google/android/gm/ShortcutEnablerService$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gm/ShortcutEnablerService$1$1;-><init>(Lcom/google/android/gm/ShortcutEnablerService$1;)V

    #setter for: Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v0, v1}, Lcom/google/android/gm/ShortcutEnablerService;->access$202(Lcom/google/android/gm/ShortcutEnablerService;Landroid/database/DataSetObserver;)Landroid/database/DataSetObserver;

    .line 72
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #getter for: Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$100(Lcom/google/android/gm/ShortcutEnablerService;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #getter for: Lcom/google/android/gm/ShortcutEnablerService;->mDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Lcom/google/android/gm/ShortcutEnablerService;->access$200(Lcom/google/android/gm/ShortcutEnablerService;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #getter for: Lcom/google/android/gm/ShortcutEnablerService;->mLabelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$100(Lcom/google/android/gm/ShortcutEnablerService;)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    const-string v1, "^i"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/LabelList;->get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gm/ShortcutEnablerService$1;->this$0:Lcom/google/android/gm/ShortcutEnablerService;

    #calls: Lcom/google/android/gm/ShortcutEnablerService;->enableShortcutAndFinish()V
    invoke-static {v0}, Lcom/google/android/gm/ShortcutEnablerService;->access$400(Lcom/google/android/gm/ShortcutEnablerService;)V

    .line 79
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    check-cast p1, Lcom/google/android/gm/provider/LabelList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/ShortcutEnablerService$1;->onPostExecute(Lcom/google/android/gm/provider/LabelList;)V

    return-void
.end method
