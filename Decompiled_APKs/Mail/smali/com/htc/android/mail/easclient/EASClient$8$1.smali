.class Lcom/htc/android/mail/easclient/EASClient$8$1;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/EASClient$8;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient$8;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$8$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v5, 0x5

    .line 644
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EASClient"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$8$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$8;

    iget-object v2, v2, Lcom/htc/android/mail/easclient/EASClient$8;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v2

    const-string v4, "call delete account thread"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 645
    :cond_0
    new-instance v0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$8$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$8;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$8;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;-><init>(Lcom/htc/android/mail/easclient/EASClient;Lcom/htc/android/mail/easclient/EASClient$1;)V

    .line 646
    .local v0, mDeleteAccountThread:Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$8$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$8;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$8;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1000(Lcom/htc/android/mail/easclient/EASClient;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->setEndMessage(Landroid/os/Message;)V

    .line 647
    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->start()V

    .line 648
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$8$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$8;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$8;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/easclient/EASClient;->showDialog(I)V

    .line 650
    return-void
.end method
