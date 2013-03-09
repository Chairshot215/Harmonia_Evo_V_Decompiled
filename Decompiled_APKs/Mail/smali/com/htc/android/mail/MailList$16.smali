.class Lcom/htc/android/mail/MailList$16;
.super Lcom/htc/android/mail/MailList$TabInfo;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->doUnreadTab()V
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
    .line 1934
    iput-object p1, p0, Lcom/htc/android/mail/MailList$16;->this$0:Lcom/htc/android/mail/MailList;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailList$TabInfo;-><init>(Lcom/htc/android/mail/MailList;)V

    return-void
.end method


# virtual methods
.method public getListView()Lcom/htc/widget/HtcListView;
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    if-nez v0, :cond_0

    .line 1953
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getListView()Lcom/htc/widget/HtcListView;

    .line 1954
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->addSecondHeader()V

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$TabInfo;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method public getMailListTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/htc/android/mail/MailList$16;->this$0:Lcom/htc/android/mail/MailList;

    const v1, 0x7f0b01d0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 5

    .prologue
    .line 1937
    invoke-super {p0}, Lcom/htc/android/mail/MailList$TabInfo;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1938
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    invoke-virtual {v2}, Lcom/htc/android/mail/util/IdStore;->size()I

    move-result v0

    .line 1939
    .local v0, size:I
    if-eqz v0, :cond_0

    .line 1940
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "readSeq"

    iget-object v4, p0, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    invoke-virtual {v4}, Lcom/htc/android/mail/util/IdStore;->getSeq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1942
    :cond_0
    return-object v1
.end method
