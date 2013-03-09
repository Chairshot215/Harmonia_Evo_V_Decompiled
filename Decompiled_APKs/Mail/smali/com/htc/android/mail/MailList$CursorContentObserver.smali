.class Lcom/htc/android/mail/MailList$CursorContentObserver;
.super Landroid/database/ContentObserver;
.source "MailList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorContentObserver"
.end annotation


# instance fields
.field private mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

.field final synthetic this$0:Lcom/htc/android/mail/MailList;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailList;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 6389
    iput-object p1, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->this$0:Lcom/htc/android/mail/MailList;

    .line 6390
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6391
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 6395
    const/4 v0, 0x1

    return v0
.end method

.method public init(Lcom/htc/android/mail/MailList$TabInfo;)V
    .locals 0
    .parameter "tabInfo"

    .prologue
    .line 6412
    iput-object p1, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    .line 6413
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 6400
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CursorContentObserver change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6401
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v1, v0, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    .line 6402
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MailList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CursorContentObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    iget v2, v2, Lcom/htc/android/mail/MailList$TabInfo;->mNowTokenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6403
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    #calls: Lcom/htc/android/mail/MailList;->canReloadMail(Lcom/htc/android/mail/MailList$TabInfo;)Z
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList;->access$8900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6404
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MailList"

    const-string v1, "start loadListViewContent>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6405
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$CursorContentObserver;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;

    const/16 v2, 0x1e

    #calls: Lcom/htc/android/mail/MailList;->loadListViewContent(Lcom/htc/android/mail/MailList$TabInfo;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/MailList;->access$5900(Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailList$TabInfo;I)V

    .line 6409
    :cond_3
    :goto_0
    return-void

    .line 6407
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/MailList;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MailList"

    const-string v1, "onChange canReloadMail false>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
