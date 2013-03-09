.class public Lorg/jivesoftware/smack/packet/Authentication;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Authentication.java"


# instance fields
.field private digest:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private resource:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 31
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    .line 45
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Authentication;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v1, "<query xmlns=\"jabber:iq:auth\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    const-string v1, "<username/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    const-string v1, "<digest/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    const-string v1, "<password/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 177
    const-string v1, "<resource/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_3
    :goto_3
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 156
    :cond_4
    const-string v1, "<username>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</username>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 164
    :cond_5
    const-string v1, "<digest>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</digest>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 172
    :cond_6
    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</password>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 180
    :cond_7
    const-string v1, "<resource>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</resource>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setDigest(Ljava/lang/String;)V
    .locals 0
    .parameter "digest"

    .prologue
    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setDigest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "connectionID"
    .parameter "password"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 145
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    .line 64
    return-void
.end method
