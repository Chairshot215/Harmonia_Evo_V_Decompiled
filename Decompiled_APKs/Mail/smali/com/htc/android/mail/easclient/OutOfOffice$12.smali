.class Lcom/htc/android/mail/easclient/OutOfOffice$12;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 1026
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$12;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$12;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OutOfOffice"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$12;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v1

    const-string v3, "onCancel"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$12;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$502(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z

    .line 1031
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/OutOfOffice$12$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$12$1;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice$12;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1039
    return-void
.end method
