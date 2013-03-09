.class Lcom/htc/android/mail/ReadScreen$19;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ReceiverList;

    iput-object v0, v1, Lcom/htc/android/mail/ReadScreen;->curRecp:Lcom/htc/android/mail/ReceiverList;

    .line 1513
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen;->curRecp:Lcom/htc/android/mail/ReceiverList;

    iget-object v1, v1, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    .line 1514
    iget-object v0, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v1, v1, Lcom/htc/android/mail/ReadScreen;->curRecp:Lcom/htc/android/mail/ReceiverList;

    iget-object v1, v1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/ReadScreen;->replyName:Ljava/lang/String;

    .line 1515
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ReadScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickAddContactListener>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->curRecp:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->curRecp:Lcom/htc/android/mail/ReceiverList;

    iget-object v2, v2, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_0
    new-instance v0, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;

    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->curRecp:Lcom/htc/android/mail/ReceiverList;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;-><init>(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->replyName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$19;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->replyAddr:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ReadScreen$showRecipientDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1517
    return-void
.end method
