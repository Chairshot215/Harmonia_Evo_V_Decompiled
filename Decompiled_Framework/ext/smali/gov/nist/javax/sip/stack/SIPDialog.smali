.class public Lgov/nist/javax/sip/stack/SIPDialog;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljavax/sip/Dialog;
.implements Lgov/nist/javax/sip/DialogExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;,
        Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;,
        Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CONFIRMED_STATE:I = 0x0

.field private static final DIALOG_LINGER_TIME:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final EARLY_STATE:I = 0x0

.field public static final NULL_STATE:I = -0x1

#the value of this static final field might be set in the static constructor
.field public static final TERMINATED_STATE:I = 0x0

.field private static final serialVersionUID:J = -0x13d7a673d1d40265L


# instance fields
.field private transient ackLine:I

.field protected transient ackProcessed:Z

.field protected transient ackSeen:Z

.field private transient ackSem:Ljava/util/concurrent/Semaphore;

.field private transient applicationData:Ljava/lang/Object;

.field public transient auditTag:J

.field private transient byeSent:Z

.field protected callIdHeader:Ljavax/sip/header/CallIdHeader;

.field protected contactHeader:Lgov/nist/javax/sip/header/Contact;

.field private transient dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

.field private transient dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

.field private dialogId:Ljava/lang/String;

.field private dialogState:I

.field private transient dialogTerminatedEventDelivered:Z

.field private transient earlyDialogId:Ljava/lang/String;

.field private eventHeader:Ljavax/sip/header/EventHeader;

.field private transient eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgov/nist/javax/sip/stack/SIPDialogEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected firstTransactionId:Ljava/lang/String;

.field protected firstTransactionIsServerTransaction:Z

.field protected firstTransactionMethod:Ljava/lang/String;

.field protected firstTransactionPort:I

.field protected firstTransactionSecure:Z

.field protected firstTransactionSeen:Z

.field private transient highestSequenceNumberAcknowledged:J

.field protected hisTag:Ljava/lang/String;

.field private transient isAcknowledged:Z

.field private transient isAssigned:Z

.field private isBackToBackUserAgent:Z

.field private lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient lastInviteOkReceived:J

.field private lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

.field private transient lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

.field protected localParty:Ljavax/sip/address/Address;

.field private localSequenceNumber:J

.field private method:Ljava/lang/String;

.field protected myTag:Ljava/lang/String;

.field protected transient nextSeqno:Ljava/lang/Long;

.field private originalLocalSequenceNumber:J

.field private transient originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field private transient prevRetransmissionTicks:I

.field private reInviteFlag:Z

.field private transient reInviteWaitTime:I

.field protected remoteParty:Ljavax/sip/address/Address;

.field private remoteSequenceNumber:J

.field private remoteTarget:Ljavax/sip/address/Address;

.field private transient retransmissionTicksLeft:I

.field private routeList:Lgov/nist/javax/sip/header/RouteList;

.field private sequenceNumberValidation:Z

.field private serverTransactionFlag:Z

.field private transient sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

.field private transient sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

.field private transient stackTrace:Ljava/lang/String;

.field private terminateOnBye:Z

.field protected transient timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

.field private timerTaskLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Ljavax/sip/DialogState;->_EARLY:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    sget v0, Ljavax/sip/DialogState;->_CONFIRMED:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    sget v0, Ljavax/sip/DialogState;->_TERMINATED:I

    sput v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    return-void
.end method

.method private constructor <init>(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->auditTag:J

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    const/16 v0, 0x64

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    const/16 v0, 0x13c4

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    iput-wide v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 3

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/SipProviderImpl;->getSipStack()Ljavax/sip/SipStack;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating a dialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 2

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null SipResponse"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/SipProviderImpl;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null tx"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p1, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null Provider!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a dialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method static synthetic access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object v0
.end method

.method static synthetic access$1002(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    return-object p1
.end method

.method static synthetic access$1100(Lgov/nist/javax/sip/stack/SIPDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return v0
.end method

.method static synthetic access$200(Lgov/nist/javax/sip/stack/SIPDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I

    return v0
.end method

.method static synthetic access$400(Lgov/nist/javax/sip/stack/SIPDialog;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$502(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    return-object p1
.end method

.method static synthetic access$600(Lgov/nist/javax/sip/stack/SIPDialog;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->toRetransmitFinalResponse(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgov/nist/javax/sip/stack/SIPDialog;)I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    return v0
.end method

.method static synthetic access$900(Lgov/nist/javax/sip/stack/SIPDialog;)J
    .locals 2

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    return-wide v0
.end method

.method private addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V
    .locals 11

    :try_start_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isClientDialog()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/RecordRoute;

    if-eqz v0, :cond_0

    new-instance v4, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/core/NameValueList;

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v8, v7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v7

    check-cast v7, Ljavax/sip/address/SipURI;

    move-object v6, v7

    check-cast v6, Ljavax/sip/address/SipURI;

    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NON LR route in Route set detected for dialog : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {p1}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    const/4 v0, 0x1

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/RecordRoute;

    if-eqz v0, :cond_3

    new-instance v4, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/Route;-><init>()V

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/core/NameValueList;

    invoke-virtual {v4, v7}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    throw v8

    :cond_5
    return-void

    :cond_6
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v7

    check-cast v7, Ljavax/sip/address/SipURI;

    move-object v6, v7

    check-cast v6, Ljavax/sip/address/SipURI;

    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NON LR route in Route set detected for dialog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    goto :goto_3
.end method

.method private declared-synchronized addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContact: dialogState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    :try_start_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v3, :cond_3

    :try_start_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_4
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :try_start_5
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v2, v3, :cond_6

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    :cond_6
    :goto_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_7
    :try_start_7
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_8
    :try_start_8
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_9
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    invoke-interface {v3}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public static createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;-><init>(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    iput-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    iput-object p0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-static {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    iput-boolean v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getCSeq()J

    move-result-wide v2

    iput-wide v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    iput-wide v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v2

    iput-object v2, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    sget v2, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {v0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    return-object v0
.end method

.method private createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v11, "null argument"

    invoke-direct {v1, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "CANCEL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljavax/sip/SipException;

    const-string v11, "Dialog.createRequest(): Invalid request"

    invoke-direct {v1, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/DialogState;->getValue()I

    move-result v1

    sget v11, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne v1, v11, :cond_3

    const-string v1, "BYE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/sip/DialogState;->getValue()I

    move-result v1

    sget v11, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v1, v11, :cond_5

    const-string v1, "BYE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dialog  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not yet established or terminated "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    :goto_0
    new-instance v4, Lgov/nist/javax/sip/header/CSeq;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/CSeq;-><init>()V

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/header/CSeq;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v11

    invoke-virtual {v11}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v9, :cond_9

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find listening point for transport "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot find listening point for transport "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteParty()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v2}, Lgov/nist/javax/sip/address/SipUri;->clearUriParms()V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v11, "Unexpected error"

    invoke-interface {v1, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_8
    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    new-instance v5, Lgov/nist/javax/sip/header/From;

    invoke-direct {v5}, Lgov/nist/javax/sip/header/From;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    new-instance v6, Lgov/nist/javax/sip/header/To;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/To;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v6, v1}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Lgov/nist/javax/sip/message/SIPResponse;->createRequest(Lgov/nist/javax/sip/address/SipUri;Lgov/nist/javax/sip/header/Via;Lgov/nist/javax/sip/header/CSeq;Lgov/nist/javax/sip/header/From;Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v9}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->createContactHeader()Ljavax/sip/header/ContactHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v1

    check-cast v1, Ljavax/sip/address/SipURI;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSecure()Z

    move-result v11

    invoke-interface {v1, v11}, Ljavax/sip/address/SipURI;->setSecure(Z)V

    invoke-virtual {v10, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_a
    :try_start_1
    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    move-object v4, v0

    iget-wide v11, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Lgov/nist/javax/sip/header/CSeq;->setSeqNumber(J)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v1, "SUBSCRIBE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    invoke-virtual {v10, v1}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    invoke-direct {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    return-object v10

    :catch_1
    move-exception v8

    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_c
    :try_start_3
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/From;->removeTag()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v8

    invoke-static {v8}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_d
    :try_start_4
    invoke-virtual {v6}, Lgov/nist/javax/sip/header/To;->removeTag()V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4
.end method

.method private doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/Contact;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized getRouteList()Lgov/nist/javax/sip/header/RouteList;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRouteList "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    new-instance v1, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "----- "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRouteList for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RouteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "myRouteList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "----- "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v1
.end method

.method private isClientDialog()Z
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    instance-of v1, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    return v1
.end method

.method private static final optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z
    .locals 2

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/OptionTag;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/sip/header/OptionTag;->getOptionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private printRouteList()V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printRouteList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RouteList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private raiseErrorEvent(I)V
    .locals 5

    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    invoke-direct {v1, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPDialogEventListener;

    invoke-interface {v2, v1}, Lgov/nist/javax/sip/stack/SIPDialogEventListener;->dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    return-void
.end method

.method private raiseIOException(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljavax/sip/IOExceptionEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/sip/IOExceptionEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    return-void
.end method

.method private recordStackTrace()V
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    return-void
.end method

.method private sendAck(Ljavax/sip/message/Request;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendAck"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ACK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Bad request method -- should be ACK"

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/sip/DialogState;->getValue()I

    move-result v9

    sget v10, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v9, v10, :cond_4

    :cond_2
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad Dialog State for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dialogID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_3
    new-instance v9, Ljavax/sip/SipException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad dialog state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v10

    move-object v9, p1

    check-cast v9, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CallID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RequestCallID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dialog =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_5
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Bad call ID in request"

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    :try_start_0
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting from tag For outgoing ACK= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting To tag for outgoing ACK = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ack = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/sip/header/FromHeader;->setTag(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavax/sip/header/ToHeader;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    move-result-object v4

    if-nez v4, :cond_a

    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "No route!"

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_0
    move-exception v3

    new-instance v9, Ljavax/sip/SipException;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    :try_start_1
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hop = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_b
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v6, :cond_c

    new-instance v9, Ljavax/sip/SipException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No listening point for this provider registered at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :catch_1
    move-exception v3

    if-eqz p2, :cond_12

    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Could not send ack"

    invoke-direct {v9, v10, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_c
    :try_start_2
    invoke-interface {v4}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v6}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v9

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getPort()I

    move-result v10

    invoke-virtual {v9, v5, v10}, Lgov/nist/javax/sip/stack/MessageProcessor;->createMessageChannel(Ljava/net/InetAddress;I)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v7

    const/4 v8, 0x0

    check-cast p1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v9

    if-nez v9, :cond_d

    const/4 v8, 0x1

    :cond_d
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V

    invoke-virtual {v7, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    iget-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J

    if-eqz v8, :cond_10

    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v9, :cond_10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_e
    :goto_0
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    const/4 v9, 0x0

    iput-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    :cond_f
    const/4 v9, 0x1

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    return-void

    :cond_10
    :try_start_3
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not releasing ack sem for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isAckSent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_2
    move-exception v3

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9, v3}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_11
    throw v3

    :cond_12
    invoke-interface {v4}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getPort()I

    move-result v10

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v9, v10, v11}, Lgov/nist/javax/sip/stack/SIPDialog;->raiseIOException(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v3

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v9

    invoke-interface {v9, v3}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_13
    new-instance v9, Ljavax/sip/SipException;

    const-string v10, "Could not create message channel"

    invoke-direct {v9, v10, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    return-void
.end method

.method private setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    return-void
.end method

.method private setLastAckSent(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    return-void
.end method

.method private setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    goto :goto_0
.end method

.method private setLocalSequenceNumber(J)V
    .locals 4

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocalSequenceNumber: original  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sequence number should not decrease !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    return-void
.end method

.method private setLocalTag(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Local tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    return-void
.end method

.method private setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/ToHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    :goto_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/header/FromHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    goto :goto_0
.end method

.method private setRemoteTag(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemoteTag(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remoteTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v2, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Dialog is already established -- ignoring remote tag re-assignment"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isRemoteTagReassignmentAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNSAFE OPERATION !  tag re-assignment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " trying to set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can cause unexpected effects "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    if-ne v1, p0, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeDialog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "ReInserting Dialog"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "setRemoteTag : called with null argument "

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 6

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v4

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/address/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sips"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getPort()I

    move-result v4

    iput v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v4

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    goto :goto_1
.end method

.method private toRetransmitFinalResponse(I)Z
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    if-nez v0, :cond_1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    :goto_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :goto_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "Route"

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getCSeq()J

    move-result-wide v1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;->cancel()Z

    iput-object v5, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    :cond_3
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastAckReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ackReceived for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->getLineCount()I

    move-result v1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->printDebugInfo()V

    :cond_4
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    :cond_5
    sget v1, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v1
.end method

.method public acquireTimerTaskSem()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Impossible to acquire the dialog timer task lock"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContact: dialogState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/message/SIPRequest;->isTargetRefresh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->doTargetRefresh(Lgov/nist/javax/sip/message/SIPMessage;)V

    :cond_1
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v3, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/header/RecordRouteList;)V

    :goto_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/ContactHeader;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    :try_start_2
    new-instance v2, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    iput-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionId:Ljava/lang/String;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getBranchId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    :cond_0
    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-nez v1, :cond_8

    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBSCRIBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Event"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/EventHeader;

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    :cond_1
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-nez v1, :cond_2

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    :cond_3
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    :cond_4
    :goto_0
    instance-of v1, p1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteSequenceNumber(J)V

    :cond_5
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction Added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalSequenceNumber(J)V

    iget-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    iput-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "The request\'s From header is missing the required Tag parameter."

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->isServerTransaction()Z

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-static {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->storeFirstTransactionInfo(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteParty(Lgov/nist/javax/sip/message/SIPMessage;)V

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setCallId(Lgov/nist/javax/sip/message/SIPRequest;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public createAck(J)Ljavax/sip/message/Request;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    const-string v15, "INVITE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    new-instance v14, Ljavax/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dialog was not created with an INVITE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v14, p1, v14

    if-gtz v14, :cond_1

    new-instance v14, Ljavax/sip/InvalidArgumentException;

    const-string v15, "bad cseq <= 0 "

    invoke-direct {v14, v15}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    const-wide v14, 0xffffffffL

    cmp-long v14, p1, v14

    if-lez v14, :cond_2

    new-instance v14, Ljavax/sip/InvalidArgumentException;

    const-string v15, "bad cseq > 4294967295"

    invoke-direct {v14, v15}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    if-nez v14, :cond_3

    new-instance v14, Ljavax/sip/SipException;

    const-string v15, "Cannot create ACK - no remote Target!"

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createAck "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " cseqno "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    cmp-long v14, v14, p1

    if-gez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WARNING : Attempt to crete ACK without OK "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "LAST RESPONSE = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_5
    new-instance v14, Ljavax/sip/SipException;

    const-string v15, "Dialog not yet established -- no OK response!"

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_6
    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v14}, Lgov/nist/javax/sip/header/RouteList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v14}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/sip/address/SipURI;

    move-object v11, v0

    :goto_0
    invoke-interface {v11}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    invoke-interface {v11}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v14

    if-eqz v14, :cond_a

    const-string v10, "TLS"

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v14, v10}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remoteTargetURI "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uri4transport = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v14}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No LP found for transport="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_8
    new-instance v14, Ljavax/sip/SipException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot create ACK - no ListeningPoint for transport towards next hop found:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    new-instance v14, Ljavax/sip/SipException;

    const-string v15, "unexpected exception "

    invoke-direct {v14, v15, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/sip/address/SipURI;

    move-object v11, v0

    goto/16 :goto_0

    :cond_a
    const-string v10, "UDP"

    goto/16 :goto_1

    :cond_b
    new-instance v8, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-direct {v8}, Lgov/nist/javax/sip/message/SIPRequest;-><init>()V

    const-string v14, "ACK"

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTarget()Ljavax/sip/address/Address;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setCallId(Ljavax/sip/header/CallIdHeader;)V

    new-instance v14, Lgov/nist/javax/sip/header/CSeq;

    const-string v15, "ACK"

    move-wide/from16 v0, p1

    invoke-direct {v14, v0, v1, v15}, Lgov/nist/javax/sip/header/CSeq;-><init>(JLjava/lang/String;)V

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setCSeq(Ljavax/sip/header/CSeqHeader;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/javax/sip/header/Via;->removeParameters()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/header/Via;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->size()I

    move-result v14

    if-lez v14, :cond_c

    invoke-virtual {v6}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgov/nist/core/NameValueList;

    invoke-virtual {v12, v14}, Lgov/nist/javax/sip/header/Via;->setParameters(Lgov/nist/core/NameValueList;)V

    :cond_c
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v14

    invoke-virtual {v14}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v13}, Lgov/nist/javax/sip/message/SIPRequest;->setVia(Ljava/util/List;)V

    new-instance v4, Lgov/nist/javax/sip/header/From;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/From;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    invoke-virtual {v4, v14}, Lgov/nist/javax/sip/header/From;->setAddress(Ljavax/sip/address/Address;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lgov/nist/javax/sip/message/SIPRequest;->setFrom(Ljavax/sip/header/FromHeader;)V

    new-instance v9, Lgov/nist/javax/sip/header/To;

    invoke-direct {v9}, Lgov/nist/javax/sip/header/To;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/To;->setAddress(Ljavax/sip/address/Address;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    invoke-virtual {v9, v14}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setTo(Ljavax/sip/header/ToHeader;)V

    new-instance v14, Lgov/nist/javax/sip/header/MaxForwards;

    const/16 v15, 0x46

    invoke-direct {v14, v15}, Lgov/nist/javax/sip/header/MaxForwards;-><init>(I)V

    invoke-virtual {v8, v14}, Lgov/nist/javax/sip/message/SIPRequest;->setMaxForwards(Ljavax/sip/header/MaxForwardsHeader;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v14}, Lgov/nist/javax/sip/message/SIPRequest;->getAuthorization()Lgov/nist/javax/sip/header/Authorization;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v8, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->updateRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v8
.end method

.method public createPrack(Ljavax/sip/message/Response;)Ljavax/sip/message/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/DialogDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v7, v8}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v7, Ljavax/sip/DialogDoesNotExistException;

    const-string v8, "Dialog not initialized or terminated"

    invoke-direct {v7, v8}, Ljavax/sip/DialogDoesNotExistException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const-string v7, "RSeq"

    invoke-interface {p1, v7}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/RSeq;

    if-nez v7, :cond_2

    new-instance v7, Ljavax/sip/SipException;

    const-string v8, "Missing RSeq Header"

    invoke-direct {v7, v8}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v5, v0

    const-string v8, "PRACK"

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    move-object v7, v0

    invoke-direct {p0, v8, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setToTag(Ljava/lang/String;)V

    new-instance v2, Lgov/nist/javax/sip/header/RAck;

    invoke-direct {v2}, Lgov/nist/javax/sip/header/RAck;-><init>()V

    const-string v7, "RSeq"

    invoke-interface {p1, v7}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/RSeq;

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/header/RAck;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public createReliableProvisionalResponse(I)Ljavax/sip/message/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    iget-boolean v8, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    if-nez v8, :cond_0

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Not a Server Dialog!"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/16 v8, 0x64

    if-le p1, v8, :cond_1

    const/16 v8, 0xc7

    if-le p1, v8, :cond_2

    :cond_1
    new-instance v8, Ljavax/sip/InvalidArgumentException;

    const-string v9, "Bad status code "

    invoke-direct {v8, v9}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "Bad method"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    const-string v8, "Supported"

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v8, "100rel"

    invoke-static {v1, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_4
    const-string v8, "Require"

    invoke-virtual {v2, v8}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v8, "100rel"

    invoke-static {v1, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->optionPresent(Ljava/util/ListIterator;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    new-instance v8, Ljavax/sip/SipException;

    const-string v9, "No Supported/Require 100rel header in the request"

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    invoke-virtual {v2, p1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v4

    new-instance v3, Lgov/nist/javax/sip/header/Require;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Require;-><init>()V

    :try_start_0
    const-string v8, "100rel"

    invoke-virtual {v3, v8}, Lgov/nist/javax/sip/header/Require;->setOptionTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/message/SIPResponse;->addHeader(Ljavax/sip/header/Header;)V

    new-instance v7, Lgov/nist/javax/sip/header/RSeq;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/RSeq;-><init>()V

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lgov/nist/javax/sip/header/RSeq;->setSeqNumber(J)V

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/RecordRouteList;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_7
    return-object v4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    const-string v0, "ACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljavax/sip/SipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid method specified for createRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;Lgov/nist/javax/sip/message/SIPResponse;)Ljavax/sip/message/Request;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Dialog not yet established -- no response!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()V
    .locals 1

    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    return-void
.end method

.method public disableSequenceNumberValidation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    return-void
.end method

.method public doDeferredDelete()V
    .locals 4

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public declared-synchronized doDeferredDeleteIfNoAckSent(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;J)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    const-wide/16 v2, 0x7d00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    return-object v0
.end method

.method public getCallId()Ljavax/sip/header/CallIdHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    return-object v0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    return-object v0
.end method

.method getEarlyDialogId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    return-object v0
.end method

.method getEventHeader()Ljavax/sip/header/EventHeader;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    return-object v0
.end method

.method public getFirstTransaction()Ljavax/sip/Transaction;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLastAckReceived()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckReceived:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastAckSent:Lgov/nist/javax/sip/message/SIPRequest;

    return-object v0
.end method

.method public getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    return-object v0
.end method

.method public getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastTransaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    return-object v0
.end method

.method public getLocalParty()Ljavax/sip/address/Address;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localParty:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public getLocalSeqNumber()J
    .locals 2

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    return-wide v0
.end method

.method public getLocalSequenceNumber()I
    .locals 2

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public getLocalTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->myTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMyContactHeader()Lgov/nist/javax/sip/header/Contact;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->contactHeader:Lgov/nist/javax/sip/header/Contact;

    return-object v0
.end method

.method public getOriginalLocalSequenceNumber()J
    .locals 2

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalLocalSequenceNumber:J

    return-wide v0
.end method

.method public getRemoteParty()Ljavax/sip/address/Address;
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gettingRemoteParty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteParty:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public getRemoteSeqNumber()J
    .locals 2

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    return-wide v0
.end method

.method public getRemoteSequenceNumber()I
    .locals 2

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public getRemoteTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->hisTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteTarget()Ljavax/sip/address/Address;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    return-object v0
.end method

.method public getRouteSet()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRouteList()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-object v0
.end method

.method public bridge synthetic getSipProvider()Ljavax/sip/SipProvider;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-object v0
.end method

.method public getState()Ljavax/sip/DialogState;
    .locals 2

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    invoke-static {v0}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    move-result-object v0

    goto :goto_0
.end method

.method public handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "ACK already seen by dialog -- dropping Ack retransmission"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    const/4 v4, 0x0

    iput-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    :cond_2
    :goto_0
    return v3

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v3

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    sget-object v5, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Dialog is terminated -- dropping ACK"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v1

    :cond_5
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p0, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->ackReceived(Lgov/nist/javax/sip/message/SIPRequest;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "ACK for 2XX response --- sending to TU "

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, " INVITE transaction not found  -- Discarding ACK"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 10

    const/4 v5, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- not a server Dialog"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getReliableProvisionalResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- ReliableResponse not found"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "RAck"

    invoke-virtual {p1, v6}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/RAck;

    if-nez v1, :cond_3

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- rack header not found"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/CSeq;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- CSeq Header does not match PRACK"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getCSeqNumberLong()J

    move-result-wide v6

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/CSeq;->getSeqNumber()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- CSeq Header does not match PRACK"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "RSeq"

    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/message/SIPResponse;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/RSeq;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/RAck;->getRSequenceNumber()J

    move-result-wide v6

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RSeq;->getSeqNumber()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Dropping Prack -- RSeq Header does not match PRACK"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->prackRecieved()Z

    move-result v5

    goto/16 :goto_0
.end method

.method public incrementLocalSequenceNumber()V
    .locals 4

    iget-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    return-void
.end method

.method public isAckSeen()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    return v0
.end method

.method public isAckSent(J)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    instance-of v2, v2, Ljavax/sip/ClientTransaction;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isAssigned()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    return v0
.end method

.method public isAtleastOneAckSent()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAcknowledged:Z

    return v0
.end method

.method public isBackToBackUserAgent()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return v0
.end method

.method protected isReInvite()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    return v0
.end method

.method public declared-synchronized isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z
    .locals 5

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_2
    iget-wide v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSecure:Z

    return v0
.end method

.method public isSequnceNumberValidation()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sequenceNumberValidation:Z

    return v0
.end method

.method public isServer()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionSeen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionIsServerTransaction:Z

    goto :goto_0
.end method

.method isTerminatedOnBye()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    return v0
.end method

.method public printDebugInfo()V
    .locals 4

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteSequenceNumer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ackLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method releaseAckSem()V
    .locals 3

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseAckSem]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    return-void
.end method

.method public releaseTimerTaskSem()V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTaskLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public removeEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized requestConsumed()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Consumed -- next consumable Request Seqno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->nextSeqno:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resendAck()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    const-string v2, "Timestamp"

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v1, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    if-eqz v1, :cond_0

    new-instance v0, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V
    :try_end_0
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendAck(Ljavax/sip/message/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;Z)V

    return-void
.end method

.method public sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isServer()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Not a Server Dialog"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v5, p1

    check-cast v5, Lgov/nist/javax/sip/message/SIPResponse;

    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Cannot send 100 as a reliable provisional response"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-interface {p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v6

    div-int/lit8 v6, v6, 0x64

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Response code is not a 1xx response - should be in the range 101 to 199 "

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "Badly formatted response -- To tag mandatory for Reliable Provisional Response"

    invoke-direct {v6, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string v6, "Require"

    invoke-interface {p1, v6}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_5

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sip/header/RequireHeader;

    invoke-interface {v3}, Ljavax/sip/header/RequireHeader;->getOptionTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "100rel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    new-instance v1, Lgov/nist/javax/sip/header/Require;

    const-string v6, "100rel"

    invoke-direct {v1, v6}, Lgov/nist/javax/sip/header/Require;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljavax/sip/message/Response;->addHeader(Ljavax/sip/header/Header;)V

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "Require header with optionTag 100rel is needed -- adding one"

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getFirstTransaction()Ljavax/sip/Transaction;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {p0, v4, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendReliableProvisionalResponse(Ljavax/sip/message/Response;)V

    invoke-virtual {p0, v4, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V

    return-void
.end method

.method public sendRequest(Ljavax/sip/ClientTransaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRequest(Ljavax/sip/ClientTransaction;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    const/4 v13, 0x1

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "INVITE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;

    invoke-direct {v11, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v10, p1

    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dialog.sendRequest  dialog = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\ndialogRequest = \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    if-nez p1, :cond_3

    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "null parameter"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ACK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CANCEL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad Request Method. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    iget-boolean v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BYE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BYE already sent for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_6
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Cannot send request; BYE already sent"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v10

    if-nez v10, :cond_8

    move-object v10, p1

    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOutgoingViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v9

    invoke-virtual {v1, v9}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CallID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RequestCallID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dialog =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_9
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Bad call ID in request"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    move-object v10, p1

    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    iget-object v11, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    invoke-virtual {v10, p0, v11}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    move-object v10, p1

    check-cast v10, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object v10, p1

    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    iput-boolean v13, v10, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/From;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/To;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "From tag mismatch expecting  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "To header tag mismatch expecting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_e

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "NOTIFY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SUBSCRIBE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Trying to send NOTIFY without SUBSCRIBE Dialog!"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_d
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    :cond_e
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lgov/nist/javax/sip/header/From;->setTag(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lgov/nist/javax/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_10
    :goto_1
    move-object v10, p1

    check-cast v10, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v4

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Using hop = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_11
    :try_start_1
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v11

    invoke-interface {v4}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    invoke-virtual {v10, v11, v12, v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v10, v0

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageChannel;->uncache()V

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v10, v10, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v10, :cond_12

    iget v10, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "oldChannel: useCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_12
    if-nez v5, :cond_19

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    const-string v11, "Null message channel using outbound proxy !"

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_13
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    move-result-object v7

    if-nez v7, :cond_15

    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No route found! hop="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-interface {v10, v2}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_14
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Could not create message channel"

    invoke-direct {v10, v11, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :catch_1
    move-exception v2

    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_15
    :try_start_2
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v11

    invoke-interface {v7}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v11

    invoke-interface {v11}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lgov/nist/javax/sip/stack/SIPDialog;->firstTransactionPort:I

    invoke-virtual {v10, v11, v12, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    if-eqz v5, :cond_16

    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v10, v0

    invoke-virtual {v10, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    :cond_16
    :goto_2
    if-eqz v5, :cond_17

    iget v10, v5, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    :cond_17
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v10, v10, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v10, :cond_18

    if-eqz v6, :cond_18

    iget v10, v6, Lgov/nist/javax/sip/stack/MessageChannel;->useCount:I

    if-gtz v10, :cond_18

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/MessageChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_18
    :try_start_3
    iget-wide v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->localSequenceNumber:J

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalSeqNumber()J

    move-result-wide v11

    invoke-interface {v10, v11, v12}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    check-cast p1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BYE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    iput-boolean v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->byeSent:Z

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v10

    if-eqz v10, :cond_0

    sget v10, Ljavax/sip/DialogState;->_TERMINATED:I

    invoke-virtual {p0, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "error sending message"

    invoke-direct {v10, v11, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_19
    :try_start_5
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v10, v0

    invoke-virtual {v10, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "using message channel "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_3
    move-exception v2

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    invoke-virtual {v2}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setApplicationData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->applicationData:Ljava/lang/Object;

    return-void
.end method

.method public setAssigned()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned:Z

    return-void
.end method

.method public setBackToBackUserAgent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    return-void
.end method

.method public setDialogId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogId:Ljava/lang/String;

    return-void
.end method

.method setEarlyDialogId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->earlyDialogId:Ljava/lang/String;

    return-void
.end method

.method setEventHeader(Ljavax/sip/header/EventHeader;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->eventHeader:Ljavax/sip/header/EventHeader;

    return-void
.end method

.method public setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 11

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v7

    iput-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->callIdHeader:Ljavax/sip/header/CallIdHeader;

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Invalid status code - 100 in setLastResponse - ignoring"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setAssigned()V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sipDialog: setLastResponse:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lastResponse = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v9}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "sipDialog: setLastResponse -- dialog is terminated - ignoring "

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "INVITE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    iget-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7}, Lgov/nist/core/StackLogger;->logStackTrace()V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cseqMethod = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dialogState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "method = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "statusCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transaction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_6

    instance-of v7, p1, Ljavax/sip/ClientTransaction;

    if-eqz v7, :cond_13

    :cond_6
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-nez v7, :cond_9

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v7, :cond_8

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->originalRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/RecordRoute;

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Route;

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    invoke-virtual {v7, v8}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v7, :cond_8

    :cond_a
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    goto/16 :goto_1

    :cond_b
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    if-eqz v7, :cond_d

    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_d

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setRemoteTag(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    invoke-direct {p0, p2}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPResponse;)V

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    :cond_d
    const-string v7, "INVITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    iget-wide v9, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->lastInviteOkReceived:J

    goto/16 :goto_1

    :cond_e
    const/16 v7, 0x12c

    if-lt v6, v7, :cond_8

    const/16 v7, 0x2bb

    if-gt v6, v7, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/sip/DialogState;->getValue()I

    move-result v7

    sget v8, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-ne v7, v8, :cond_8

    :cond_f
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_1

    :cond_10
    const-string v7, "NOTIFY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SUBSCRIBE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "REFER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_12

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    if-nez v7, :cond_12

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    :cond_12
    const-string v7, "BYE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    :cond_13
    const-string v7, "BYE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v7

    if-eqz v7, :cond_14

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setLocalTag(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_15
    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x2

    if-eq v7, v8, :cond_19

    div-int/lit8 v7, v6, 0x64

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    if-eqz v1, :cond_0

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_0

    :cond_16
    const/16 v7, 0x1e9

    if-ne v6, v7, :cond_18

    const-string v7, "NOTIFY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "SUBSCRIBE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_17
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "RFC 3265 : Not setting dialog to TERMINATED for 489"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->isReInvite()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v7

    sget-object v8, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v7, v8, :cond_0

    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    goto/16 :goto_0

    :cond_19
    iget v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v8, Lgov/nist/javax/sip/stack/SIPDialog;->EARLY_STATE:I

    if-gt v7, v8, :cond_1b

    const-string v7, "INVITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "SUBSCRIBE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    const-string v7, "REFER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    sget v7, Lgov/nist/javax/sip/stack/SIPDialog;->CONFIRMED_STATE:I

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    :cond_1b
    if-eqz v1, :cond_1c

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    :cond_1c
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    sget-object v8, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v7, v8, :cond_0

    invoke-virtual {p2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    const-string v7, "INVITE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Delete dialog -- cannot acquire ackSem"

    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto/16 :goto_0
.end method

.method setReInviteFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->reInviteFlag:Z

    return-void
.end method

.method public setRemoteSequenceNumber(J)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteSeqno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iput-wide p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteSequenceNumber:J

    return-void
.end method

.method setRemoteTarget(Ljavax/sip/header/ContactHeader;)V
    .locals 3

    invoke-interface {p1}, Ljavax/sip/header/ContactHeader;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog.setRemoteTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->remoteTarget:Ljavax/sip/address/Address;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_0
    return-void
.end method

.method public setResponseTags(Lgov/nist/javax/sip/message/SIPResponse;)V
    .locals 3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setToTag(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "No from tag in response! Not RFC 3261 compatible."

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setRetransmissionTicks()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->retransmissionTicksLeft:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->prevRetransmissionTicks:I

    return-void
.end method

.method setRouteList(Lgov/nist/javax/sip/header/RouteList;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->routeList:Lgov/nist/javax/sip/header/RouteList;

    return-void
.end method

.method setServerTransactionFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->serverTransactionFlag:Z

    return-void
.end method

.method public setSipProvider(Lgov/nist/javax/sip/SipProviderImpl;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    return-void
.end method

.method setStack(Lgov/nist/javax/sip/stack/SIPTransactionStack;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    return-void
.end method

.method public setState(I)V
    .locals 4

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting dialog state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  old dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  New dialog state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljavax/sip/DialogState;->getObject(I)Ljavax/sip/DialogState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogState:I

    sget v0, Lgov/nist/javax/sip/stack/SIPDialog;->TERMINATED_STATE:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPDialog$LingerTimer;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->stopTimer()V

    :cond_2
    return-void
.end method

.method public startRetransmitTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljavax/sip/message/Response;)V
    .locals 2

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    :cond_0
    return-void
.end method

.method protected startTimer(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer already running for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting dialog timer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSeen:Z

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V

    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    iput-object p1, v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->transaction:Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->setRetransmissionTicks()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-direct {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;-><init>(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v0
.end method

.method protected stopTimer()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->acquireTimerTaskSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->timerTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogTimerTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseTimerTaskSem()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method takeAckSem()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[takeAckSem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->ackSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Cannot aquire ACK semaphore"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Semaphore previously acquired at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog;->stackTrace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPDialog;->recordStackTrace()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Cannot aquire ACK semaphore"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public terminateOnBye(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->terminateOnBye:Z

    return-void
.end method

.method declared-synchronized testAndSetIsDialogTerminatedEventDelivered()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPDialog;->dialogTerminatedEventDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
