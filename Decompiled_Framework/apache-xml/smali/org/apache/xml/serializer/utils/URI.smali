.class final Lorg/apache/xml/serializer/utils/URI;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MARK_CHARACTERS:Ljava/lang/String; = "-_.!~*\'() "

.field private static final RESERVED_CHARACTERS:Ljava/lang/String; = ";/?:@&=+$,"

.field private static final SCHEME_CHARACTERS:Ljava/lang/String; = "+-."

.field private static final USERINFO_CHARACTERS:Ljava/lang/String; = ";:&=+$,"


# instance fields
.field private m_fragment:Ljava/lang/String;

.field private m_host:Ljava/lang/String;

.field private m_path:Ljava/lang/String;

.field private m_port:I

.field private m_queryString:Ljava/lang/String;

.field private m_scheme:Ljava/lang/String;

.field private m_userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xml/serializer/utils/URI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/xml/serializer/utils/URI;

    invoke-direct {p0, v0, p1}, Lorg/apache/xml/serializer/utils/URI;-><init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Cannot construct URI with null/empty scheme-specific part!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    iput v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_SCHEME_REQUIRED"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_USERINFO_IF_NO_HOST"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eq p4, v1, :cond_3

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_PORT_IF_NO_HOST"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p5, :cond_5

    const/16 v0, 0x3f

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eqz p6, :cond_4

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_QUERY_STRING_IN_PATH"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v0, 0x23

    invoke-virtual {p5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    if-eqz p7, :cond_5

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NO_FRAGMENT_STRING_IN_PATH"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lorg/apache/xml/serializer/utils/URI;->setPath(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lorg/apache/xml/serializer/utils/URI;->setQueryString(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Lorg/apache/xml/serializer/utils/URI;->setFragment(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/xml/serializer/utils/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/utils/URI;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Lorg/apache/xml/serializer/utils/URI;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/xml/serializer/utils/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-void
.end method

.method private initialize(Lorg/apache/xml/serializer/utils/URI;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    new-instance v13, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v14, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v15, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    :cond_2
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/serializer/utils/URI;->initialize(Lorg/apache/xml/serializer/utils/URI;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v3, 0x0

    const/16 v13, 0x3a

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_5

    if-nez p1, :cond_6

    new-instance v13, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v14, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v15, "ER_NO_SCHEME_IN_URI"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/xml/serializer/utils/URI;->initializeScheme(Ljava/lang/String;)V

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    :cond_6
    const-string v13, "//"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    add-int/lit8 v3, v3, 0x2

    move v8, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v3, v12, :cond_7

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v13, 0x2f

    if-eq v10, v13, :cond_7

    const/16 v13, 0x3f

    if-eq v10, v13, :cond_7

    const/16 v13, 0x23

    if-ne v10, v13, :cond_9

    :cond_7
    if-le v3, v8, :cond_a

    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/xml/serializer/utils/URI;->initializeAuthority(Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getQueryString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v13, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getScheme()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getUserinfo()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getHost()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPort()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_d
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const/16 v13, 0x2f

    invoke-virtual {v1, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v13, -0x1

    if-eq v4, v13, :cond_e

    const/4 v13, 0x0

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    :goto_3
    const-string v13, "/./"

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v13, -0x1

    if-eq v3, v13, :cond_f

    const/4 v13, 0x0

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v3, 0x3

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_f
    const-string v13, "/."

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_10
    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    :cond_11
    :goto_4
    const-string v13, "/../"

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_12

    const/4 v13, 0x0

    const-string v14, "/../"

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x2f

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_11

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v3, 0x4

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v6, v7

    goto :goto_4

    :cond_12
    const-string v13, "/.."

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x2f

    invoke-virtual {v9, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v13, -0x1

    if-eq v6, v13, :cond_13

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_13
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    move v6, v7

    goto :goto_4
.end method

.method private initializeAuthority(Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/16 v12, 0x40

    const/16 v11, 0x3a

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_3

    :cond_0
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    :cond_1
    const/4 v1, 0x0

    move v6, v3

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_4

    :cond_2
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    if-ne v7, v11, :cond_8

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    :goto_2
    if-ge v3, v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_7

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is invalid. Port should only contain digits!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/utils/URI;->setHost(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/apache/xml/serializer/utils/URI;->setPort(I)V

    invoke-virtual {p0, v8}, Lorg/apache/xml/serializer/utils/URI;->setUserinfo(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v9

    goto :goto_4
.end method

.method private initializePath(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/16 v7, 0x3f

    const/16 v6, 0x25

    const/16 v5, 0x23

    if-nez p1, :cond_0

    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v5, "Cannot initialize path from null string!"

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_1

    if-ne v3, v5, :cond_5

    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-ne v3, v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_9

    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    :cond_3
    if-ne v3, v5, :cond_10

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_d

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_4
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v5, "Fragment contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    if-ne v3, v6, :cond_7

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_6
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x5c

    if-eq v4, v3, :cond_8

    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_PATH_INVALID_CHAR"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    if-ne v3, v6, :cond_b

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_a

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_a
    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v5, "Query string contains invalid escape sequence!"

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query string contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_d
    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment contains invalid character:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    :cond_10
    return-void
.end method

.method private initializeScheme(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_0

    const/16 v4, 0x3f

    if-eq v2, v4, :cond_0

    const/16 v4, 0x23

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_NO_SCHEME_INURI"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/utils/URI;->setScheme(Ljava/lang/String;)V

    return-void
.end method

.method private static isAlpha(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlphanum(C)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConformantSchemeName(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "+-."

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHex(C)Z
    .locals 1

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x66

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isReservedCharacter(C)Z
    .locals 2

    const-string v0, ";/?:@&=+$,"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isURIString(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    if-ne v2, v4, :cond_3

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isReservedCharacter(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isUnreservedCharacter(C)Z
    .locals 2

    invoke-static {p0}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-_.!~*\'() "

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWellFormedAddress(Ljava/lang/String;)Z
    .locals 9

    const/16 v8, 0x2e

    const/4 v6, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v7, 0xff

    if-gt v0, v7, :cond_0

    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    :cond_2
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v0, :cond_8

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_5

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_3

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_6
    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    :cond_7
    const/4 v6, 0x1

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_a

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v0, :cond_9

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v5}, Lorg/apache/xml/serializer/utils/URI;->isAlphanum(C)Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_9

    goto/16 :goto_0
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_PATH_INVALID_CHAR"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v1, p1, Lorg/apache/xml/serializer/utils/URI;

    if-eqz v1, :cond_c

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/serializer/utils/URI;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_3
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_5
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    iget v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_7
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(ZZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    if-eq v1, v2, :cond_4

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserinfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    return-object v0
.end method

.method public isGenericURI()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_FRAG_FOR_GENERIC_URI"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_FRAG_WHEN_PATH_NULL"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_FRAG_INVALID_CHAR"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    :cond_1
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    return-void

    :cond_2
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isWellFormedAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_path:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_fragment:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/utils/URI;->initializePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPort(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_PORT_WHEN_HOST_NULL"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_INVALID_PORT"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_port:I

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->isGenericURI()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Query string can only be set for a generic URI!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Query string cannot be set when path is null!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isURIString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v1, "Query string contains invalid character!"

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_SCHEME_FROM_NULL_STRING"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/URI;->isConformantSchemeName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_SCHEME_NOT_CONFORMANT"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    return-void
.end method

.method public setUserinfo(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xml/serializer/utils/URI$MalformedURIException;
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/URI;->m_userinfo:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/serializer/utils/URI;->m_host:Ljava/lang/String;

    if-nez v3, :cond_2

    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v4, "Userinfo cannot be set when host is null!"

    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_4

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xml/serializer/utils/URI;->isHex(C)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    const-string v4, "Userinfo contains invalid escape sequence!"

    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v2}, Lorg/apache/xml/serializer/utils/URI;->isUnreservedCharacter(C)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ";:&=+$,"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    new-instance v3, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Userinfo contains invalid character:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xml/serializer/utils/URI$MalformedURIException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/URI;->m_scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/serializer/utils/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
