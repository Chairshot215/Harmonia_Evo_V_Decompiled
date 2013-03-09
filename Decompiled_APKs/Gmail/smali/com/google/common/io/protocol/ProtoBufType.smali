.class public Lcom/google/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# instance fields
.field private final data:Ljava/util/Vector;

.field private final typeName:Ljava/lang/String;

.field private final types:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "typeName"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    .line 61
    iput-object p1, p0, Lcom/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static stringEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 158
    :cond_1
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 159
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_2

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 163
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    .line 162
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_4
    move v2, v3

    .line 168
    goto :goto_0
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;
    .locals 2
    .parameter "optionsAndType"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 77
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, p2, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 82
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 84
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    if-ne p0, p1, :cond_2

    .line 134
    const/4 v1, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 139
    check-cast v0, Lcom/google/common/io/protocol/ProtoBufType;

    .line 141
    .local v0, other:Lcom/google/common/io/protocol/ProtoBufType;
    iget-object v1, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-static {v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->stringEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 1
    .parameter "tag"

    .prologue
    .line 114
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->data:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 92
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->types:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    return-object v0
.end method
