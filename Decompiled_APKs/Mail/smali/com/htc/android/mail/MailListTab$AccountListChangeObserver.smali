.class Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;
.super Landroid/database/ContentObserver;
.source "MailListTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountListChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 1
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;->this$0:Lcom/htc/android/mail/MailListTab;

    .line 677
    #getter for: Lcom/htc/android/mail/MailListTab;->mBackGroundHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/android/mail/MailListTab;->access$700(Lcom/htc/android/mail/MailListTab;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 678
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/16 v3, 0x23

    .line 682
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailListTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountListChangeObserver onChange>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$900(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/MailListTab$RequestHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/MailListTab$RequestHandler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$900(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/MailListTab$RequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$AccountListChangeObserver;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mRequestHandler:Lcom/htc/android/mail/MailListTab$RequestHandler;
    invoke-static {v1}, Lcom/htc/android/mail/MailListTab;->access$900(Lcom/htc/android/mail/MailListTab;)Lcom/htc/android/mail/MailListTab$RequestHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/MailListTab$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailListTab$RequestHandler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method
