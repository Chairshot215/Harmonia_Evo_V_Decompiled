.class Lcom/htc/android/mail/ComposeActivity$88;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->loadUI(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10560
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 10561
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getUseSignature()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 10562
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ComposeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccount.signature>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10563
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10564
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ComposeActivity;->access$5200(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mSignature:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$11902(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10569
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mSignatureIsReady:Z
    invoke-static {v0, v4}, Lcom/htc/android/mail/ComposeActivity;->access$12002(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 10571
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10572
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 10573
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$7500(Lcom/htc/android/mail/ComposeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 10575
    :cond_2
    return-void

    .line 10566
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$88;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-static {v2}, Lcom/htc/android/mail/MailCommon;->getDefaultSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mSignature:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$11902(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
