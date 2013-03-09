.class public Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;
.super Landroid/os/AsyncTask;
.source "MessageTabSwitchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTabSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryUnreadCountAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/MessageTabSwitchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;->doInBackground([Ljava/lang/Void;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .locals 1
    .parameter "voids"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, [I

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 0
    .parameter "counts"

    .prologue
    .line 356
    invoke-static {p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->updateCountTexts([I)V

    .line 357
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 345
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity$QueryUnreadCountAsyncTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .parameter "voids"

    .prologue
    .line 352
    return-void
.end method
