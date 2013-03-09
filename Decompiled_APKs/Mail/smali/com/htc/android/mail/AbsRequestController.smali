.class public abstract Lcom/htc/android/mail/AbsRequestController;
.super Ljava/lang/Object;
.source "AbsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/AbsRequestController$MessageStatus;,
        Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;,
        Lcom/htc/android/mail/AbsRequestController$GroupStatus;,
        Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;
    }
.end annotation


# static fields
.field public static mGroupStatusMap:Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;

.field public static mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    invoke-direct {v0}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 20
    new-instance v0, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;

    invoke-direct {v0}, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/AbsRequestController;->mGroupStatusMap:Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method


# virtual methods
.method public abstract addRequest(Lcom/htc/android/mail/Request;)V
.end method

.method public abstract addWeakHandler(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation
.end method

.method public broadcastAttachmentDownloadChange(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "account"
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Landroid/os/Message;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public broadcastAttachmentDownloadComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "account"
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Landroid/os/Message;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public broadcastAttachmentDownloadStart(Lcom/htc/android/mail/Account;Landroid/os/Message;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "account"
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Landroid/os/Message;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public broadcastDoChangeAccount(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 64
    return-void
.end method

.method public broadcastDoChangeFolder()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public broadcastDoComposeView()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public broadcastMailSearch(Z)V
    .locals 0
    .parameter "token"

    .prologue
    .line 65
    return-void
.end method

.method public broadcastMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "account"
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Request;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    return-void
.end method

.method public broadcastSearchFilterChanged()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public broadcastSetSortComplete(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public broadcastShowMenu()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public broadcastTagChanged(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public abstract checkIncomingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract checkOutgoingAccount(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public checkRequestStatus(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public abstract deleteMail(Lcom/htc/android/mail/Request;)V
.end method

.method public abstract deleteMailOnServer(JJLjava/lang/String;)V
.end method

.method public abstract deleteOldDraft(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/MailMessage;",
            ">;)V"
        }
    .end annotation
.end method

.method public doLaunchAccountList()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public abstract emptyMailbox(JJ)V
.end method

.method public fetchMessageAgain(JJLjava/lang/String;Lcom/htc/android/mail/Mailbox;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "uid"
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/Mailbox;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p7, weakHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    return-void
.end method

.method public fetchMessageDone(JI)V
    .locals 0
    .parameter "messageId"
    .parameter "done"

    .prologue
    .line 55
    return-void
.end method

.method public getDraftStatus(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 53
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getRefreshCheckMoreNum(J)I
.end method

.method public isNeedToFetch(J)Z
    .locals 1
    .parameter "messageId"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSending(Lcom/htc/android/mail/Account;)Z
.end method

.method public abstract isServerRefreshing(Lcom/htc/android/mail/Account;)Z
.end method

.method public abstract markStar(Lcom/htc/android/mail/Request;)V
.end method

.method public abstract moveMail(Lcom/htc/android/mail/Request;)V
.end method

.method public abstract refreshOrCheckMoreMail(Lcom/htc/android/mail/Request;Z)I
.end method

.method public abstract registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeRequest(J)V
.end method

.method public abstract removeRequest(JI)V
.end method

.method public abstract removeRequest(JLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeRequest(Lcom/htc/android/mail/Request;)V
.end method

.method public abstract removeRequest(Lcom/htc/android/mail/Request;Z)V
.end method

.method public abstract removeWeakHandler(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation
.end method

.method public saveDraftDone(Ljava/lang/String;J)V
    .locals 0
    .parameter "key"
    .parameter "messageId"

    .prologue
    .line 52
    return-void
.end method

.method public savingDraft(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 51
    return-void
.end method

.method public abstract sendMail(Lcom/htc/android/mail/Account;JI)V
.end method

.method public abstract setReadStatus(Lcom/htc/android/mail/Request;)V
.end method

.method public abstract stopCheckAccount()V
.end method

.method public abstract stopRequest(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncMailToServer(J)V
.end method

.method public abstract unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/Account;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation
.end method
