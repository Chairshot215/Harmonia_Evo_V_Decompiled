.class Lcom/htc/android/mail/MailCommon$8;
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
    .line 1590
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 1592
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->access$100(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->access$100(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->access$100(Lcom/htc/android/mail/MailCommon;)Lcom/htc/android/mail/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 1593
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->stopDownloadOneAttach(Landroid/view/View;)V
    invoke-static {v6, p1}, Lcom/htc/android/mail/MailCommon;->access$1600(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V

    .line 1611
    :cond_1
    :goto_0
    return-void

    .line 1595
    :cond_2
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->access$1700(Lcom/htc/android/mail/MailCommon;)Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1596
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->access$1700(Lcom/htc/android/mail/MailCommon;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1597
    .local v2, count:I
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "MailCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pop3 attach count> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_3
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 1600
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    #getter for: Lcom/htc/android/mail/MailCommon;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/htc/android/mail/MailCommon;->access$1700(Lcom/htc/android/mail/MailCommon;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1601
    .local v1, attView:Landroid/view/View;
    const v6, 0x7f09000e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Attachment;

    move-object v0, v6

    check-cast v0, Lcom/htc/android/mail/Attachment;

    move-object v3, v0

    .line 1602
    .local v3, curAttach:Lcom/htc/android/mail/Attachment;
    iget-object v6, p0, Lcom/htc/android/mail/MailCommon$8;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v7, v3, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    #calls: Lcom/htc/android/mail/MailCommon;->stopDownloadOneAttach(Landroid/view/View;)V
    invoke-static {v6, v7}, Lcom/htc/android/mail/MailCommon;->access$1600(Lcom/htc/android/mail/MailCommon;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    .end local v1           #attView:Landroid/view/View;
    .end local v3           #curAttach:Lcom/htc/android/mail/Attachment;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1603
    :catch_0
    move-exception v4

    .line 1604
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v6, "MailCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "null pointer exception occur> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1608
    .end local v2           #count:I
    .end local v4           #e:Ljava/lang/NullPointerException;
    .end local v5           #i:I
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "MailCommon"

    const-string v7, "error! container is null> "

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
