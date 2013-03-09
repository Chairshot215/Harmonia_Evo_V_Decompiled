.class Lcom/htc/android/mail/MailList$14;
.super Lcom/htc/android/mail/MailList$TabInfo;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->doImportantTab()V
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
    .line 1778
    iput-object p1, p0, Lcom/htc/android/mail/MailList$14;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$TabInfo;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 1789
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    .line 1790
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->addSecondHeader()V

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getMailListTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1782
    iget-object v1, p0, Lcom/htc/android/mail/MailList$14;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$14;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v2, v2, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1783
    .local v0, title:Ljava/lang/String;
    return-object v0
.end method

.method public updateListView()V
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1800
    :cond_0
    return-void
.end method
