.class Lcom/htc/android/mail/MailCommon$9;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$9;->this$0:Lcom/htc/android/mail/MailCommon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1616
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Attachment;

    .line 1617
    .local v0, attach:Lcom/htc/android/mail/Attachment;
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$9;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->setCurAttch(Lcom/htc/android/mail/Attachment;)V
    invoke-static {v1, v0}, Lcom/htc/android/mail/MailCommon;->access$1100(Lcom/htc/android/mail/MailCommon;Lcom/htc/android/mail/Attachment;)V

    .line 1620
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missAttachListenr>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/android/mail/Attachment;->localMail:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_0
    iget v1, v0, Lcom/htc/android/mail/Attachment;->localMail:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1622
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$9;->this$0:Lcom/htc/android/mail/MailCommon;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    .line 1626
    :goto_0
    return-void

    .line 1624
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailCommon$9;->this$0:Lcom/htc/android/mail/MailCommon;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailCommon;->showDialog(I)V

    goto :goto_0
.end method
