.class public Lgov/nist/javax/sip/stack/SIPClientTransaction;
.super Lgov/nist/javax/sip/stack/SIPTransaction;
.source "SIPClientTransaction.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;
.implements Ljavax/sip/ClientTransaction;
.implements Lgov/nist/javax/sip/ClientTransactionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;
    }
.end annotation


# instance fields
.field private callingStateTimeoutCount:I

.field private defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

.field private lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field private nextHop:Ljavax/sip/address/Hop;

.field private notifyOnRetransmit:Z

.field private transient respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

.field private sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutIfStillInCallingState:Z

.field private viaHost:Ljava/lang/String;

.field private viaPort:I


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    iget-object v0, p2, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating clientTransaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final createErrorAck()Ljavax/sip/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljavax/sip/SipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Can only ACK an INVITE!"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-nez v1, :cond_2

    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "bad Transaction state"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot ACK a provisional response!"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createErrorAck(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1
.end method

.method private inviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x2bb

    const/16 v5, 0x12c

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "resending ACK"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v3, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_c

    div-int/lit8 v3, v2, 0x64

    if-ne v3, v8, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_1

    :cond_6
    div-int/lit8 v3, v2, 0x64

    if-ne v3, v7, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_1

    :cond_8
    if-gt v5, v2, :cond_3

    if-gt v2, v6, :cond_3

    :try_start_1
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Unexpected Exception sending ACK -- sending error AcK "

    invoke-interface {v3, v4, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_3

    :cond_b
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_1

    :cond_c
    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_14

    div-int/lit8 v3, v2, 0x64

    if-ne v3, v7, :cond_e

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_1

    :cond_e
    div-int/lit8 v3, v2, 0x64

    if-ne v3, v8, :cond_10

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_1

    :cond_10
    if-gt v5, v2, :cond_3

    if-gt v2, v6, :cond_3

    :try_start_2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    :cond_11
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v3

    if-nez v3, :cond_12

    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget v3, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_D:I

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    :goto_5
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v3, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_12
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_5

    :cond_13
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_1

    :cond_14
    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_3

    if-gt v5, v2, :cond_3

    if-gt v2, v6, :cond_3

    :try_start_3
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    throw v3

    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method

.method private nonInviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x2bb

    const/16 v4, 0xc8

    const/4 v3, 0x1

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_5

    div-int/lit8 v1, v0, 0x64

    if-ne v1, v3, :cond_2

    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableRetransmissionTimer(I)V

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_0

    :cond_2
    if-gt v4, v0, :cond_0

    if-gt v0, v5, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_1

    :cond_4
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_0

    :cond_5
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_a

    div-int/lit8 v1, v0, 0x64

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_0

    :cond_7
    if-gt v4, v0, :cond_0

    if-gt v0, v5, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->TIMER_K:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_2

    :cond_9
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Not sending response to TU! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_0
.end method


# virtual methods
.method public alertIfStillInCallingStateBy(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    iput p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    return-void
.end method

.method public checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v2

    :goto_1
    xor-int/2addr v1, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "From tag mismatch -- dropping response"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    :goto_2
    return v3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "From tag mismatch -- dropping response"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_2
.end method

.method public clearState()V
    .locals 0

    return-void
.end method

.method public createAck()Ljavax/sip/message/Request;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v10, Ljavax/sip/SipException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ACK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Cannot ACK an ACK!"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-nez v10, :cond_2

    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "bad Transaction state"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ge v10, v11, :cond_4

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lastResponse = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3
    new-instance v10, Ljavax/sip/SipException;

    const-string v11, "Cannot ACK a provisional response!"

    invoke-direct {v10, v11}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v4, v10}, Lgov/nist/javax/sip/message/SIPRequest;->createAckRequest(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v10

    div-int/lit8 v10, v10, 0x64

    const/4 v11, 0x3

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/sip/address/URI;

    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    const-string v10, "Route"

    invoke-virtual {v0, v10}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    new-instance v7, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v10

    invoke-virtual {v5, v10}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgov/nist/javax/sip/header/RecordRoute;

    new-instance v6, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Route;-><init>()V

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    invoke-virtual {v8}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgov/nist/core/NameValueList;

    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v10}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Contact;

    :cond_8
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v10

    check-cast v10, Ljavax/sip/address/SipURI;

    invoke-interface {v10}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v6, 0x0

    if-eqz v1, :cond_9

    new-instance v6, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Route;-><init>()V

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v10}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v6, v10}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    :cond_9
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v9

    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    if-eqz v6, :cond_a

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    :cond_a
    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/sip/address/URI;

    invoke-virtual {v0, v9}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    invoke-virtual {v0, v7}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    goto/16 :goto_0
.end method

.method public createCancel()Ljavax/sip/message/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Only INIVTE may be cancelled"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Cannot Cancel ACK!"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->createCancelRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setInviteTransaction(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected fireRetransmissionTimer()V
    .locals 11

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    if-eqz v2, :cond_2

    sget-object v9, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    if-eq v9, v5, :cond_3

    :cond_2
    if-nez v2, :cond_0

    sget-object v9, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-eq v9, v5, :cond_3

    sget-object v9, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v9, v5, :cond_0

    :cond_3
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v9, v9, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    const-string v10, "Timestamp"

    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v6, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-float v9, v3

    :try_start_1
    invoke-virtual {v6, v9}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v9, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    :cond_4
    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-super {p0, v9}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    if-eqz v9, :cond_5

    new-instance v8, Ljavax/sip/TimeoutEvent;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v9

    sget-object v10, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    invoke-direct {v8, v9, p0, v10}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v9

    invoke-virtual {v9, v8, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    :cond_5
    iget-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v9

    sget-object v10, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    if-ne v9, v10, :cond_0

    iget v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    iget v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    if-nez v9, :cond_0

    new-instance v7, Ljavax/sip/TimeoutEvent;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v9

    sget-object v10, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    invoke-direct {v7, v9, p0, v10}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v9

    invoke-virtual {v9, v7, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseIOExceptionEvent()V

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method protected fireTimeoutTimer()V
    .locals 5

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fireTimeoutTimer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    sget-object v2, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-eq v2, v3, :cond_1

    sget-object v2, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-eq v2, v3, :cond_1

    sget-object v2, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-ne v2, v3, :cond_3

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-ne v2, v3, :cond_6

    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    :cond_3
    :goto_0
    sget-object v2, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-eq v2, v3, :cond_7

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CANCEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    if-eq v2, v3, :cond_4

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v2, v3, :cond_5

    :cond_4
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BYE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto :goto_0

    :cond_7
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_1
.end method

.method public getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    return-object v0
.end method

.method public getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    return-object v0
.end method

.method public getDialog()Ljavax/sip/Dialog;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sipDialogs =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " default dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public getNextHop()Ljavax/sip/address/Hop;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nextHop:Ljavax/sip/address/Hop;

    return-object v0
.end method

.method public getOutgoingViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public getRequestChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 0

    return-object p0
.end method

.method public getViaHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaHost:Ljava/lang/String;

    return-object v0
.end method

.method public getViaPort()I
    .locals 1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaPort:I

    return v0
.end method

.method public isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "z9hg4bk"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "z9hg4bk"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v5

    :goto_0
    const/4 v2, 0x0

    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    if-ne v4, v7, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method public isNotifyOnRetransmit()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    return v0
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CANCEL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-eqz v5, :cond_0

    iget-object v2, v5, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    :cond_0
    :goto_0
    if-nez v2, :cond_b

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    const/16 v7, 0x64

    if-le v0, v7, :cond_a

    const/16 v7, 0x12c

    if-ge v0, v7, :cond_a

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isRfc2543Supported()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_1
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-static {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v4

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_2

    const-string v7, "SUBSCRIBE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NOTIFY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v7, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    :cond_3
    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    :cond_4
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-virtual {p0, p1, p2, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    return-void

    :cond_5
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "dialog is unexpectedly null"

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v7, v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_8
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Response without from-tag"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v7, v7, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v7, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v7}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    goto :goto_3

    :cond_b
    invoke-virtual {v2, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    goto :goto_3
.end method

.method public declared-synchronized processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_2

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    :cond_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "current state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->inviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    :cond_5
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_6
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nonInviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    move-object v3, v0

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending Message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TransactionState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    sget-object v4, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget-object v4, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    :goto_1
    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    return-void

    :cond_2
    :try_start_3
    sget-object v4, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    iput-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    throw v4

    :cond_3
    :try_start_4
    iput-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableRetransmissionTimer()V

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    :cond_5
    :goto_4
    invoke-super {p0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    iput-boolean v7, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    goto :goto_2

    :cond_6
    :try_start_5
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_6
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :try_start_7
    sget-object v4, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_3

    :cond_8
    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public sendRequest()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "Request already sent"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendRequest() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUBSCRIBE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Expires"

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Expires header missing in outgoing subscribe -- Notifier will assume implied value on event package"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CANCEL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isCancelClientTransactionChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-nez v0, :cond_4

    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "Could not find original tx to cancel. RFC 3261 9.1"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "IO Error sending request"

    invoke-direct {v4, v5, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "missing required header"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_3
    new-instance v4, Ljavax/sip/SipException;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "State is null no provisional response yet -- cannot cancel RFC 3261 9.1"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "Cannot cancel non-invite requests RFC 3261 9.1"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BYE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOTIFY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "Dialog is present and AutomaticDialogSupport is enabled for  the provider -- Send the Request using the Dialog.sendRequest(transaction)"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljavax/sip/SipException;

    const-string v5, "Failed to take ACK semaphore"

    invoke-direct {v4, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    const/4 v4, 0x1

    iput-boolean v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->isMapped:Z

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void
.end method

.method public setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sipDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "NULL DIALOG!!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad dialog null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-nez v0, :cond_3

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public setNextHop(Ljavax/sip/address/Hop;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nextHop:Ljavax/sip/address/Hop;

    return-void
.end method

.method public setNotifyOnRetransmit(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    return-void
.end method

.method public setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting response interface for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "WARNING -- setting to null!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    return-void
.end method

.method public setState(Ljavax/sip/TransactionState;)V
    .locals 2

    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v0, :cond_0

    const/16 v0, 0x40

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->collectionTime:I

    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v0, v1, :cond_2

    sget-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->decrementActiveClientTransactionCount()V

    :cond_2
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    return-void
.end method

.method protected setViaHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaHost:Ljava/lang/String;

    return-void
.end method

.method protected setViaPort(I)V
    .locals 0

    iput p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaPort:I

    return-void
.end method

.method protected startTransactionTimer()V
    .locals 6

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iget v2, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lgov/nist/javax/sip/stack/SIPTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    return-void
.end method
