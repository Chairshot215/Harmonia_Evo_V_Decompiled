.class Lgov/nist/javax/sip/DialogFilter;
.super Ljava/lang/Object;
.source "DialogFilter.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerRequestInterface;
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;


# instance fields
.field protected listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field protected transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    return-void
.end method

.method private sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .locals 5

    const/16 v3, 0x190

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-virtual {v2, p3}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    :cond_2
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 5

    const/16 v3, 0x1e1

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    :cond_1
    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 5

    const/16 v3, 0x1e2

    invoke-virtual {p1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v2

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    invoke-virtual {p2, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Problem sending error response"

    invoke-interface {v3, v4, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    iget-object v3, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6

    const/16 v4, 0x1eb

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_0
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "INVITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    :cond_1
    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Problem sending error response"

    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method

.method private sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 6

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Sending 500 response for out of sequence message"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0x1f4

    invoke-virtual {p1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v3

    const-string v4, "Request out of order"

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax/sip/header/ServerHeader;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    :cond_1
    :try_start_0
    new-instance v1, Lgov/nist/javax/sip/header/RetryAfter;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/RetryAfter;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/header/RetryAfter;->setRetryAfter(I)V

    invoke-virtual {v3, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setHeader(Ljavax/sip/header/Header;)V

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->addTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    invoke-virtual {p2, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Problem sending response"

    invoke-interface {v4, v5, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    iget-object v4, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, p2}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_0
.end method


# virtual methods
.method public getProcessingInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public processRequest(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 42

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PROCESSING INCOMING REQUEST "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " transactionChannel = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " listening point = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ":"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    if-nez v38, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Dropping message: No listening point registered!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/stack/SIPTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v33

    check-cast v33, Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v31

    if-nez v31, :cond_3

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_1

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "No provider - dropping !!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v33, :cond_4

    const-string v38, "Egads! no sip stack!"

    invoke-static/range {v38 .. v38}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    move-object/from16 v36, v0

    check-cast v36, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v36, :cond_5

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_5

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "transaction state = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_5
    const/16 v38, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_b

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getMyContactHeader()Lgov/nist/javax/sip/header/Contact;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v38

    check-cast v38, Lgov/nist/javax/sip/address/SipUri;

    move-object/from16 v9, v38

    check-cast v9, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    move-result v7

    invoke-virtual {v9}, Lgov/nist/javax/sip/address/SipUri;->getTransportParam()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "udp"

    :cond_6
    const/16 v38, -0x1

    move/from16 v0, v38

    if-ne v7, v0, :cond_8

    const-string v38, "udp"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_7

    const-string v38, "tcp"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c

    :cond_7
    const/16 v7, 0x13c4

    :cond_8
    :goto_1
    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v38

    move/from16 v0, v38

    if-eq v7, v0, :cond_b

    :cond_9
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_a

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "nulling dialog -- listening point mismatch!  "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "  lp port = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_a
    const/4 v12, 0x0

    :cond_b
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_d

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_d

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v38

    if-nez v38, :cond_d

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findMergedTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v32

    if-eqz v32, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendLoopDetectedResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0x13c5

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_e

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "dialogId = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "dialog = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_e
    const-string v38, "Route"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v38

    if-eqz v38, :cond_10

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v38

    if-eqz v38, :cond_10

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v27

    check-cast v27, Lgov/nist/javax/sip/header/Route;

    invoke-virtual/range {v27 .. v27}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v37

    check-cast v37, Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/core/HostPort;->hasPort()Z

    move-result v38

    if-eqz v38, :cond_11

    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/core/HostPort;->getPort()I

    move-result v25

    :goto_2
    invoke-virtual/range {v37 .. v37}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getSentBy()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    if-ne v0, v1, :cond_10

    invoke-virtual/range {v28 .. v28}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    const-string v38, "Route"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    :cond_10
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "REFER"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_16

    if-eqz v12, :cond_16

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_16

    const-string v38, "Refer-To"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v30

    check-cast v30, Ljavax/sip/header/ReferToHeader;

    if-nez v30, :cond_14

    const-string v38, "Refer-To header is missing"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/DialogFilter;->sendBadRequestResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v38

    const-string v39, "TLS"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_12

    const/16 v25, 0x13c5

    goto/16 :goto_2

    :cond_12
    const/16 v25, 0x13c4

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {v28 .. v28}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()V

    goto :goto_3

    :cond_14
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v21

    if-eqz v21, :cond_18

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v20

    check-cast v20, Lgov/nist/javax/sip/message/SIPRequest;

    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_15

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v38

    if-nez v38, :cond_18

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "INVITE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_18

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v22

    const-string v38, "INVITE"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-virtual {v12, v10, v11}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v38

    if-nez v38, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "UPDATE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_18

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendCallOrTransactionDoesNotExistResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "ACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_29

    if-eqz v36, :cond_1c

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_1c

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Processing ACK for INVITE Tx "

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_18
    :goto_4
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_19

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "CHECK FOR OUT OF SEQ MESSAGE "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " transaction "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_19
    if-eqz v12, :cond_49

    if-eqz v36, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "BYE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "CANCEL"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "ACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_49

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "PRACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_49

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v38

    if-nez v38, :cond_48

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_1a

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dropping out of sequence message "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v38

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-ltz v38, :cond_1

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_1

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_1b

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_1

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_1d

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Processing ACK for dialog "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1d
    if-nez v12, :cond_21

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_1e

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dialog does not exist "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isServerTransaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v34

    if-eqz v34, :cond_1f

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v38

    if-eqz v38, :cond_1f

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    :cond_1f
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_20

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Found Tx pending ACK"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_20
    :try_start_0
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v17

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_1

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Problem terminating transaction"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handleAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z

    move-result v38

    if-nez v38, :cond_26

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v38

    if-nez v38, :cond_23

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_22

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dialog exists with loose dialog validation "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isServerTransaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " dialog = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/SipStackImpl;->getRetransmissionAlertTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v34

    if-eqz v34, :cond_18

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isRetransmissionAlertEnabled()Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->disableRetransmissionAlerts()V

    goto/16 :goto_4

    :cond_23
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_24

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Dropping ACK - cannot find a transaction or dialog"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_24
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->findTransactionPendingAck(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_25

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Found Tx pending ACK"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_25
    :try_start_1
    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setAckSeen()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/SipStackImpl;->removeTransactionPendingAck(Lgov/nist/javax/sip/stack/SIPServerTransaction;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v17

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_1

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Problem terminating transaction"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_26
    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "INVITE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_27

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_27

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    :cond_27
    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    move/from16 v38, v0

    if-eqz v38, :cond_28

    :try_start_2
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->scheduleAckRemoval()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v38

    goto/16 :goto_4

    :cond_28
    const/16 v38, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setMapped(Z)V

    goto/16 :goto_4

    :cond_29
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "PRACK"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_31

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_2a

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Processing PRACK for dialog "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2a
    if-nez v12, :cond_2d

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_2d

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_2b

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dialog does not exist "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isServerTransaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_2c

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 481 for PRACK - automatic dialog support is enabled -- cant find dialog!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2c
    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v23

    :try_start_3
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_3
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    if-eqz v36, :cond_1

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_0

    :catch_3
    move-exception v14

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "error sending response"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v14}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    :cond_2d
    if-eqz v12, :cond_30

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->handlePrack(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v38

    if-nez v38, :cond_2f

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_2e

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Dropping out of sequence PRACK "

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_2e
    if-eqz v36, :cond_1

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_0

    :cond_2f
    :try_start_4
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :cond_30
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Processing PRACK without a DIALOG -- this must be a proxy element"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_31
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "BYE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_38

    if-eqz v12, :cond_34

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isRequestConsumable(Lgov/nist/javax/sip/message/SIPRequest;)Z

    move-result v38

    if-nez v38, :cond_34

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_32

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Dropping out of sequence BYE "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v38

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-ltz v38, :cond_33

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    :cond_33
    if-eqz v36, :cond_1

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    :cond_34
    if-nez v12, :cond_36

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_36

    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v26

    const-string v38, "Dialog Not Found"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_35

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "dropping request -- automatic dialog support enabled and dialog does not exist!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_35
    :try_start_5
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_5
    .catch Ljavax/sip/SipException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    if-eqz v36, :cond_1

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    const/16 v36, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v17

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Error in sending response"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_6

    :cond_36
    if-eqz v36, :cond_37

    if-eqz v12, :cond_37

    :try_start_6
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_37

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_37
    :goto_7
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "BYE Tx = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isMapped ="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_6
    move-exception v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_7

    :cond_38
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "CANCEL"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_40

    const/16 v38, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v34

    check-cast v34, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_39

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Got a CANCEL, InviteServerTx = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " cancel Server Tx ID = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " isMapped = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_39
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "CANCEL"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3c

    if-eqz v34, :cond_3b

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_3b

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_3a

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Too late to cancel Transaction"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3a
    const/16 v38, 0xc8

    :try_start_7
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v38

    if-eqz v38, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v38

    move-object/from16 v0, v38

    instance-of v0, v0, Ljava/io/IOException;

    move/from16 v38, v0

    if-eqz v38, :cond_1

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    goto/16 :goto_0

    :cond_3b
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_3c

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cancel transaction = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3c
    if-eqz v36, :cond_3e

    if-eqz v34, :cond_3e

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v38

    if-eqz v38, :cond_3e

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v38

    check-cast v38, Lgov/nist/javax/sip/stack/SIPDialog;

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v12

    check-cast v12, Lgov/nist/javax/sip/stack/SIPDialog;

    :cond_3d
    if-eqz v34, :cond_18

    if-eqz v36, :cond_18

    :try_start_8
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setInviteTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    invoke-virtual/range {v34 .. v34}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->acquireSem()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_4

    :cond_3e
    if-nez v34, :cond_3d

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_3d

    if-eqz v36, :cond_3d

    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v26

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_3f

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "dropping request -- automatic dialog support enabled and INVITE ST does not exist!"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_3f
    :try_start_9
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_9
    .catch Ljavax/sip/SipException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_8
    if-eqz v36, :cond_1

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    goto/16 :goto_0

    :catch_9
    move-exception v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_8

    :cond_40
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "INVITE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_18

    if-nez v12, :cond_42

    const/16 v21, 0x0

    :goto_9
    if-eqz v12, :cond_43

    if-eqz v36, :cond_43

    if-eqz v21, :cond_43

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v38

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteSeqNumber()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-lez v38, :cond_43

    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_43

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_43

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isSequnceNumberValidation()Z

    move-result v38

    if-eqz v38, :cond_43

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_43

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_43

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_43

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v38

    sget-object v39, Ljavax/sip/TransactionState;->CONFIRMED:Ljavax/sip/TransactionState;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_43

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_41

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 500 response for out of sequence message"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendServerInternalErrorResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_42
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getInviteTransaction()Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v21

    goto :goto_9

    :cond_43
    if-nez v12, :cond_45

    const/16 v21, 0x0

    :goto_a
    if-eqz v12, :cond_46

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_46

    if-eqz v21, :cond_46

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_46

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/sip/ClientTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_46

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    if-eqz v38, :cond_46

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v38

    const/16 v39, 0xc8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_46

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-virtual {v12, v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSent(J)Z

    move-result v38

    if-nez v38, :cond_46

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_44

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 491 response for client Dialog ACK not sent."

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_45
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastTransaction()Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v21

    goto :goto_a

    :cond_46
    if-eqz v12, :cond_18

    if-eqz v21, :cond_18

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v38

    if-eqz v38, :cond_18

    invoke-virtual/range {v21 .. v21}, Lgov/nist/javax/sip/stack/SIPTransaction;->isInviteTransaction()Z

    move-result v38

    if-eqz v38, :cond_18

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavax/sip/ServerTransaction;

    move/from16 v38, v0

    if-eqz v38, :cond_18

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v38

    if-nez v38, :cond_18

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_47

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Sending 491 response for server Dialog ACK not seen."

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_47
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/DialogFilter;->sendRequestPendingResponse(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    goto/16 :goto_0

    :cond_48
    :try_start_a
    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_49

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    :cond_49
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_4a

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " transaction.isMapped = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4a
    if-nez v12, :cond_59

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v38

    const-string v39, "NOTIFY"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v24

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_4b

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PROCESSING NOTIFY  DIALOG == null "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4b
    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-eqz v38, :cond_4d

    if-nez v24, :cond_4d

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    move/from16 v38, v0

    if-nez v38, :cond_4d

    :try_start_b
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_4c

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Could not find Subscription for Notify Tx."

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4c
    const/16 v38, 0x1e1

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createResponse(I)Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v15

    const-string v38, "Subscription does not exist"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Ljavax/sip/message/Response;->setReasonPhrase(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Lgov/nist/javax/sip/SipProviderImpl;->sendResponse(Ljavax/sip/message/Response;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v17

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "Exception while sending error response statelessly"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_b
    move-exception v17

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->raiseIOExceptionEvent()V

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removeTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    :cond_4d
    if-eqz v24, :cond_57

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPendingSubscribe(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v35

    if-eqz v35, :cond_4e

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_4e

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_54

    :cond_4e
    if-eqz v35, :cond_53

    invoke-virtual/range {v35 .. v35}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v38

    if-nez v38, :cond_53

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->setDialogId(Ljava/lang/String;)V

    :goto_b
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_4f

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PROCESSING NOTIFY Subscribe DIALOG "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_4f
    if-nez v35, :cond_51

    invoke-virtual/range {v31 .. v31}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v38

    if-nez v38, :cond_50

    invoke-virtual/range {v24 .. v24}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v38

    if-eqz v38, :cond_51

    :cond_50
    const-string v38, "Event"

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v16

    check-cast v16, Lgov/nist/javax/sip/header/Event;

    invoke-virtual/range {v16 .. v16}, Lgov/nist/javax/sip/header/Event;->getEventType()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->isEventForked(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_51

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->createFromNOTIFY(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v35

    :cond_51
    if-eqz v35, :cond_52

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    sget-object v38, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    invoke-virtual/range {v38 .. v38}, Ljavax/sip/DialogState;->getValue()I

    move-result v38

    move-object/from16 v0, v35

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->setState(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-nez v38, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    :cond_52
    :goto_c
    if-eqz v36, :cond_56

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-eqz v38, :cond_56

    new-instance v29, Ljavax/sip/RequestEvent;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    move-object/from16 v3, v35

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    :goto_d
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    :cond_53
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v35

    goto/16 :goto_b

    :cond_54
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    move-object/from16 v12, v35

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-nez v38, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setPassToListener()V

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    :cond_55
    :goto_e
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    if-eqz v24, :cond_52

    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v13}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_c

    :cond_56
    new-instance v29, Ljavax/sip/RequestEvent;

    const/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    move-object/from16 v3, v35

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    goto :goto_d

    :cond_57
    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v38

    if-eqz v38, :cond_58

    invoke-virtual/range {v33 .. v33}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v38

    const-string v39, "could not find subscribe tx"

    invoke-interface/range {v38 .. v39}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_58
    new-instance v29, Ljavax/sip/RequestEvent;

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    goto/16 :goto_d

    :cond_59
    if-eqz v36, :cond_5a

    invoke-virtual/range {v36 .. v36}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTransactionMapped()Z

    move-result v38

    if-eqz v38, :cond_5a

    new-instance v29, Ljavax/sip/RequestEvent;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v36

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v12, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    goto/16 :goto_d

    :cond_5a
    new-instance v29, Ljavax/sip/RequestEvent;

    const/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v38

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v12, v3}, Ljavax/sip/RequestEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Dialog;Ljavax/sip/message/Request;)V

    goto/16 :goto_d

    :catch_c
    move-exception v38

    goto :goto_e

    :catch_d
    move-exception v38

    goto/16 :goto_c
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 16

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PROCESSING INCOMING RESPONSE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Detected stray response -- dropping"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dropping message: No listening point registered!"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dropping message:  no provider"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dropping message:  no sipListener registered!"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v11, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    if-nez v9, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v11, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    sget-object v13, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v12, v13, :cond_6

    const/4 v9, 0x0

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transaction = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " sipDialog = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v12}, Lgov/nist/javax/sip/stack/SIPTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v12

    check-cast v12, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v12}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v12, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v13

    invoke-interface {v13}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_2
    xor-int/2addr v12, v13

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "From tag mismatch -- dropping response"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x0

    goto :goto_1

    :cond_9
    const/4 v13, 0x0

    goto :goto_2

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "From tag mismatch -- dropping response"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-static {v5}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x64

    if-eq v12, v13, :cond_11

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    if-nez v9, :cond_11

    invoke-virtual {v10}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v12, :cond_10

    if-nez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v12, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object/from16 v0, p1

    invoke-virtual {v13, v12, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "sending response to TU for processing "

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    const/16 v13, 0x64

    if-eq v12, v13, :cond_e

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p1

    invoke-virtual {v9, v11, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    :cond_e
    new-instance v8, Lgov/nist/javax/sip/ResponseEventExt;

    move-object/from16 v0, p1

    invoke-direct {v8, v10, v11, v9, v0}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v12

    const-string v13, "INVITE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v7

    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    :cond_f
    invoke-virtual {v10, v8, v11}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, p1

    invoke-virtual {v12, v10, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/SipProviderImpl;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v9

    goto :goto_3

    :cond_11
    if-eqz v9, :cond_c

    if-nez v11, :cond_c

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    sget-object v13, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v12, v13, :cond_c

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    div-int/lit8 v12, v12, 0x64

    const/4 v13, 0x2

    if-eq v12, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status code != 200 ; statusCode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v12

    sget-object v13, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Dialog is terminated -- dropping response!"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v12

    div-int/lit8 v12, v12, 0x64

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v12

    const-string v13, "INVITE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lgov/nist/javax/sip/stack/SIPDialog;->createAck(J)Ljavax/sip/message/Request;

    move-result-object v2

    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/stack/SIPDialog;->sendAck(Ljavax/sip/message/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "Error creating ack"

    invoke-interface {v12, v13, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v12

    if-eqz v12, :cond_15

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v12

    invoke-virtual {v12}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v14

    invoke-interface {v14}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_15

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v1, 0x1

    :cond_15
    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v12

    invoke-interface {v12}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v12}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    const-string v13, "resending ACK"

    invoke-interface {v12, v13}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v9}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v12

    goto/16 :goto_3
.end method

.method public processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 12

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PROCESSING INCOMING RESPONSE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->encodeMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    if-nez v8, :cond_2

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping message: No listening point registered!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v8

    invoke-virtual {v8, p1}, Lgov/nist/javax/sip/Utils;->responseBelongsToUs(Lgov/nist/javax/sip/message/SIPResponse;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping response - topmost VIA header does not originate from this stack"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->listeningPoint:Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/ListeningPointImpl;->getProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dropping message:  no provider"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "No listener -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lgov/nist/javax/sip/DialogFilter;->transactionChannel:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v7, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    iget-object v6, v5, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_6
    if-nez v7, :cond_e

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    div-int/lit8 v8, v8, 0x64

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Response is not a final response and dialog is found for response -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v8, v9, :cond_8

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Dialog is terminated -- dropping response!"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v8

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v10

    invoke-interface {v10}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    :try_start_0
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Retransmission of OK detected: Resending last ACK"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "could not resend ack"

    invoke-interface {v8, v9, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_b
    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not find tx, handling statelessly Dialog =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_c
    new-instance v4, Lgov/nist/javax/sip/ResponseEventExt;

    invoke-direct {v4, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v2

    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    :cond_d
    invoke-virtual {v5, v4, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    new-instance v3, Lgov/nist/javax/sip/ResponseEventExt;

    invoke-direct {v3, v5, v7, p3, p1}, Lgov/nist/javax/sip/ResponseEventExt;-><init>(Ljava/lang/Object;Lgov/nist/javax/sip/ClientTransactionExt;Ljavax/sip/Dialog;Ljavax/sip/message/Response;)V

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeqHeader()Ljavax/sip/header/CSeqHeader;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "INVITE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lgov/nist/javax/sip/DialogFilter;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/SipStackImpl;->getForkedTransaction(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgov/nist/javax/sip/ResponseEventExt;->setOriginalTransaction(Lgov/nist/javax/sip/ClientTransactionExt;)V

    :cond_f
    if-eqz p3, :cond_10

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_10

    invoke-virtual {p3, v7, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p3, v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v5, v3, v7}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto/16 :goto_0
.end method
