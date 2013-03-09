.class Lcom/htc/android/mail/easclient/OutOfOffice$2;
.super Landroid/os/Handler;
.source "OutOfOffice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/OutOfOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/OutOfOffice;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V
    .locals 0
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$2;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$2;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OutOfOffice"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$2;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 732
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 734
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/OutOfOffice$2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$2$1;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 743
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$2;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mDestroy:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$600(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$2;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->showDialog(I)V

    .line 745
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/OutOfOffice$2$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$2$2;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
