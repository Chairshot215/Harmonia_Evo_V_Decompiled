.class public Lcom/google/android/gsf/gtalkservice/extensions/OtrQueryProvider;
.super Ljava/lang/Object;
.source "OtrQueryProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2

    .prologue
    .line 128
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->USE_XML_EXTENSION:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->USE_XML_EXTENSION:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public parseIQ(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 13
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 71
    sget-boolean v8, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->USE_XML_EXTENSION:Z

    if-eqz v8, :cond_0

    .line 72
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "should not get called."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 75
    :cond_0
    new-instance v6, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;

    invoke-direct {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;-><init>()V

    .line 77
    .local v6, otrQuery:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
    invoke-virtual {p1, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 78
    invoke-virtual {p1, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setEtag(Ljava/lang/String;)V

    .line 89
    :cond_1
    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 90
    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->ENABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    :goto_0
    invoke-virtual {v6, v8}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setDefaultValue(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;)V

    .line 97
    :goto_1
    invoke-virtual {p1, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 99
    .local v5, numItems:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 100
    invoke-virtual {p1, v11, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 102
    .local v3, itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, jid:Ljava/lang/String;
    invoke-virtual {v3, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v7

    .line 104
    .local v7, value:Z
    const/4 v0, 0x0

    .line 106
    .local v0, changedByBuddy:Z
    invoke-virtual {v3, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 107
    invoke-virtual {v3, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    .line 111
    :cond_2
    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    invoke-direct {v2, v4, v7, v0}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;-><init>(Ljava/lang/String;ZZ)V

    .line 112
    .local v2, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v6, v2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->addItem(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    .end local v0           #changedByBuddy:Z
    .end local v1           #i:I
    .end local v2           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    .end local v3           #itemPB:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v4           #jid:Ljava/lang/String;
    .end local v5           #numItems:I
    .end local v7           #value:Z
    :cond_3
    invoke-virtual {p1, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    invoke-virtual {p1, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 83
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setNotModified(Ljava/lang/Boolean;)V

    .line 115
    :cond_4
    return-object v6

    .line 90
    :cond_5
    sget-object v8, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->DISABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    goto :goto_0

    .line 94
    :cond_6
    sget-object v8, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->NONE:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    invoke-virtual {v6, v8}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setDefaultValue(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;)V

    goto :goto_1
.end method

.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v6, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;

    invoke-direct {v6}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;-><init>()V

    .line 33
    .local v6, otrQuery:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
    const/4 v4, 0x0

    .line 34
    .local v4, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    const/4 v1, 0x0

    .line 36
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 38
    .local v3, eventType:I
    const/4 v9, 0x2

    if-ne v3, v9, :cond_3

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 40
    const-string v9, ""

    const-string v10, "jid"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, jid:Ljava/lang/String;
    const-string v9, ""

    const-string v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, value:Ljava/lang/String;
    const-string v9, ""

    const-string v10, "source"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, source:Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, enabled:Z
    const/4 v0, 0x0

    .line 47
    .local v0, changedByBuddy:Z
    const-string v9, "enabled"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 48
    const/4 v2, 0x1

    .line 51
    :cond_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 52
    const/4 v0, 0x1

    .line 55
    :cond_2
    new-instance v4, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    .end local v4           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-direct {v4, v5, v2, v0}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;-><init>(Ljava/lang/String;ZZ)V

    .line 56
    .restart local v4       #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    goto :goto_0

    .line 57
    .end local v0           #changedByBuddy:Z
    .end local v2           #enabled:Z
    .end local v5           #jid:Ljava/lang/String;
    .end local v7           #source:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x3

    if-ne v3, v9, :cond_0

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 59
    invoke-virtual {v6, v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->addItem(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;)V

    .line 61
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "query"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    .end local v3           #eventType:I
    :cond_5
    return-object v6
.end method
