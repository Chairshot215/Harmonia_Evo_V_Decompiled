.class Lcom/htc/android/mail/MailList$13;
.super Lcom/htc/android/mail/MailList$TabInfo;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->doAttachTab()V
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
    .line 1752
    iput-object p1, p0, Lcom/htc/android/mail/MailList$13;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$TabInfo;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 1761
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    .line 1762
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->addSecondHeader()V

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getMailListTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/htc/android/mail/MailList$13;->this$0:Lcom/htc/android/mail/MailList;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
