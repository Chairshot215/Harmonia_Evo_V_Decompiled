.class public Lgov/nist/javax/sip/SipStackImpl;
.super Lgov/nist/javax/sip/stack/SIPTransactionStack;
.source "SipStackImpl.java"

# interfaces
.implements Ljavax/sip/SipStack;
.implements Lgov/nist/javax/sip/SipStackExt;


# static fields
.field public static final MAX_DATAGRAM_SIZE:Ljava/lang/Integer;


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field deliverTerminatedEventForAck:Z

.field deliverUnsolicitedNotify:Z

.field private enabledProtocols:[Ljava/lang/String;

.field private eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private listeningPoints:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/ListeningPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field reEntrantListener:Z

.field sipListener:Ljavax/sip/SipListener;

.field private sipProviders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private stackSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;-><init>()V

    iput-boolean v3, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    iput-boolean v3, p0, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v1, v3

    const-string v2, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v1, v4

    const-string v2, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    aput-object v2, v1, v5

    const-string v2, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    aput-object v2, v1, v6

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SSLv3"

    aput-object v2, v1, v3

    const-string v2, "SSLv2Hello"

    aput-object v2, v1, v4

    const-string v2, "TLSv1"

    aput-object v2, v1, v5

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    new-instance v0, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/NistSipMessageFactoryImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    invoke-super {p0, v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setMessageFactory(Lgov/nist/javax/sip/stack/StackMessageFactory;)V

    new-instance v1, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/PeerUnavailableException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;-><init>()V

    const-string v61, "javax.sip.IP_ADDRESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    invoke-super {v0, v7}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setHostAddress(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v61, "javax.sip.STACK_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    if-nez v37, :cond_1

    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "stack name is missing"

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    :catch_0
    move-exception v23

    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "bad address "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackName(Ljava/lang/String;)V

    const-string v61, "gov.nist.javax.sip.STACK_LOGGER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    if-nez v54, :cond_2

    const-string v54, "gov.nist.core.LogWriter"

    :cond_2
    :try_start_1
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v53

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v8, v0, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lgov/nist/core/StackLogger;

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->setStackProperties(Ljava/util/Properties;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setStackLogger(Lgov/nist/core/StackLogger;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v61, "gov.nist.javax.sip.SERVER_LOGGER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    if-nez v49, :cond_3

    const-string v49, "gov.nist.javax.sip.stack.ServerLog"

    :cond_3
    :try_start_2
    invoke-static/range {v49 .. v49}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v48

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v8, v0, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lgov/nist/core/ServerLogger;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lgov/nist/core/ServerLogger;->setSipStack(Ljavax/sip/SipStack;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverLogger:Lgov/nist/core/ServerLogger;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgov/nist/core/ServerLogger;->setStackProperties(Ljava/util/Properties;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const-string v61, "javax.sip.OUTBOUND_PROXY"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->outboundProxy:Ljava/lang/String;

    new-instance v61, Lgov/nist/javax/sip/stack/DefaultRouter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->outboundProxy:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    move-object/from16 v2, v62

    invoke-direct {v0, v1, v2}, Lgov/nist/javax/sip/stack/DefaultRouter;-><init>(Ljavax/sip/SipStack;Ljava/lang/String;)V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->defaultRouter:Lgov/nist/javax/sip/stack/DefaultRouter;

    const-string v61, "javax.sip.ROUTER_PATH"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_4

    const-string v46, "gov.nist.javax.sip.stack.DefaultRouter"

    :cond_4
    :try_start_3
    invoke-static/range {v46 .. v46}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v45

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v61, 0x0

    const-class v62, Ljavax/sip/SipStack;

    aput-object v62, v19, v61

    const/16 v61, 0x1

    const-class v62, Ljava/lang/String;

    aput-object v62, v19, v61

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v18

    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v8, v0, [Ljava/lang/Object;

    const/16 v61, 0x0

    aput-object p0, v8, v61

    const/16 v61, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->outboundProxy:Ljava/lang/String;

    move-object/from16 v62, v0

    aput-object v62, v8, v61

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljavax/sip/address/Router;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-super {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setRouter(Ljavax/sip/address/Router;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    const-string v61, "javax.sip.USE_ROUTER_FOR_ALL_URIS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    if-eqz v60, :cond_5

    const-string v61, "true"

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->useRouterForAll:Z

    :cond_5
    const-string v61, "javax.sip.EXTENSION_METHODS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_8

    new-instance v51, Ljava/util/StringTokenizer;

    move-object/from16 v0, v51

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v61

    if-eqz v61, :cond_8

    const-string v61, ":"

    move-object/from16 v0, v51

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v61, "BYE"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_6

    const-string v61, "INVITE"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_6

    const-string v61, "SUBSCRIBE"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_6

    const-string v61, "NOTIFY"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_6

    const-string v61, "ACK"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_6

    const-string v61, "OPTIONS"

    move-object/from16 v0, v22

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_7

    :cond_6
    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Bad extension method "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    :catch_1
    move-exception v24

    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate stack logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    :catch_2
    move-exception v23

    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate stack logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    :catch_3
    move-exception v24

    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate server logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    :catch_4
    move-exception v23

    new-instance v61, Ljava/lang/IllegalArgumentException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Cound not instantiate server logger "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "- check that it is present on the classpath and that there is a no-args constructor defined"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    :catch_5
    move-exception v24

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v62

    const-string v63, "could not instantiate router -- invocation target problem"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v61

    check-cast v61, Ljava/lang/Exception;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v61

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "Cound not instantiate router - check constructor"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    :catch_6
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v62

    const-string v63, "could not instantiate router"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v61

    check-cast v61, Ljava/lang/Exception;

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v61

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "Could not instantiate router"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v61

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->addExtensionMethod(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v61, "javax.net.ssl.keyStore"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v61, "javax.net.ssl.trustStore"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    if-eqz v32, :cond_a

    if-nez v59, :cond_9

    move-object/from16 v59, v32

    :cond_9
    const-string v61, "javax.net.ssl.keyStorePassword"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    :try_start_4
    new-instance v61, Lgov/nist/core/net/SslNetworkLayer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toCharArray()[C

    move-result-object v62

    const-string v63, "javax.net.ssl.keyStoreType"

    move-object/from16 v0, p1

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    move-object/from16 v2, v32

    move-object/from16 v3, v62

    move-object/from16 v4, v63

    invoke-direct {v0, v1, v2, v3, v4}, Lgov/nist/core/net/SslNetworkLayer;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_a
    :goto_1
    const-string v61, "javax.sip.AUTOMATIC_DIALOG_SUPPORT"

    const-string v62, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "on"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    const-string v61, "gov.nist.javax.sip.AUTOMATIC_DIALOG_ERROR_HANDLING"

    const-string v62, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    sget-object v62, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    move/from16 v61, v0

    if-eqz v61, :cond_b

    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    :cond_b
    const-string v61, "gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    if-eqz v61, :cond_c

    const-string v61, "gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    move/from16 v61, v0

    if-gtz v61, :cond_d

    new-instance v61, Ljavax/sip/PeerUnavailableException;

    const-string v62, "Bad configuration parameter gov.nist.javax.sip.MAX_LISTENER_RESPONSE_TIME : should be positive"

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    :catch_7
    move-exception v21

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "could not instantiate SSL networking"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_c
    const/16 v61, -0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxListenerResponseTime:I

    :cond_d
    const-string v61, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_ACK"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverTerminatedEventForAck:Z

    const-string v61, "gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    const-string v61, "javax.sip.FORKABLE_EVENTS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_e

    new-instance v51, Ljava/util/StringTokenizer;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v61

    if-eqz v61, :cond_e

    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->forkedEvents:Ljava/util/HashSet;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    const-string v6, "gov.nist.javax.sip.NETWORK_LAYER"

    const-string v61, "gov.nist.javax.sip.NETWORK_LAYER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_f

    const-string v61, "gov.nist.javax.sip.NETWORK_LAYER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    :try_start_5
    invoke-static/range {v40 .. v40}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lgov/nist/core/net/NetworkLayer;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->networkLayer:Lgov/nist/core/net/NetworkLayer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    :cond_f
    const-string v5, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    const-string v61, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_10

    const-string v61, "gov.nist.javax.sip.ADDRESS_RESOLVER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    :try_start_6
    invoke-static/range {v40 .. v40}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lgov/nist/core/net/AddressResolver;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addressResolver:Lgov/nist/core/net/AddressResolver;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :cond_10
    const-string v61, "gov.nist.javax.sip.MAX_CONNECTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_11

    :try_start_7
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxConnections:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_11
    :goto_3
    const-string v61, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    if-eqz v57, :cond_12

    :try_start_8
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->threadPoolSize:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_b

    :cond_12
    :goto_4
    const-string v61, "gov.nist.javax.sip.MAX_SERVER_TRANSACTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    if-eqz v50, :cond_1b

    :try_start_9
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableHighwaterMark:I

    move/from16 v61, v0

    mul-int/lit8 v61, v61, 0x50

    div-int/lit8 v61, v61, 0x64

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->serverTransactionTableLowaterMark:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_c

    :cond_13
    :goto_5
    const-string v61, "gov.nist.javax.sip.MAX_CLIENT_TRANSACTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1c

    :try_start_a
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableHiwaterMark:I

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I

    move/from16 v61, v0

    mul-int/lit8 v61, v61, 0x50

    div-int/lit8 v61, v61, 0x64

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->clientTransactionTableLowaterMark:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_d

    :cond_14
    :goto_6
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    const-string v61, "gov.nist.javax.sip.CACHE_SERVER_CONNECTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_15

    const-string v61, "false"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_15

    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheServerConnections:Z

    :cond_15
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    const-string v61, "gov.nist.javax.sip.CACHE_CLIENT_CONNECTIONS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_16

    const-string v61, "false"

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_16

    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    :cond_16
    const-string v61, "gov.nist.javax.sip.READ_TIMEOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_17

    :try_start_b
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    const/16 v61, 0x64

    move/from16 v0, v47

    move/from16 v1, v61

    if-lt v0, v1, :cond_1d

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->readTimeout:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_e

    :cond_17
    :goto_7
    const-string v61, "gov.nist.javax.sip.STUN_SERVER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    if-eqz v56, :cond_18

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "Ignoring obsolete property gov.nist.javax.sip.STUN_SERVER"

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    :cond_18
    const-string v61, "gov.nist.javax.sip.MAX_MESSAGE_SIZE"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_1e

    :try_start_c
    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I

    move/from16 v61, v0

    const/16 v62, 0x1000

    move/from16 v0, v61

    move/from16 v1, v62

    if-ge v0, v1, :cond_19

    const/16 v61, 0x1000

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_f

    :cond_19
    :goto_8
    const-string v61, "gov.nist.javax.sip.REENTRANT_LISTENER"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    if-eqz v43, :cond_1f

    const-string v61, "true"

    move-object/from16 v0, v61

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1f

    const/16 v61, 0x1

    :goto_9
    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    const-string v61, "gov.nist.javax.sip.THREAD_AUDIT_INTERVAL_IN_MILLISECS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1a

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v61

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Long;->longValue()J

    move-result-wide v62

    const-wide/16 v64, 0x2

    div-long v62, v62, v64

    invoke-virtual/range {v61 .. v63}, Lgov/nist/core/ThreadAuditor;->setPingIntervalInMillisecs(J)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_10

    :cond_1a
    :goto_a
    const-string v61, "gov.nist.javax.sip.PASS_INVITE_NON_2XX_ACK_TO_LISTENER"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v61

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->setNon2XXAckPassedToListener(Z)V

    const-string v61, "gov.nist.javax.sip.AUTO_GENERATE_TIMESTAMP"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    const-string v61, "gov.nist.javax.sip.LOG_FACTORY"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_21

    :try_start_e
    invoke-static/range {v36 .. v36}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lgov/nist/javax/sip/LogRecordFactory;

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    :goto_b
    const-string v61, "gov.nist.javax.sip.COMPUTE_CONTENT_LENGTH_FROM_MESSAGE_BODY"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/parser/StringMsgParser;->setComputeContentLengthFromMessage(Z)V

    const-string v61, "gov.nist.javax.sip.TLS_CLIENT_PROTOCOLS"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    if-eqz v58, :cond_23

    new-instance v51, Ljava/util/StringTokenizer;

    const-string v61, " ,"

    move-object/from16 v0, v51

    move-object/from16 v1, v58

    move-object/from16 v2, v61

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v61

    move/from16 v0, v61

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v28, 0x0

    :goto_c
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v61

    if-eqz v61, :cond_22

    add-int/lit8 v29, v28, 0x1

    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v61

    aput-object v61, v41, v28

    move/from16 v28, v29

    goto :goto_c

    :catch_8
    move-exception v20

    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "can\'t find or instantiate NetworkLayer implementation: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    :catch_9
    move-exception v20

    new-instance v61, Ljavax/sip/PeerUnavailableException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "can\'t find or instantiate AddressResolver implementation: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljavax/sip/PeerUnavailableException;-><init>(Ljava/lang/String;)V

    throw v61

    :catch_a
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_11

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "max connections - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_b
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_12

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "thread pool size - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_c
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_13

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "transaction table size - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1b
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedServerTransactionTableSize:Z

    goto/16 :goto_5

    :catch_d
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_14

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "transaction table size - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1c
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->unlimitedClientTransactionTableSize:Z

    goto/16 :goto_6

    :cond_1d
    :try_start_f
    sget-object v61, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Value too low "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e

    goto/16 :goto_7

    :catch_e
    move-exception v39

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_17

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Bad read timeout "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    const/16 v61, 0x0

    :try_start_10
    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxMessageSize:I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_f

    goto/16 :goto_8

    :catch_f
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_19

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "maxMessageSize - bad value "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1f
    const/16 v61, 0x0

    goto/16 :goto_9

    :catch_10
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "THREAD_AUDIT_INTERVAL_IN_MILLISECS - bad value ["

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, "] "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v23 .. v23}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_11
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_20

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "Bad configuration value for LOG_FACTORY -- using default logger"

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_20
    new-instance v61, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    invoke-direct/range {v61 .. v61}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    goto/16 :goto_b

    :cond_21
    new-instance v61, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;

    invoke-direct/range {v61 .. v61}, Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;-><init>()V

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    goto/16 :goto_b

    :cond_22
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    :cond_23
    const-string v61, "gov.nist.javax.sip.RFC_2543_SUPPORT_ENABLED"

    const-string v62, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->rfc2543Supported:Z

    const-string v61, "gov.nist.javax.sip.CANCEL_CLIENT_TRANSACTION_CHECKED"

    const-string v62, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cancelClientTransactionChecked:Z

    const-string v61, "gov.nist.javax.sip.LOG_STACK_TRACE_ON_MESSAGE_SEND"

    const-string v62, "false"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v62, "true"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logStackTraceOnMessageSend:Z

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v61

    if-eqz v61, :cond_24

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "created Sip stack. Properties = "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v61

    const-string v62, "/TIMESTAMP"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v30

    if-eqz v30, :cond_26

    new-instance v55, Ljava/io/BufferedReader;

    new-instance v61, Ljava/io/InputStreamReader;

    move-object/from16 v0, v61

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v55

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_11
    invoke-virtual/range {v55 .. v55}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v30, :cond_25

    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-interface {v0, v11}, Lgov/nist/core/StackLogger;->setBuildTimeStamp(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12

    :cond_26
    :goto_d
    const-string v61, "gov.nist.javax.sip.RECEIVE_UDP_BUFFER_SIZE"

    sget-object v62, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    invoke-super {v0, v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setReceiveUdpBufferSize(I)V

    const-string v61, "gov.nist.javax.sip.SEND_UDP_BUFFER_SIZE"

    sget-object v62, Lgov/nist/javax/sip/SipStackImpl;->MAX_DATAGRAM_SIZE:Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v61, Ljava/lang/Integer;

    move-object/from16 v0, v61

    invoke-direct {v0, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    invoke-super {v0, v10}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->setSendUdpBufferSize(I)V

    const-string v61, "gov.nist.javax.sip.CONGESTION_CONTROL_ENABLED"

    sget-object v62, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackDoesCongestionControl:Z

    const-string v61, "gov.nist.javax.sip.IS_BACK_TO_BACK_USER_AGENT"

    sget-object v62, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    const-string v61, "gov.nist.javax.sip.REJECT_STRAY_RESPONSES"

    sget-object v62, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->checkBranchId:Z

    const-string v61, "gov.nist.javax.sip.DELIVER_TERMINATED_EVENT_FOR_NULL_DIALOG"

    sget-object v62, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogTerminatedEventDeliveredForNullDialog:Z

    const-string v61, "gov.nist.javax.sip.MAX_FORK_TIME_SECONDS"

    const-string v62, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    return-void

    :catch_12
    move-exception v23

    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v61

    const-string v62, "Could not open build timestamp."

    invoke-interface/range {v61 .. v62}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method private reInitialize()V
    .locals 1

    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->reInit()V

    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    return-void
.end method


# virtual methods
.method public acquireSem()Z
    .locals 5

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createListeningPoint(ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stack does not have a default IP Address!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lgov/nist/javax/sip/SipStackImpl;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransportNotSupportedException;,
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createListeningPoint : address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Address for listening point is null!"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "null transport"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    if-gtz p2, :cond_3

    new-instance v6, Ljavax/sip/InvalidArgumentException;

    const-string v7, "bad port"

    invoke-direct {v6, v7}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string v6, "UDP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "TLS"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "TCP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SCTP"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljavax/sip/TransportNotSupportedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/sip/TransportNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    iput-boolean v6, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->toExit:Z

    invoke-direct {p0}, Lgov/nist/javax/sip/SipStackImpl;->reInitialize()V

    :cond_5
    invoke-static {p1, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;->makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    move-object v4, v3

    :goto_0
    monitor-exit p0

    return-object v4

    :cond_6
    :try_start_2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lgov/nist/javax/sip/SipStackImpl;->createMessageProcessor(Ljava/net/InetAddress;ILjava/lang/String;)Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v5

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created Message Processor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_7
    new-instance v4, Lgov/nist/javax/sip/ListeningPointImpl;

    invoke-direct {v4, p0, p2, p3}, Lgov/nist/javax/sip/ListeningPointImpl;-><init>(Ljavax/sip/SipStack;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-object v5, v4, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/stack/MessageProcessor;->setListeningPoint(Lgov/nist/javax/sip/ListeningPointImpl;)V

    iget-object v6, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v6, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/MessageProcessor;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid argument address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transport = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_8
    new-instance v6, Ljavax/sip/InvalidArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_1
.end method

.method public createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null listeningPoint"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSipProvider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    iget-object v2, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eqz v2, :cond_2

    new-instance v2, Ljavax/sip/ObjectInUseException;

    const-string v3, "Provider already attached!"

    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-direct {v1, p0}, Lgov/nist/javax/sip/SipProviderImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/SipProviderImpl;->setListeningPoint(Ljavax/sip/ListeningPoint;)V

    iput-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public deleteListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null listeningPoint arg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-super {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->removeMessageProcessor(Lgov/nist/javax/sip/stack/MessageProcessor;)V

    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteSipProvider(Ljavax/sip/SipProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null provider arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljavax/sip/ObjectInUseException;

    const-string v2, "SipProvider still has an associated SipListener!"

    invoke-direct {v1, v2}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->removeListeningPoints()V

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipProviderImpl;->stop()V

    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    return-void
.end method

.method public getAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/AccountManager;Ljavax/sip/header/HeaderFactory;)V

    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getEventScanner()Lgov/nist/javax/sip/EventScanner;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListeningPoints()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLogRecordFactory()Lgov/nist/javax/sip/LogRecordFactory;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->logRecordFactory:Lgov/nist/javax/sip/LogRecordFactory;

    return-object v0
.end method

.method public getSecureAuthenticationHelper(Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)Lgov/nist/javax/sip/clientauthutils/AuthenticationHelper;
    .locals 1

    new-instance v0, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;

    invoke-direct {v0, p0, p1, p2}, Lgov/nist/javax/sip/clientauthutils/AuthenticationHelperImpl;-><init>(Lgov/nist/javax/sip/SipStackImpl;Lgov/nist/javax/sip/clientauthutils/SecureAccountManager;Ljavax/sip/header/HeaderFactory;)V

    return-object v0
.end method

.method public getSipListener()Ljavax/sip/SipListener;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    return-object v0
.end method

.method public getSipProviders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/SipProviderImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getStackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->stackName:Ljava/lang/String;

    return-object v0
.end method

.method public isAutomaticDialogErrorHandlingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogErrorHandlingEnabled:Z

    return v0
.end method

.method isAutomaticDialogSupportEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    return v0
.end method

.method public isBackToBackUserAgent()Z
    .locals 1

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    return v0
.end method

.method public isRetransmissionFilterActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public releaseSem()V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->stackSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->cipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/SipStackImpl;->enabledProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setIsBackToBackUserAgent(Z)V
    .locals 0

    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isBackToBackUserAgent:Z

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ProviderDoesNotExistException;,
            Ljavax/sip/SipException;
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/EventScanner;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/EventScanner;-><init>(Lgov/nist/javax/sip/SipStackImpl;)V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "stopStack -- stoppping the stack"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipStackImpl;->stopStack()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->sipProviders:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->listeningPoints:Ljava/util/Hashtable;

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->forceStop()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/SipStackImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    return-void
.end method
