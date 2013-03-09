.class Lcom/htc/android/mail/MailList$10;
.super Lcom/htc/android/mail/MailList$TabInfo;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->doDefaultTab()V
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
    .line 1460
    iput-object p1, p0, Lcom/htc/android/mail/MailList$10;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$TabInfo;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 1473
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    .line 1474
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->addSecondHeader()V

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getMailListTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/htc/android/mail/MailList$10;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-wide v0, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1464
    iget-object v0, p0, Lcom/htc/android/mail/MailList$10;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v0}, Lcom/htc/android/mail/MailList;->access$500(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/Mailbox;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/mail/MailList$10;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/android/mail/MailList$10;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/MailList$10;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/htc/android/mail/Mailbox;->getShortFolderName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 1466
    :goto_1
    return-object v0

    .line 1464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$10;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v0, v0, Lcom/htc/android/mail/MailList;->mParent:Lcom/htc/android/mail/MailListTab;

    iget-object v0, v0, Lcom/htc/android/mail/MailListTab;->mTag:Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$Tag;->name:Ljava/lang/String;

    goto :goto_1
.end method
