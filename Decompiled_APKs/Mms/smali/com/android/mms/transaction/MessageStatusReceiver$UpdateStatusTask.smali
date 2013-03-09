.class Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;
.super Landroid/os/AsyncTask;
.source "MessageStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessageStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateStatusTask"
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
.field private final mContext:Landroid/content/Context;

.field private final mPdu:[B

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/transaction/MessageStatusReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessageStatusReceiver;Landroid/content/Context;Landroid/net/Uri;[B)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "messageUri"
    .parameter "pdu"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->this$0:Lcom/android/mms/transaction/MessageStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 290
    iput-object p2, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->mContext:Landroid/content/Context;

    .line 291
    iput-object p3, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->mUri:Landroid/net/Uri;

    .line 292
    iput-object p4, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->mPdu:[B

    .line 293
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 284
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "v"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->this$0:Lcom/android/mms/transaction/MessageStatusReceiver;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->this$0:Lcom/android/mms/transaction/MessageStatusReceiver;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->mPdu:[B

    #calls: Lcom/android/mms/transaction/MessageStatusReceiver;->updateMessageStatus(Landroid/content/Context;Landroid/net/Uri;[B)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/mms/transaction/MessageStatusReceiver;->access$000(Lcom/android/mms/transaction/MessageStatusReceiver;Landroid/content/Context;Landroid/net/Uri;[B)V

    .line 299
    iget-object v0, p0, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 300
    monitor-exit v1

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 284
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 307
    return-void
.end method
