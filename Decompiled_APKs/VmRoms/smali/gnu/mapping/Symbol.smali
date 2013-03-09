.class public Lgnu/mapping/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final FUNCTION:Lgnu/mapping/Symbol;

.field public static final PLIST:Lgnu/mapping/Symbol;


# instance fields
.field protected name:Ljava/lang/String;

.field namespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "(function)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->FUNCTION:Lgnu/mapping/Symbol;

    .line 362
    const-string v0, "(property-list)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .locals 0
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 293
    return-void
.end method

.method public static equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .locals 6
    .parameter "sym1"
    .parameter "sym2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 305
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 322
    :goto_0
    return v2

    .line 307
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v2, v4

    .line 308
    goto :goto_0

    .line 312
    :cond_2
    iget-object v2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    iget-object v3, p1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    .line 315
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 316
    .local v0, namespace1:Lgnu/mapping/Namespace;
    iget-object v1, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 319
    .local v1, namespace2:Lgnu/mapping/Namespace;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 320
    iget-object v2, v0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    iget-object v3, v1, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .end local v0           #namespace1:Lgnu/mapping/Namespace;
    .end local v1           #namespace2:Lgnu/mapping/Namespace;
    :cond_4
    move v2, v4

    .line 322
    goto :goto_0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 116
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    move-object v0, v1

    .line 119
    .local v0, ns:Lgnu/mapping/Namespace;
    :goto_0
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 120
    :cond_0
    invoke-static {p1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 121
    :goto_1
    return-object v1

    .line 116
    .end local v0           #ns:Lgnu/mapping/Namespace;
    .restart local p0
    :cond_1
    check-cast p0, Lgnu/mapping/Namespace;

    move-object v0, p0

    goto :goto_0

    .line 121
    .end local p0
    .restart local v0       #ns:Lgnu/mapping/Namespace;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    goto :goto_1
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "uri"
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 105
    invoke-static {p0, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "name"

    .prologue
    .line 277
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "local"
    .parameter "prefix"

    .prologue
    .line 249
    invoke-static {p1}, Lgnu/mapping/Namespace;->makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 13
    .parameter "symbol"

    .prologue
    const/16 v12, 0x3a

    const/4 v11, 0x0

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 185
    .local v8, slen:I
    const/4 v3, -0x1

    .local v3, lbr:I
    const/4 v7, -0x1

    .line 186
    .local v7, rbr:I
    const/4 v0, 0x0

    .line 187
    .local v0, braceCount:I
    const/4 v4, 0x0

    .line 188
    .local v4, mainStart:I
    const/4 v6, 0x0

    .line 189
    .local v6, prefixEnd:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 192
    .local v1, ch:C
    if-ne v1, v12, :cond_1

    if-nez v0, :cond_1

    .line 194
    move v6, v2

    .line 195
    add-int/lit8 v4, v2, 0x1

    .line 223
    .end local v1           #ch:C
    :cond_0
    :goto_1
    if-ltz v3, :cond_8

    if-lez v7, :cond_8

    .line 225
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 226
    .local v9, uri:Ljava/lang/String;
    if-lez v6, :cond_7

    invoke-virtual {p0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 227
    .local v5, prefix:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9, v5}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    .line 236
    .end local v5           #prefix:Ljava/lang/String;
    .end local v9           #uri:Ljava/lang/String;
    :goto_3
    return-object v10

    .line 198
    .restart local v1       #ch:C
    :cond_1
    const/16 v10, 0x7b

    if-ne v1, v10, :cond_3

    .line 200
    if-gez v3, :cond_2

    .line 202
    move v6, v2

    .line 203
    move v3, v2

    .line 205
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 207
    :cond_3
    const/16 v10, 0x7d

    if-ne v1, v10, :cond_6

    .line 209
    add-int/lit8 v0, v0, -0x1

    .line 210
    if-nez v0, :cond_5

    .line 212
    move v7, v2

    .line 213
    if-ge v2, v8, :cond_4

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_4

    add-int/lit8 v10, v2, 0x2

    move v4, v10

    .line 214
    :goto_4
    goto :goto_1

    .line 213
    :cond_4
    add-int/lit8 v10, v2, 0x1

    move v4, v10

    goto :goto_4

    .line 216
    :cond_5
    if-gez v0, :cond_6

    .line 218
    move v4, v6

    .line 219
    goto :goto_1

    .line 189
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v1           #ch:C
    .restart local v9       #uri:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    move-object v5, v10

    goto :goto_2

    .line 229
    .end local v9           #uri:Ljava/lang/String;
    :cond_8
    if-lez v6, :cond_9

    .line 231
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    goto :goto_3

    .line 236
    :cond_9
    invoke-static {p0}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
    .locals 2
    .parameter "name"

    .prologue
    .line 126
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/mapping/SimpleSymbol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 3
    .parameter "name"
    .parameter "spec"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v2, :cond_1

    .line 132
    :cond_0
    invoke-static {p0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 147
    .end local p1
    :goto_0
    return-object v2

    .line 134
    .restart local p1
    :cond_1
    instance-of v2, p1, Lgnu/mapping/Namespace;

    if-eqz v2, :cond_2

    .line 135
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Namespace;

    move-object v1, v0

    .line 147
    .end local p1
    .local v1, ns:Lgnu/mapping/Namespace;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    goto :goto_0

    .line 136
    .end local v1           #ns:Lgnu/mapping/Namespace;
    .restart local p1
    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v2, :cond_3

    .line 137
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    .restart local v1       #ns:Lgnu/mapping/Namespace;
    goto :goto_1

    .line 141
    .end local v1           #ns:Lgnu/mapping/Namespace;
    :cond_3
    check-cast p1, Ljava/lang/CharSequence;

    .line 145
    .local p1, spec:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    .restart local v1       #ns:Lgnu/mapping/Namespace;
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "name"
    .parameter "namespace"
    .parameter "prefix"

    .prologue
    .line 163
    invoke-static {p1, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 297
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v1, v0

    .line 298
    .local v1, other:Lgnu/mapping/Symbol;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "comparing Symbols in different namespaces"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 330
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Lgnu/mapping/Namespace;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 55
    .local v0, ns:Lgnu/mapping/Namespace;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 66
    .local v0, ns:Lgnu/mapping/Namespace;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public final hasEmptyNamespace()Z
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 74
    .local v0, ns:Lgnu/mapping/Namespace;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, nsname:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .end local v1           #nsname:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .restart local v1       #nsname:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 44
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-static {v0, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 1
    .parameter "symbol"
    .parameter "property"

    .prologue
    .line 48
    invoke-static {p1, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 414
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 415
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0
.end method

.method public final setNamespace(Lgnu/mapping/Namespace;)V
    .locals 0
    .parameter "ns"

    .prologue
    .line 346
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 347
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lgnu/mapping/Symbol;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(C)Ljava/lang/String;
    .locals 9
    .parameter "style"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 377
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, uri:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, prefix:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    move v1, v8

    .line 380
    .local v1, hasUri:Z
    :goto_0
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    move v0, v8

    .line 381
    .local v0, hasPrefix:Z
    :goto_1
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, name:Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    .line 384
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v4, sbuf:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2

    const/16 v6, 0x55

    if-ne p1, v6, :cond_1

    if-nez v1, :cond_2

    .line 386
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_2
    if-eqz v1, :cond_4

    const/16 v6, 0x50

    if-ne p1, v6, :cond_3

    if-nez v0, :cond_4

    .line 389
    :cond_3
    const/16 v6, 0x7b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    :cond_4
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 398
    .end local v4           #sbuf:Ljava/lang/StringBuilder;
    :goto_2
    return-object v6

    .end local v0           #hasPrefix:Z
    .end local v1           #hasUri:Z
    .end local v2           #name:Ljava/lang/String;
    :cond_5
    move v1, v7

    .line 379
    goto :goto_0

    .restart local v1       #hasUri:Z
    :cond_6
    move v0, v7

    .line 380
    goto :goto_1

    .restart local v0       #hasPrefix:Z
    .restart local v2       #name:Ljava/lang/String;
    :cond_7
    move-object v6, v2

    .line 398
    goto :goto_2
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
    .line 403
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 404
    .local v0, ns:Lgnu/mapping/Namespace;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 406
    return-void
.end method
