.class public Lcom/htc/android/mail/eassvc/core/BasicSyncListener;
.super Ljava/lang/Object;
.source "BasicSyncListener.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/core/SyncListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSrcType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public endSync(JI)V
    .locals 8
    .parameter "accountId"
    .parameter "syncResult"

    .prologue
    .line 39
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.htc.eas.intent.stop_sync"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "extra.syncsrc_type"

    iget v7, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mSrcType:I

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string v6, "extra.sync_result"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    iget v6, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mSrcType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 45
    sget-object v6, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v6, p1, p2}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 46
    sget-object v6, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget v6, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mSrcType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 48
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, p2}, Lcom/htc/android/mail/Account;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 50
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_0

    .line 54
    if-nez p3, :cond_2

    .line 55
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, accountName:Ljava/lang/String;
    const/16 v5, 0xc8

    .line 57
    .local v5, resultCode:I
    const/4 v2, 0x0

    .line 58
    .local v2, errCode:I
    const/4 v3, 0x0

    .line 59
    .local v3, errMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v5, v2, v3}, Lcom/htc/tasklib/source/TaskAppHelper;->onSyncCompleted(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #errCode:I
    .end local v3           #errMsg:Ljava/lang/String;
    .end local v5           #resultCode:I
    :cond_2
    const/4 v6, 0x1

    if-ne p3, v6, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 62
    .restart local v1       #accountName:Ljava/lang/String;
    const/16 v5, 0x190

    .line 63
    .restart local v5       #resultCode:I
    move v2, p3

    .line 64
    .restart local v2       #errCode:I
    const-string v3, "ERROR"

    .line 65
    .restart local v3       #errMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v5, v2, v3}, Lcom/htc/tasklib/source/TaskAppHelper;->onSyncCompleted(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public setSyncSrcType(I)V
    .locals 0
    .parameter "srcType"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mSrcType:I

    .line 23
    return-void
.end method

.method public startSync(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.start_sync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra.syncsrc_type"

    iget v2, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mSrcType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mSrcType:I

    if-ne v1, v2, :cond_0

    .line 32
    sget-object v1, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncStart(J)V

    .line 33
    sget-object v1, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BasicSyncListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 36
    :cond_0
    return-void
.end method
