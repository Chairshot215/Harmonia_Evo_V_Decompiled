.class public Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OtrQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;,
        Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;
    }
.end annotation


# static fields
.field public static final USE_XML_EXTENSION:Z


# instance fields
.field private mDefaultValue:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

.field private mEtag:Ljava/lang/String;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mNotModified:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->USE_XML_EXTENSION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mItems:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mNotModified:Ljava/lang/Boolean;

    .line 44
    sget-object v0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->NONE:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mDefaultValue:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    .line 47
    return-void
.end method


# virtual methods
.method public addItem(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x3c

    const/16 v6, 0x22

    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " xmlns=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "google:nosave"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mDefaultValue:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->NONE:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    if-eq v3, v4, :cond_0

    .line 95
    const-string v3, " defaultValue=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mDefaultValue:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;->ENABLED:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    if-ne v3, v5, :cond_4

    const-string v3, "true"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    const-string v3, " etag=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mNotModified:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 104
    const-string v3, " not_modified=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mNotModified:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    :cond_2
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    .line 110
    .local v2, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " xmlns=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "google:nosave"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    const-string v3, " jid=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mJid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    const-string v3, " value=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-boolean v3, v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mEnabled:Z

    if-eqz v3, :cond_5

    const-string v3, "enabled"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    iget-boolean v3, v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->mChangedByBuddy:Z

    if-eqz v3, :cond_3

    .line 114
    const-string v3, " changedByBuddy="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_3
    const-string v3, " />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 95
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    :cond_4
    const-string v3, "false"

    goto/16 :goto_0

    .line 112
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    :cond_5
    const-string v3, "disabled"

    goto :goto_2

    .line 119
    .end local v2           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    :cond_6
    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDefaultValue()Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mDefaultValue:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 124
    sget-boolean v5, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->USE_XML_EXTENSION:Z

    if-eqz v5, :cond_0

    .line 125
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 128
    :cond_0
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 129
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x1

    const/16 v6, 0x9

    invoke-virtual {v0, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 132
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->OTR_QUERY:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 134
    .local v3, otrQuery:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 135
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 138
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    .line 139
    .local v2, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 140
    .local v4, protoItem:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v3, v7, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_1

    .line 143
    .end local v2           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    .end local v4           #protoItem:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    invoke-virtual {v0, v7, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNotModified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mNotModified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDefaultValue(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;)V
    .locals 0
    .parameter "defaultValue"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mDefaultValue:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$DefaultValue;

    .line 80
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2
    .parameter "etag"

    .prologue
    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mNotModified:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not-modified is set!  can only have one of etag or not-modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setNotModified(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "notModified"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mEtag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "etag is set!  can only have one of etag or not-modified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->mNotModified:Ljava/lang/Boolean;

    .line 72
    return-void
.end method
