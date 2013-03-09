.class public Lorg/jivesoftware/smack/packet/Registration;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Registration.java"


# instance fields
.field private attributes:Ljava/util/Map;

.field private instructions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v4, "<query xmlns=\"jabber:iq:register\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 96
    const-string v4, "<instructions>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</instructions>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_0
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 99
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, fieldNames:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    .local v3, value:Ljava/lang/String;
    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v4, "</"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 109
    .end local v1           #fieldNames:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Registration;->getExtensionsXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v4, "</query>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .parameter "attributes"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Registration;->attributes:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0
    .parameter "instructions"

    .prologue
    .line 71
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Registration;->instructions:Ljava/lang/String;

    .line 72
    return-void
.end method
