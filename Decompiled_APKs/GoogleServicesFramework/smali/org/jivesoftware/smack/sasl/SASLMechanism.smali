.class public abstract Lorg/jivesoftware/smack/sasl/SASLMechanism;
.super Ljava/lang/Object;
.source "SASLMechanism.java"


# instance fields
.field private saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "username"
    .parameter "host"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v1, stanza:Ljava/lang/StringBuffer;
    const-string v2, "<auth mechanism=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v2, "\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getAuthenticationText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, authenticationText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :cond_0
    const-string v2, "</auth>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public challengeReceived(Ljava/lang/String;)V
    .locals 4
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v1, stanza:Ljava/lang/StringBuffer;
    const-string v2, "<response xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getChallengeResponse([B)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, authenticationText:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_0
    const-string v2, "</response>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected abstract getAuthenticationText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getChallengeResponse([B)Ljava/lang/String;
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
.end method
