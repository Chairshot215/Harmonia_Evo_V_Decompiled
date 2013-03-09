.class Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmsSentNoServiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsSentNoServiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DealQueueAsyncTask"
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


# instance fields
.field mMoveType:I

.field final synthetic this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsSentNoServiceDialog;I)V
    .locals 0
    .parameter
    .parameter "moveType"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    iput p2, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->mMoveType:I

    .line 119
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "v"

    .prologue
    .line 127
    invoke-static {}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->access$200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->getFirst()Landroid/net/Uri;

    move-result-object v0

    .line 131
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 132
    iget v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->mMoveType:I

    if-nez v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 152
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->getFirst()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    if-nez v0, :cond_0

    .line 155
    const-wide/16 v3, 0x5dc

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->getFirst()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_2
    iget v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->mMoveType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    goto :goto_1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    const/4 v1, 0x0

    return-object v1

    .line 156
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    #calls: Lcom/android/mms/ui/SmsSentNoServiceDialog;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->access$300(Lcom/android/mms/ui/SmsSentNoServiceDialog;)V

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->finish()V

    .line 169
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SmsSentNoServiceDialog$DealQueueAsyncTask;->this$0:Lcom/android/mms/ui/SmsSentNoServiceDialog;

    const v3, 0x7f090167

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    #calls: Lcom/android/mms/ui/SmsSentNoServiceDialog;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SmsSentNoServiceDialog;->access$100(Lcom/android/mms/ui/SmsSentNoServiceDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
