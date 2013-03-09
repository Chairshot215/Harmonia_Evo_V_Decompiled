.class public abstract Lcom/htc/android/mail/server/Server;
.super Ljava/lang/Object;
.source "Server.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/server/Server$1;,
        Lcom/htc/android/mail/server/Server$SyncResult;,
        Lcom/htc/android/mail/server/Server$PendingRequest;,
        Lcom/htc/android/mail/server/Server$PendingRequestList;
    }
.end annotation


# static fields
.field public static final APOP:I = 0x1

.field public static final AVAIABLE:I = 0x0

.field public static final BUSY:I = 0x1

.field public static final CHECKMORE_number:I = 0xa

.field public static final CLOSE:I = 0x1

.field public static final COMBINED:I = 0x5

.field public static final CR:B = 0xdt

.field public static final EXCHANGE:I = 0x4

.field public static final EXCHG_FOLDER_REFRESH:I = 0x202

.field public static final EXCHG_change:I = 0x2

.field public static final EXCHG_checkAccount:I = 0x1fd

.field public static final EXCHG_end:I = 0x1

.field public static final EXCHG_fetchMailAgain:I = 0x201

.field public static final EXCHG_fetchMailAttach:I = 0x1fe

.field public static final EXCHG_fetchMailBoxList:I = 0x1f6

.field public static final EXCHG_fetchMultiAttachments:I = 0x200

.field public static final EXCHG_fetchPartByUid:I = 0x1f7

.field public static final EXCHG_fetchThisInfo:I = 0x1fc

.field public static final EXCHG_getRemaining:I = 0x1ff

.field public static final EXCHG_start:I = 0x0

.field public static final FETCH_MAIL_BY_AMOUNTS:I = 0x0

.field public static final FETCH_MAIL_BY_DAYS:I = 0x1

.field public static final HUX:I = 0x6

.field public static final IMAP:I = 0x2

.field public static final IMAP_checkAccount:I = 0x6d

.field public static final IMAP_checkMore:I = 0x65

.field public static final IMAP_deleteMail:I = 0x68

.field public static final IMAP_fetchMailBoxList:I = 0x66

.field public static final IMAP_fetchMultiAttachments:I = 0x6f

.field public static final IMAP_fetchPartByUid:I = 0x67

.field public static final IMAP_fetchThisInfo:I = 0x6c

.field public static final IMAP_getRemaining:I = 0x6e

.field public static final IMAP_moveMail:I = 0x69

.field public static final IMAP_refresh:I = 0x64

.field public static final IMAP_setReadMail:I = 0x6b

.field public static final IMAP_setUnreadMail:I = 0x6a

.field public static final LF:B = 0xat

.field public static final OPEN:I = 0x0

.field public static final OTHER:I = 0x1

.field public static final PENDING_delete:I = 0x1

.field public static final PENDING_emptyMailbox:I = 0x8

.field public static final PENDING_fetchMail:I = 0x6

.field public static final PENDING_getuid:I = 0x5

.field public static final PENDING_move:I = 0x2

.field public static final PENDING_read:I = 0x4

.field public static final PENDING_storeUid:I = 0x7

.field public static final PENDING_unread:I = 0x3

.field public static final POP3:I = 0x0

.field public static final POP3_checkAccount:I = 0xcd

.field public static final POP3_deleteMail:I = 0xcc

.field public static final POP3_fetchAll:I = 0xca

.field public static final POP3_fetchPart:I = 0xcb

.field public static final POP3_refresh:I = 0xc8

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_SSL:I = 0x1

.field public static final SECURITY_TLS:I = 0x2

.field public static final SMTP:I = 0x3

.field public static final SetReadMail:I = 0x6

.field public static final SetUnreadMail:I = 0x5

.field private static TAG:Ljava/lang/String; = null

.field public static final WRONG_EXCHANGE:I = 0xa

.field public static final checkMore:I = 0x3

.field public static final deleteMail:I = 0x4

.field public static final emptyMailbox:I = 0xa

.field public static final fetchMailAgain:I = 0x7

.field public static final markStar:I = 0x8

.field public static final moveMail:I = 0x2

.field public static final refresh:I = 0x1

.field public static final reloadMailbodyTime:J = 0x2710L

.field public static final syncMailToServer:I = 0xb

.field public static final syncPending:I = 0x9


# instance fields
.field private mIsStop:Z

.field protected mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private progressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;

.field public socketState:I

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "Server"

    sput-object v0, Lcom/htc/android/mail/server/Server;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/server/Server;->state:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/server/Server;->socketState:I

    .line 384
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/android/mail/server/Server;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public catenate(Lcom/htc/android/mail/Mailbox;JJ)[Ljava/lang/String;
    .locals 1
    .parameter "mailbox"
    .parameter "messageId"
    .parameter "refMessageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkMore(Lcom/htc/android/mail/Mailbox;)V
    .locals 0
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public checkNewAccount()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    return-void
.end method

.method public abstract close()V
.end method

.method public deleteMail(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public deleteMail(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V
    .locals 0
    .parameter "mailbox"
    .parameter
    .parameter "onlyOnServer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public emptyMailbox(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 173
    return-void
.end method

.method public enableDirectPush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public fetchAll(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V
    .locals 0
    .parameter "mailbox"
    .parameter "uidl"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    return-void
.end method

.method public fetchAttachment(JJLjava/lang/String;ZI)I
    .locals 1
    .parameter "accountId"
    .parameter "messageId"
    .parameter "fileReference"
    .parameter "globalMail"
    .parameter "attachType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, -0x1

    return v0
.end method

.method public fetchMailAgain(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
    .parameter "mailbox"
    .parameter "uid"
    .parameter "msgId"
    .parameter "retry"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method public fetchMailBoxList()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    return-void
.end method

.method public fetchMailItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "collId"
    .parameter "uid"
    .parameter "protocol"
    .parameter "type"
    .parameter "truncationSize"
    .parameter "AllOrNone"

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public fetchMultiAttachments(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;ZLcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0
    .parameter "mailbox"
    .parameter "message"
    .parameter "onlyRealted"
    .parameter "controller"
    .parameter
    .parameter "fileReference"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Lcom/htc/android/mail/MailMessage;",
            "Z",
            "Lcom/htc/android/mail/AbsRequestController;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    .local p5, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public fetchMultiAttachments(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;ZZ)V
    .locals 0
    .parameter "mailbox"
    .parameter "message"
    .parameter "onlyRealted"
    .parameter "globalMail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    return-void
.end method

.method public fetchPart(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;I)V
    .locals 0
    .parameter "mailbox"
    .parameter "uidl"
    .parameter "totalSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public fetchPartByUid(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/htc/android/mail/AbsRequestController;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0
    .parameter "mailbox"
    .parameter "uid"
    .parameter "msgid"
    .parameter "bodyid"
    .parameter "index"
    .parameter "encode"
    .parameter "charsetOrfilename"
    .parameter "mimetype"
    .parameter "saveAsFile"
    .parameter "attachType"
    .parameter "controller"
    .parameter
    .parameter "fileReference"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/htc/android/mail/AbsRequestController;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    .local p14, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public fetchThisInfo(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;)V
    .locals 0
    .parameter "mailbox"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method protected getDownloadingStatus(IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "num"
    .parameter "total"
    .parameter "str"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v0, status:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getSslError()Lcom/htc/android/mail/ssl/MailSslError;
.end method

.method public getSyncResult()[Lcom/htc/android/mail/server/Server$SyncResult;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getX509Certificate()Ljava/security/cert/X509Certificate;
.end method

.method public abstract isOpen()Z
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/htc/android/mail/server/Server;->mIsStop:Z

    return v0
.end method

.method public listen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    return-void
.end method

.method public moveMail(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V
    .locals 0
    .parameter "fromMailbox"
    .parameter
    .parameter "toMailbox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;",
            "Lcom/htc/android/mail/Mailbox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public moveMail(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V
    .locals 0
    .parameter "moveItems"

    .prologue
    .line 172
    return-void
.end method

.method public abstract probe()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract refresh(Lcom/htc/android/mail/Mailbox;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected reloadMailbody()V
    .locals 3

    .prologue
    .line 231
    iget-object v2, p0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 235
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 236
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 237
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public sendMail(Landroid/os/Bundle;)V
    .locals 0
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    return-void
.end method

.method public abstract setAccount(Lcom/htc/android/mail/Account;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public setMessageStatusMap(Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 200
    return-void
.end method

.method public setProgressHandler(Lcom/htc/android/mail/RequestController$ProgressHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/android/mail/server/Server;->progressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;

    .line 194
    return-void
.end method

.method public setReadMail(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;Z)V
    .locals 0
    .parameter "mailbox"
    .parameter "mailMessage"
    .parameter "bNotifyChange"

    .prologue
    .line 161
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 185
    return-void
.end method

.method protected setStop(Z)V
    .locals 0
    .parameter "isStop"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/htc/android/mail/server/Server;->mIsStop:Z

    .line 206
    return-void
.end method

.method public setUnreadMail(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;Z)V
    .locals 0
    .parameter "mailbox"
    .parameter "mailMessage"
    .parameter "bNotifyChange"

    .prologue
    .line 160
    return-void
.end method

.method public setWeakHandler(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iput-object p1, p0, Lcom/htc/android/mail/server/Server;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 198
    return-void
.end method

.method public abstract setX509Certificate(Ljava/security/cert/X509Certificate;)V
.end method

.method public abstract stop()V
.end method

.method public abstract stop(Z)V
.end method

.method public syncMailToServer()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public syncPendingRequests()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    return-void
.end method

.method protected updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "value"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/htc/android/mail/server/Server;->progressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 217
    .local v0, message:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 219
    iget-object v1, p0, Lcom/htc/android/mail/server/Server;->progressHandler:Lcom/htc/android/mail/RequestController$ProgressHandler;

    invoke-virtual {v1, p1, v0}, Lcom/htc/android/mail/RequestController$ProgressHandler;->handleMessage(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    goto :goto_0
.end method
