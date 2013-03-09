.class abstract Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;
.super Landroid/os/AsyncTask;
.source "AutofillHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutofillHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoFillProfileDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

.field mCompleteMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/AutofillHandler;


# direct methods
.method public constructor <init>(Lcom/android/browser/AutofillHandler;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "msg"

    .prologue
    .line 156
    .local p0, this:Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;,"Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask<TT;>;"
    iput-object p1, p0, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;->this$0:Lcom/android/browser/AutofillHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    .line 158
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    .local p0, this:Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;,"Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/lang/Void;"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    .local p0, this:Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;,"Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask<TT;>;"
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 162
    .local p0, this:Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;,"Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask<TT;>;"
    iget-object v0, p0, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;->mCompleteMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/browser/AutofillHandler$AutoFillProfileDbTask;->mAutoFillProfileDb:Lcom/android/browser/AutoFillProfileDatabase;

    invoke-virtual {v0}, Lcom/android/browser/AutoFillProfileDatabase;->close()V

    .line 166
    return-void
.end method
