.class public Lgov/nist/javax/sip/address/SipUri;
.super Lgov/nist/javax/sip/address/GenericURI;
.source "SipUri.java"

# interfaces
.implements Ljavax/sip/address/SipURI;
.implements Lgov/nist/javax/sip/address/SipURIExt;


# static fields
.field private static final serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected authority:Lgov/nist/javax/sip/address/Authority;

.field protected qheaders:Lgov/nist/core/NameValueList;

.field protected telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

.field protected uriParms:Lgov/nist/core/NameValueList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lgov/nist/javax/sip/address/GenericURI;-><init>()V

    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearPassword()V
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/UserInfo;->clearPassword()V

    :cond_0
    return-void
.end method

.method public clearQheaders()V
    .locals 1

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public clearUriParms()V
    .locals 1

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lgov/nist/javax/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/address/SipUri;

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/Authority;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/core/NameValueList;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    :cond_2
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/address/TelephoneNumber;

    iput-object v1, v0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    :cond_3
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    const/4 v15, 0x1

    :goto_0
    return v15

    :cond_0
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/sip/address/SipURI;

    if-eqz v15, :cond_27

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    check-cast v3, Ljavax/sip/address/SipURI;

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->isSecure()Z

    move-result v16

    xor-int v15, v15, v16

    if-eqz v15, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    :goto_1
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_3

    const/16 v16, 0x1

    :goto_2
    xor-int v15, v15, v16

    if-eqz v15, :cond_4

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_5

    const/4 v15, 0x1

    :goto_3
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_6

    const/16 v16, 0x1

    :goto_4
    xor-int v15, v15, v16

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x0

    goto :goto_0

    :cond_8
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    const/4 v15, 0x1

    :goto_5
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_b

    const/16 v16, 0x1

    :goto_6
    xor-int v15, v15, v16

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    goto :goto_6

    :cond_c
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v15

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_e

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_e
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getParameterNames()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v2, v14}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v14}, Ljavax/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v12, :cond_f

    if-eqz v13, :cond_f

    invoke-static {v12}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_11

    const/4 v15, 0x1

    :goto_7
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_12

    const/16 v16, 0x1

    :goto_8
    xor-int v15, v15, v16

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v15, 0x0

    goto :goto_7

    :cond_12
    const/16 v16, 0x0

    goto :goto_8

    :cond_13
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_14

    const/4 v15, 0x1

    :goto_9
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_15

    const/16 v16, 0x1

    :goto_a
    xor-int v15, v15, v16

    if-eqz v15, :cond_16

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_14
    const/4 v15, 0x0

    goto :goto_9

    :cond_15
    const/16 v16, 0x0

    goto :goto_a

    :cond_16
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    const/4 v15, 0x1

    :goto_b
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getTTLParam()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    const/16 v16, 0x1

    :goto_c
    xor-int v15, v15, v16

    if-eqz v15, :cond_19

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v15, 0x0

    goto :goto_b

    :cond_18
    const/16 v16, 0x0

    goto :goto_c

    :cond_19
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1a

    const/4 v15, 0x1

    :goto_d
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1b

    const/16 v16, 0x1

    :goto_e
    xor-int v15, v15, v16

    if-eqz v15, :cond_1c

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_1a
    const/4 v15, 0x0

    goto :goto_d

    :cond_1b
    const/16 v16, 0x0

    goto :goto_e

    :cond_1c
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1d

    const/4 v15, 0x1

    :goto_f
    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1e

    const/16 v16, 0x1

    :goto_10
    xor-int v15, v15, v16

    if-eqz v15, :cond_1f

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_1d
    const/4 v15, 0x0

    goto :goto_f

    :cond_1e
    const/16 v16, 0x0

    goto :goto_10

    :cond_1f
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_20

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_20
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_21

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_21

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_21
    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-interface {v3}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/sip/SipFactory;->createHeaderFactory()Ljavax/sip/header/HeaderFactory;
    :try_end_0
    .catch Ljavax/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-interface {v2}, Ljavax/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v11

    :cond_22
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v10}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v10}, Ljavax/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_23

    if-eqz v6, :cond_23

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v15, "Cannot get the header factory to parse the header of the sip uris to compare"

    invoke-static {v15, v4}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_23
    if-nez v6, :cond_24

    if-eqz v5, :cond_24

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_24
    if-nez v5, :cond_25

    if-eqz v6, :cond_22

    :cond_25
    :try_start_1
    invoke-static {v5}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v10, v15}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v7

    invoke-static {v6}, Lgov/nist/javax/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v10, v15}, Ljavax/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    if-nez v15, :cond_22

    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot parse one of the header of the sip uris to compare "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v4}, Lgov/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_26
    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_27
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public getAuthority()Lgov/nist/javax/sip/address/Authority;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    return-object v0
.end method

.method public getGrParam()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostPort()Lgov/nist/core/HostPort;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    goto :goto_0
.end method

.method public getLrParam()Ljava/lang/String;
    .locals 2

    const-string v1, "lr"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMAddrParam()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v3, "maddr"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMethodParam()Ljava/lang/String;
    .locals 1

    const-string v0, "method"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_1

    check-cast v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lgov/nist/core/NameValueList;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public getParm(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHostPort()Lgov/nist/core/HostPort;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lgov/nist/core/HostPort;->getPort()I

    move-result v1

    goto :goto_0
.end method

.method public getQheaders()Lgov/nist/core/NameValueList;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTTLParam()I
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v2, "ttl"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTelephoneSubscriber()Lgov/nist/javax/sip/address/TelephoneNumber;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    return-object v0
.end method

.method public getTransportParam()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAtHost()Ljava/lang/String;
    .locals 5

    const-string v2, ""

    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v3}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserAtHostPort()Ljava/lang/String;
    .locals 6

    const-string v3, ""

    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getUserInfo()Lgov/nist/javax/sip/address/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/UserInfo;->getUser()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getHost()Lgov/nist/core/Host;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v4}, Lgov/nist/javax/sip/address/Authority;->getPort()I

    move-result v1

    const/4 v2, 0x0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public getUserParam()Ljava/lang/String;
    .locals 1

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->getPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasGrParam()Z
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLrParam()Z
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTransport()Z
    .locals 1

    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 2

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSipURI()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUserTelephoneSubscriber()Z
    .locals 3

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public removeHeaders()V
    .locals 1

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public removeMAddr()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "maddr"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public removeMethod()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method public removeParameters()V
    .locals 1

    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public removePort()V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removePort()V

    return-void
.end method

.method public removeTTL()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public removeTransport()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "transport"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public removeUser()V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/Authority;->removeUserInfo()V

    return-void
.end method

.method public removeUserType()V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setAuthority(Lgov/nist/javax/sip/address/Authority;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    return-void
.end method

.method public setDefaultParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    :cond_0
    return-void
.end method

.method public setGrParam(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "gr"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setHost(Lgov/nist/core/Host;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHost(Lgov/nist/core/Host;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0, p1}, Lgov/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->setHost(Lgov/nist/core/Host;)V

    return-void
.end method

.method public setHostPort(Lgov/nist/core/HostPort;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setHostPort(Lgov/nist/core/HostPort;)V

    return-void
.end method

.method public setIsdnSubAddress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/TelephoneNumber;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/TelephoneNumber;->setIsdnSubaddress(Ljava/lang/String;)V

    return-void
.end method

.method public setLrParam()V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "lr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMAddr(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v3, "maddr"

    invoke-virtual {v2, v3}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v1

    new-instance v0, Lgov/nist/core/Host;

    invoke-direct {v0}, Lgov/nist/core/Host;-><init>()V

    invoke-virtual {v0, p1}, Lgov/nist/core/Host;->setAddress(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lgov/nist/core/NameValue;

    const-string v2, "maddr"

    invoke-direct {v1, v2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v2, v1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_0
.end method

.method public setMAddrParam(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad maddr"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "maddr"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMethodParam(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "method"

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v1, "ttl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, p1, p2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setPort(I)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPort(I)V

    return-void
.end method

.method public setQHeader(Lgov/nist/core/NameValue;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setQheaders(Lgov/nist/core/NameValueList;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->qheaders:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sips"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setSecure(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "sips"

    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "sip"

    iput-object v0, p0, Lgov/nist/javax/sip/address/GenericURI;->scheme:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTTLParam(I)V
    .locals 3

    if-gtz p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad ttl value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_1

    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "ttl"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    :cond_1
    return-void
.end method

.method public setTelephoneSubscriber(Lgov/nist/javax/sip/address/TelephoneNumber;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->telephoneSubscriber:Lgov/nist/javax/sip/address/TelephoneNumber;

    return-void
.end method

.method public setTransportParam(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "UDP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TLS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TCP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SCTP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Lgov/nist/core/NameValue;

    const-string v1, "transport"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void

    :cond_2
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setUriParameter(Lgov/nist/core/NameValue;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setUriParm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    return-void
.end method

.method public setUriParms(Lgov/nist/core/NameValueList;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setUser(Ljava/lang/String;)V

    return-void
.end method

.method public setUserParam(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->uriParms:Lgov/nist/core/NameValueList;

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    if-nez v0, :cond_0

    new-instance v0, Lgov/nist/javax/sip/address/Authority;

    invoke-direct {v0}, Lgov/nist/javax/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/address/SipUri;->authority:Lgov/nist/javax/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov/nist/javax/sip/address/Authority;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
