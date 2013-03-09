.class public Lcom/htc/android/mail/MailEventBroadcaster;
.super Ljava/lang/Object;
.source "MailEventBroadcaster.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailEventBroadcaster"


# instance fields
.field private mAccountChange:Z

.field private mAccountId:J

.field mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMailSyncFinish:Z

.field private mMailSyncStart:Z

.field private mMarkFlagChange:Z

.field private mMessageChange:Z

.field mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReadFlagChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountChange:Z

    .line 13
    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessageChange:Z

    .line 14
    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mReadFlagChange:Z

    .line 15
    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMarkFlagChange:Z

    .line 16
    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncStart:Z

    .line 17
    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncFinish:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccounts:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessages:Ljava/util/ArrayList;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    .line 26
    return-void
.end method

.method public static sendUnreadMailCount(Landroid/content/Context;IZ)V
    .locals 6
    .parameter "context"
    .parameter "unreadNumber"
    .parameter "newStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 97
    sget-boolean v1, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailEventBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUnreadMailCount, unreadNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.action.update_unread_mail_count"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "unread_mail_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    sget v1, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    if-ne v1, v5, :cond_2

    .line 104
    const-string v1, "bubble_style"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    :cond_1
    :goto_0
    const-string v1, "package_name"

    const-string v2, "com.htc.android.mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "icon_res"

    if-eqz p2, :cond_3

    const v1, 0x7f020063

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void

    .line 105
    :cond_2
    sget v1, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    if-ne v1, v4, :cond_1

    .line 106
    const-string v1, "bubble_style"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 110
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public flush(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, isNeedSend:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountChange:Z

    if-eqz v2, :cond_1

    .line 181
    const-string v2, "accountChange"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v2, "accountId"

    iget-wide v3, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    const/4 v1, 0x1

    .line 184
    sget-boolean v2, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailEventBroadcaster"

    const-string v3, "set account change broadcast"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iput-boolean v5, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountChange:Z

    .line 186
    iget-object v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 189
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessageChange:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mReadFlagChange:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMarkFlagChange:Z

    if-eqz v2, :cond_4

    .line 190
    :cond_2
    const-string v2, "messageChange"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    const/4 v1, 0x1

    .line 192
    sget-boolean v2, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "MailEventBroadcaster"

    const-string v3, "set message change broadcast"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_3
    iput-boolean v5, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessageChange:Z

    .line 194
    iput-boolean v5, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mReadFlagChange:Z

    .line 195
    iput-boolean v5, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMarkFlagChange:Z

    .line 196
    iget-object v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 199
    :cond_4
    iget-boolean v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncStart:Z

    if-eqz v2, :cond_6

    .line 200
    const-string v2, "syncStart"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v2, "accountId"

    iget-wide v3, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const/4 v1, 0x1

    .line 203
    sget-boolean v2, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "MailEventBroadcaster"

    const-string v3, "set sync start broadcast"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_5
    iput-boolean v5, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncStart:Z

    .line 207
    :cond_6
    iget-boolean v2, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncFinish:Z

    if-eqz v2, :cond_8

    .line 208
    const-string v2, "syncFinish"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v2, "accountId"

    iget-wide v3, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const/4 v1, 0x1

    .line 211
    sget-boolean v2, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "MailEventBroadcaster"

    const-string v3, "set sync finish broadcast"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_7
    iput-boolean v5, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncFinish:Z

    .line 215
    :cond_8
    if-eqz v1, :cond_9

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    sget-boolean v2, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "MailEventBroadcaster"

    const-string v3, "sent mail event broadcast"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_9
    return-void
.end method

.method public markStar(Landroid/content/Context;J[J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "messageIds"

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    const-string v1, "starMark"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public sendContactChangeStatus(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 116
    sget-boolean v1, Lcom/htc/android/mail/MailEventBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailEventBroadcaster"

    const-string v2, "Contact status changed!! "

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.contact_status_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public sendDeleteMailIntent(Landroid/content/Context;J[J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "messageIds"

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 53
    const-string v1, "messageDelete"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method public sendForwardMailCount(Landroid/content/Context;J[J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "messageIds"

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 76
    const-string v1, "messageForward"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public sendMarkStarIntent(Landroid/content/Context;J[JI)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "messageIds"
    .parameter "flag"

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 31
    const/4 v1, 0x2

    if-ne p5, v1, :cond_0

    .line 32
    const-string v1, "starMark"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 36
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    return-void

    .line 34
    :cond_0
    const-string v1, "starUnmark"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_0
.end method

.method public sendReloadMailIntent(Landroid/content/Context;J[J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "messageIds"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 60
    const-string v1, "messageReload"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public sendReplyMailCount(Landroid/content/Context;J[J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "messageIds"

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    const-string v1, "messageReply"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public sendSetReadStatusIntent(Landroid/content/Context;J[JI)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "messageIds"
    .parameter "read"

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    .line 43
    const-string v1, "messageRead"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 47
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    return-void

    .line 45
    :cond_0
    const-string v1, "messageUnread"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_0
.end method

.method public sendSettingChangedIntent(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    const-string v1, "settingChange"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public setAccountChange()V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountChange:Z

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    .line 124
    return-void
.end method

.method public setAccountChange(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountChange:Z

    .line 128
    iget-object v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccounts:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    .line 130
    return-void
.end method

.method public setAccountID(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    .line 161
    return-void
.end method

.method public setMailSyncFinish(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncFinish:Z

    .line 171
    return-void
.end method

.method public setMailSyncStart(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mAccountId:J

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMailSyncStart:Z

    .line 166
    return-void
.end method

.method public setMarkFlagChange()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMarkFlagChange:Z

    .line 152
    return-void
.end method

.method public setMarkFlagChange(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMarkFlagChange:Z

    .line 156
    iget-object v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public setMessageChange()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessageChange:Z

    .line 134
    return-void
.end method

.method public setMessageChange(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessageChange:Z

    .line 138
    iget-object v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public setReadFlagChange()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mReadFlagChange:Z

    .line 143
    return-void
.end method

.method public setReadFlagChange(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mReadFlagChange:Z

    .line 147
    iget-object v0, p0, Lcom/htc/android/mail/MailEventBroadcaster;->mMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
