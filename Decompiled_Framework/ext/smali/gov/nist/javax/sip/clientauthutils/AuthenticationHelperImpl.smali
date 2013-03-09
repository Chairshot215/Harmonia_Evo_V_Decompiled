.class public Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;
.super Ljava/lang/Object;
.source "AuthenticationHelperImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;


# instance fields
.field private accountManager:Ljava/lang/Object;

.field private cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

.field private headerFactory:Ljavax/sip/header/HeaderFactory;

.field private sipStack:Lgov/nist/javax/sip/SipStackImpl;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    iput-object p2, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    iput-object p3, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    iput-object p1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    new-instance v0, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    return-void
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;
    .locals 15

    const/4 v14, 0x0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v9, "auth"

    :goto_0
    const-string v4, "00000001"

    const-string v5, "xyz"

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getHashUserDomainPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v10

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v1 .. v10}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p4

    instance-of v1, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v11

    :goto_1
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-interface {v11, v1, v0}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v14}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    :cond_0
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v11, v9}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    :cond_2
    invoke-interface {v11, v14}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    return-object v11

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_1

    :catch_0
    move-exception v12

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create an authorization header!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;
    .locals 17

    const/16 v16, 0x0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    const-string v11, "auth"

    :goto_0
    const-string v6, "00000001"

    const-string v7, "xyz"

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v12

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-static/range {v1 .. v12}, Lgov/nist/javax/sip/clientauthutils/MessageDigestAlgorithm;->calculateResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgov/nist/core/StackLogger;)Ljava/lang/String;

    move-result-object v16

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p4

    instance-of v1, v0, Ljavax/sip/header/ProxyAuthenticateHeader;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createProxyAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/ProxyAuthorizationHeader;

    move-result-object v13

    :goto_1
    invoke-interface/range {p5 .. p5}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setUsername(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setRealm(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonce(Ljava/lang/String;)V

    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-interface {v13, v1, v0}, Ljavax/sip/header/AuthorizationHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setAlgorithm(Ljava/lang/String;)V

    :cond_0
    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setOpaque(Ljava/lang/String;)V

    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v13, v11}, Ljavax/sip/header/AuthorizationHeader;->setQop(Ljava/lang/String;)V

    invoke-interface {v13, v7}, Ljavax/sip/header/AuthorizationHeader;->setCNonce(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Ljavax/sip/header/AuthorizationHeader;->setNonceCount(I)V

    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljavax/sip/header/AuthorizationHeader;->setResponse(Ljava/lang/String;)V

    return-object v13

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->headerFactory:Ljavax/sip/header/HeaderFactory;

    invoke-interface/range {p4 .. p4}, Ljavax/sip/header/WWWAuthenticateHeader;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/sip/header/HeaderFactory;->createAuthorizationHeader(Ljava/lang/String;)Ljavax/sip/header/AuthorizationHeader;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto :goto_1

    :catch_0
    move-exception v14

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create an authorization header!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeBranchID(Ljavax/sip/message/Request;)V
    .locals 2

    const-string v1, "Via"

    invoke-interface {p1, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/ViaHeader;

    const-string v1, "branch"

    invoke-interface {v0, v1}, Ljavax/sip/header/ViaHeader;->removeParameter(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleChallenge(Ljavax/sip/message/Response;Ljavax/sip/ClientTransaction;Ljavax/sip/SipProvider;I)Ljavax/sip/ClientTransaction;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleChallenge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v17

    check-cast v17, Lgov/nist/javax/sip/message/SIPRequest;

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v2

    sget-object v3, Ljavax/sip/DialogState;->CONFIRMED:Ljavax/sip/DialogState;

    if-eq v2, v3, :cond_4

    :cond_1
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->clone()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavax/sip/message/Request;

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->removeBranchID(Ljavax/sip/message/Request;)V

    if-eqz p1, :cond_3

    if-nez v24, :cond_6

    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "A null argument was passed to handle challenge."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v18

    throw v18

    :cond_4
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/sip/Dialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getHeaderNames()Ljava/util/ListIterator;

    move-result-object v20

    :cond_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/sip/message/Request;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Unexpected exception "

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Unexpected exception "

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    const/4 v14, 0x0

    :try_start_2
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_7

    const-string v2, "WWW-Authenticate"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v14

    :goto_1
    if-nez v14, :cond_9

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not find WWWAuthenticate or ProxyAuthenticate headers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-interface/range {p1 .. p1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    const/16 v3, 0x197

    if-ne v2, v3, :cond_8

    const-string v2, "Proxy-Authenticate"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v14

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unexpected status code "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string v2, "Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    const-string v2, "Proxy-Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    const-string v2, "CSeq"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v16

    check-cast v16, Ljavax/sip/header/CSeqHeader;
    :try_end_2
    .catch Ljavax/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljavax/sip/header/CSeqHeader;->setSeqNumber(J)V
    :try_end_3
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Lgov/nist/javax/sip/message/SIPRequest;->getRouteHeaders()Lgov/nist/javax/sip/header/RouteList;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v0, p2

    check-cast v0, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-object v2, v0

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v21

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v28

    check-cast v28, Ljavax/sip/address/SipURI;

    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v28 .. v28}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/address/Router;->getOutboundProxy()Ljavax/sip/address/Hop;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljavax/sip/address/SipURI;->setMAddrParam(Ljava/lang/String;)V

    :cond_a
    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    invoke-interface/range {v21 .. v21}, Ljavax/sip/address/Hop;->getPort()I

    move-result v2

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljavax/sip/address/SipURI;->setPort(I)V

    :cond_b
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljavax/sip/SipProvider;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v26

    const/4 v6, 0x0

    invoke-interface/range {p2 .. p2}, Ljavax/sip/ClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v25

    check-cast v25, Ljavax/sip/address/SipURI;

    :goto_2
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/sip/header/WWWAuthenticateHeader;

    invoke-interface {v6}, Ljavax/sip/header/WWWAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v23

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    instance-of v2, v2, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    check-cast v2, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;->getCredentialHash(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;

    move-result-object v7

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v29

    invoke-interface {v7}, Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;->getSipDomain()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v5, ""

    :goto_3
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentialHash;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created authorization header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_c
    if-eqz p4, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    move-object/from16 v0, v27

    move/from16 v1, p4

    invoke-virtual {v2, v0, v15, v1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->cacheAuthorizationHeader(Ljava/lang/String;Ljavax/sip/header/AuthorizationHeader;I)V

    :cond_d
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto/16 :goto_2

    :catch_2
    move-exception v18

    new-instance v2, Ljavax/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CSeq -- could not increment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    new-instance v5, Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->accountManager:Ljava/lang/Object;

    check-cast v2, Lgov/nist/javax/sip/clientauthutils/AccountManager;

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v2, v0, v1}, Lgov/nist/javax/sip/clientauthutils/AccountManager;->getCredentials(Ljavax/sip/ClientTransaction;Ljava/lang/String;)Lgov/nist/javax/sip/clientauthutils/UserCredentials;

    move-result-object v13

    invoke-interface {v13}, Lgov/nist/javax/sip/clientauthutils/UserCredentials;->getSipDomain()Ljava/lang/String;

    move-result-object v27

    if-nez v13, :cond_10

    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Cannot find user creds for the given user name and realm"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRequestURI()Ljavax/sip/address/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getContent()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v11, ""

    :goto_5
    move-object/from16 v8, p0

    move-object v12, v6

    invoke-direct/range {v8 .. v13}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/sip/header/WWWAuthenticateHeader;Lgov/nist/javax/sip/clientauthutils/UserCredentials;)Ljavax/sip/header/AuthorizationHeader;

    move-result-object v15

    goto/16 :goto_4

    :cond_11
    new-instance v11, Ljava/lang/String;

    invoke-interface/range {v24 .. v24}, Ljavax/sip/message/Request;->getRawContent()[B

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning authorization transaction."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljavax/sip/SipException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_13
    return-object v26
.end method

.method public removeCachedAuthenticationHeaders(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null callId argument "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->removeAuthenticationHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthenticationHeaders(Ljavax/sip/message/Request;)V
    .locals 8

    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getCallId()Ljavax/sip/header/CallIdHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Authorization"

    invoke-interface {p1, v5}, Ljavax/sip/message/Request;->removeHeader(Ljava/lang/String;)V

    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->cachedCredentials:Lgov/nist/javax/sip/clientauthutils/CredentialsCache;

    invoke-virtual {v5, v2}, Lgov/nist/javax/sip/clientauthutils/CredentialsCache;->getCachedAuthorizationHeaders(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find authentication headers for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/AuthorizationHeader;

    invoke-interface {p1, v0}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    goto :goto_0
.end method
