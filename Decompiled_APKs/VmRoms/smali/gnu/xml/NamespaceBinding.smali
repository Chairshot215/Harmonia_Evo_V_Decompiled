.class public final Lgnu/xml/NamespaceBinding;
.super Ljava/lang/Object;
.source "NamespaceBinding.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field public static final predefinedXML:Lgnu/xml/NamespaceBinding;


# instance fields
.field depth:I

.field next:Lgnu/xml/NamespaceBinding;

.field prefix:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    sput-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"
    .parameter "next"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p3}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    .line 61
    return-void
.end method

.method public static commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 3
    .parameter "ns1"
    .parameter "ns2"

    .prologue
    .line 101
    iget v1, p0, Lgnu/xml/NamespaceBinding;->depth:I

    iget v2, p1, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v1, v2, :cond_0

    .line 103
    move-object v0, p0

    .line 104
    .local v0, tmp:Lgnu/xml/NamespaceBinding;
    move-object p0, p1

    .line 105
    move-object p1, v0

    .line 107
    .end local v0           #tmp:Lgnu/xml/NamespaceBinding;
    :cond_0
    :goto_0
    iget v1, p1, Lgnu/xml/NamespaceBinding;->depth:I

    iget v2, p0, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v1, v2, :cond_1

    .line 108
    iget-object p1, p1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    if-eq p0, p1, :cond_2

    .line 111
    iget-object p0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 112
    iget-object p1, p1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_1

    .line 114
    :cond_2
    return-object p0
.end method

.method public static maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 2
    .parameter "prefix"
    .parameter "uri"
    .parameter "bindings"

    .prologue
    .line 166
    if-nez p2, :cond_1

    .line 168
    if-nez p1, :cond_0

    move-object v1, p2

    .line 175
    :goto_0
    return-object v1

    .line 170
    :cond_0
    sget-object p2, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 172
    :cond_1
    invoke-virtual {p2, p0}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, found:Ljava/lang/String;
    if-nez v0, :cond_3

    if-nez p1, :cond_4

    :cond_2
    move-object v1, p2

    .line 174
    goto :goto_0

    .line 173
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    :cond_4
    new-instance v1, Lgnu/xml/NamespaceBinding;

    invoke-direct {v1, p0, p1, p2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    goto :goto_0
.end method

.method public static final nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 1
    .parameter "list1"
    .parameter "list2"

    .prologue
    .line 48
    if-nez p0, :cond_0

    move-object v0, p1

    .line 51
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, p1}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    move-object v0, p0

    .line 51
    goto :goto_0
.end method


# virtual methods
.method public count(Lgnu/xml/NamespaceBinding;)I
    .locals 2
    .parameter "fencePost"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, count:I
    move-object v1, p0

    .local v1, ns:Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eq v1, p1, :cond_0

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 157
    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 159
    :cond_0
    return v0
.end method

.method public final getNext()Lgnu/xml/NamespaceBinding;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 210
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 211
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 212
    return-void
.end method

.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"

    .prologue
    .line 75
    move-object v0, p0

    .local v0, ns:Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    .line 78
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 80
    :goto_1
    return-object v1

    .line 75
    :cond_0
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"
    .parameter "fencePost"

    .prologue
    .line 90
    move-object v0, p0

    .local v0, ns:Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eq v0, p2, :cond_1

    .line 92
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    .line 93
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 95
    :goto_1
    return-object v1

    .line 90
    :cond_0
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reversePrefix(Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 5
    .parameter "fencePost"

    .prologue
    .line 139
    move-object v2, p1

    .line 140
    .local v2, prev:Lgnu/xml/NamespaceBinding;
    move-object v3, p0

    .line 141
    .local v3, t:Lgnu/xml/NamespaceBinding;
    if-nez p1, :cond_0

    const/4 v4, -0x1

    move v0, v4

    .line 142
    .local v0, depth:I
    :goto_0
    if-eq v3, p1, :cond_1

    .line 144
    iget-object v1, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 145
    .local v1, next:Lgnu/xml/NamespaceBinding;
    iput-object v2, v3, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 146
    move-object v2, v3

    .line 147
    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lgnu/xml/NamespaceBinding;->depth:I

    .line 148
    move-object v3, v1

    .line 149
    goto :goto_0

    .line 141
    .end local v0           #depth:I
    .end local v1           #next:Lgnu/xml/NamespaceBinding;
    :cond_0
    iget v4, p1, Lgnu/xml/NamespaceBinding;->depth:I

    move v0, v4

    goto :goto_0

    .line 150
    .restart local v0       #depth:I
    :cond_1
    return-object v2
.end method

.method public final setNext(Lgnu/xml/NamespaceBinding;)V
    .locals 1
    .parameter "next"

    .prologue
    .line 38
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 39
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lgnu/xml/NamespaceBinding;->depth:I

    .line 40
    return-void

    .line 39
    :cond_0
    iget v0, p1, Lgnu/xml/NamespaceBinding;->depth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 20
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 28
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Namespace{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", depth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/xml/NamespaceBinding;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringAll()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Namespaces{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, sbuf:Ljava/lang/StringBuffer;
    move-object v0, p0

    .local v0, ns:Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eqz v0, :cond_1

    .line 190
    iget-object v2, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v2, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    if-nez v0, :cond_0

    const-string v2, "\""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 193
    :cond_0
    const-string v2, "\", "

    goto :goto_1

    .line 195
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
