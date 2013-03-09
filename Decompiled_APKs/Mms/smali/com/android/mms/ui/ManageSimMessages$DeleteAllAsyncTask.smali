.class Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;
.super Landroid/os/AsyncTask;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAllAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/mms/ui/ManageSimMessages$SimSms;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 1
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 920
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 920
    check-cast p1, [Lcom/android/mms/ui/ManageSimMessages$SimSms;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->doInBackground([Lcom/android/mms/ui/ManageSimMessages$SimSms;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/mms/ui/ManageSimMessages$SimSms;)Ljava/lang/Void;
    .locals 7
    .parameter "smses"

    .prologue
    const/4 v6, 0x1

    .line 926
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v4}, Lcom/android/mms/ui/ManageSimMessages;->access$1600(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 927
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 928
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIndexOnSim:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 929
    .local v2, index:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3}, Lcom/android/mms/ui/ManageSimMessages;->getApplication()Landroid/app/Application;

    move-result-object v3

    aget-object v4, p1, v0

    iget-boolean v4, v4, Lcom/android/mms/ui/ManageSimMessages$SimSms;->mIsCdmaFormat:Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/util/SimIoUtil;->deleteFromSim(Landroid/content/Context;ZI)V

    goto :goto_1

    .line 931
    .end local v2           #index:Ljava/lang/Integer;
    :cond_0
    iget-boolean v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->mCanceled:Z

    if-ne v3, v6, :cond_3

    .line 938
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 939
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 941
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v3}, Lcom/android/mms/ui/ManageSimMessages;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/16 v4, 0xea

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 944
    const/4 v3, 0x0

    return-object v3

    .line 934
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 935
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 927
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->mCanceled:Z

    .line 955
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->mCanceled:Z

    .line 959
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 961
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->mCanceled:Z

    .line 965
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 920
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 950
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteAllAsyncTask;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->initialize()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 951
    return-void
.end method
