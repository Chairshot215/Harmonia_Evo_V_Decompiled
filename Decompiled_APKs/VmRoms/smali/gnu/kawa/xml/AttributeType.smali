.class public Lgnu/kawa/xml/AttributeType;
.super Lgnu/kawa/xml/NodeType;
.source "AttributeType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/AttributePredicate;


# static fields
.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final typeAttributeType:Lgnu/bytecode/ClassType;


# instance fields
.field qname:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 174
    const-string v0, "gnu.kawa.xml.AttributeType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    .line 176
    sget-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    const-string v1, "coerce"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    .line 178
    sget-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceOrNull"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 1
    .parameter "qname"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lgnu/kawa/xml/AttributeType;-><init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .locals 2
    .parameter "name"
    .parameter "qname"

    .prologue
    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    .line 48
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTRIBUTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;
    .locals 2
    .parameter "obj"
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 158
    invoke-static {p0, p1, p2}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v0

    .line 159
    .local v0, pos:Lgnu/lists/SeqPosition;
    if-nez v0, :cond_0

    .line 160
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 161
    :cond_0
    return-object v0
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 9
    .parameter "obj"
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    const/4 v8, 0x0

    .line 121
    const/4 v7, 0x4

    invoke-static {p0, v7}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v4

    .line 122
    .local v4, pos:Lgnu/kawa/xml/KNode;
    if-nez v4, :cond_0

    move-object v7, v8

    .line 152
    .end local v4           #pos:Lgnu/kawa/xml/KNode;
    :goto_0
    return-object v7

    .line 124
    .restart local v4       #pos:Lgnu/kawa/xml/KNode;
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 125
    const/4 p2, 0x0

    .line 126
    :cond_1
    invoke-virtual {v4}, Lgnu/kawa/xml/KNode;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, curName:Ljava/lang/Object;
    instance-of v7, v2, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_4

    .line 131
    move-object v0, v2

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v5, v0

    .line 132
    .local v5, qname:Lgnu/mapping/Symbol;
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, curNamespaceURI:Ljava/lang/String;
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 149
    .end local v5           #qname:Lgnu/mapping/Symbol;
    .local v1, curLocalName:Ljava/lang/String;
    :goto_1
    if-eq p2, v1, :cond_2

    if-nez p2, :cond_6

    :cond_2
    if-eq p1, v3, :cond_3

    if-nez p1, :cond_6

    .line 151
    :cond_3
    check-cast v4, Lgnu/kawa/xml/KAttr;

    .end local v4           #pos:Lgnu/kawa/xml/KNode;
    move-object v7, v4

    goto :goto_0

    .line 136
    .end local v1           #curLocalName:Ljava/lang/String;
    .end local v3           #curNamespaceURI:Ljava/lang/String;
    .restart local v4       #pos:Lgnu/kawa/xml/KNode;
    :cond_4
    instance-of v7, v2, Ljavax/xml/namespace/QName;

    if-eqz v7, :cond_5

    .line 138
    move-object v0, v2

    check-cast v0, Ljavax/xml/namespace/QName;

    move-object v6, v0

    .line 140
    .local v6, qtype:Ljavax/xml/namespace/QName;
    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3       #curNamespaceURI:Ljava/lang/String;
    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 142
    .restart local v1       #curLocalName:Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v1           #curLocalName:Ljava/lang/String;
    .end local v3           #curNamespaceURI:Ljava/lang/String;
    .end local v6           #qtype:Ljavax/xml/namespace/QName;
    :cond_5
    const-string v3, ""

    .line 147
    .restart local v3       #curNamespaceURI:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #curLocalName:Ljava/lang/String;
    goto :goto_1

    :cond_6
    move-object v7, v8

    .line 152
    goto :goto_0
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/AttributeType;
    .locals 1
    .parameter "qname"

    .prologue
    .line 35
    new-instance v0, Lgnu/kawa/xml/AttributeType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/AttributeType;
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 30
    .local v0, qname:Lgnu/mapping/Symbol;
    :goto_0
    new-instance v1, Lgnu/kawa/xml/AttributeType;

    invoke-direct {v1, v0}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    return-object v1

    .line 26
    .end local v0           #qname:Lgnu/mapping/Symbol;
    :cond_0
    const-string v1, ""

    if-ne p1, v1, :cond_1

    .line 27
    sget-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    .restart local v0       #qname:Lgnu/mapping/Symbol;
    goto :goto_0

    .line 29
    .end local v0           #qname:Lgnu/mapping/Symbol;
    :cond_1
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .restart local v0       #qname:Lgnu/mapping/Symbol;
    goto :goto_0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"

    .prologue
    .line 67
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/AttributeType;->coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 60
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 63
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "incoming"
    .parameter "comp"

    .prologue
    .line 166
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 167
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 169
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 171
    sget-object v1, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 172
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 52
    const-string v0, "gnu.kawa.xml.KAttr"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z
    .locals 8
    .parameter "seq"
    .parameter "ipos"
    .parameter "attrType"

    .prologue
    .line 82
    iget-object v7, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, namespaceURI:Ljava/lang/String;
    iget-object v7, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, localName:Ljava/lang/String;
    instance-of v7, p3, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_3

    .line 88
    move-object v0, p3

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v5, v0

    .line 89
    .local v5, qname:Lgnu/mapping/Symbol;
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, curNamespaceURI:Ljava/lang/String;
    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .end local v5           #qname:Lgnu/mapping/Symbol;
    .local v1, curLocalName:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 107
    const/4 v3, 0x0

    .line 108
    :cond_0
    if-eq v3, v1, :cond_1

    if-nez v3, :cond_5

    :cond_1
    if-eq v4, v2, :cond_2

    if-nez v4, :cond_5

    :cond_2
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 93
    .end local v1           #curLocalName:Ljava/lang/String;
    .end local v2           #curNamespaceURI:Ljava/lang/String;
    :cond_3
    instance-of v7, p3, Ljavax/xml/namespace/QName;

    if-eqz v7, :cond_4

    .line 95
    move-object v0, p3

    check-cast v0, Ljavax/xml/namespace/QName;

    move-object v6, v0

    .line 97
    .local v6, qtype:Ljavax/xml/namespace/QName;
    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2       #curNamespaceURI:Ljava/lang/String;
    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1       #curLocalName:Ljava/lang/String;
    goto :goto_0

    .line 103
    .end local v1           #curLocalName:Ljava/lang/String;
    .end local v2           #curNamespaceURI:Ljava/lang/String;
    .end local v6           #qtype:Ljavax/xml/namespace/QName;
    :cond_4
    const-string v2, ""

    .line 104
    .restart local v2       #curNamespaceURI:Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #curLocalName:Ljava/lang/String;
    goto :goto_0

    .line 108
    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 114
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 2
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 72
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    .line 73
    .local v0, kind:I
    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lgnu/kawa/xml/AttributeType;->isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z

    move-result v1

    .line 77
    :goto_0
    return v1

    .line 75
    :cond_0
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 76
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/AttributeType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, name:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/AttributeType;->setName(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Symbol;

    iput-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lgnu/kawa/xml/AttributeType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 186
    return-void

    :cond_0
    move-object v1, v0

    .line 184
    goto :goto_0
.end method
