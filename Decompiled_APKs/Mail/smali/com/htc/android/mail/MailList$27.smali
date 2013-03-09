.class Lcom/htc/android/mail/MailList$27;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->updateProgressStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;)V
    .locals 0
    .parameter

    .prologue
    .line 3081
    iput-object p1, p0, Lcom/htc/android/mail/MailList$27;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3083
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProgressStatus>>>3>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$27;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->refreshMailing:Z
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$4100(Lcom/htc/android/mail/MailList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$27;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->readMoreMailing:Z
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$4200(Lcom/htc/android/mail/MailList;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3084
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$27;->this$0:Lcom/htc/android/mail/MailList;

    #calls: Lcom/htc/android/mail/MailList;->updateMailRemain()V
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$4300(Lcom/htc/android/mail/MailList;)V

    .line 3085
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    const-string v1, "updateProgressStatus<<<"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    :cond_1
    return-void
.end method
