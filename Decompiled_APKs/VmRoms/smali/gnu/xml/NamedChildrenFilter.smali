.class public Lgnu/xml/NamedChildrenFilter;
.super Lgnu/lists/FilterConsumer;
.source "NamedChildrenFilter.java"


# instance fields
.field level:I

.field localName:Ljava/lang/String;

.field matchLevel:I

.field namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "out"

    .prologue
    .line 28
    invoke-direct {p0, p3}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 29
    iput-object p1, p0, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    .line 32
    return-void
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)Lgnu/xml/NamedChildrenFilter;
    .locals 1
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "out"

    .prologue
    .line 22
    new-instance v0, Lgnu/xml/NamedChildrenFilter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/xml/NamedChildrenFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/lists/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public endDocument()V
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 43
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->endDocument()V

    .line 44
    return-void
.end method

.method public endElement()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    sub-int/2addr v0, v2

    iput v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 81
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->endElement()V

    .line 82
    iget-boolean v0, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->matchLevel:I

    iget v1, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    if-ne v0, v1, :cond_0

    .line 83
    iput-boolean v2, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    .line 84
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 37
    invoke-super {p0}, Lgnu/lists/FilterConsumer;->startDocument()V

    .line 38
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 48
    iget-boolean v4, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 55
    instance-of v4, p1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_3

    .line 57
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v3, v0

    .line 58
    .local v3, qname:Lgnu/mapping/Symbol;
    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, curNamespaceURI:Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .end local v3           #qname:Lgnu/mapping/Symbol;
    .local v1, curLocalName:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    if-eq v4, v1, :cond_0

    iget-object v4, p0, Lgnu/xml/NamedChildrenFilter;->localName:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    if-eq v4, v2, :cond_1

    iget-object v4, p0, Lgnu/xml/NamedChildrenFilter;->namespaceURI:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 69
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lgnu/xml/NamedChildrenFilter;->skipping:Z

    .line 70
    iget v4, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    iput v4, p0, Lgnu/xml/NamedChildrenFilter;->matchLevel:I

    .line 74
    .end local v1           #curLocalName:Ljava/lang/String;
    .end local v2           #curNamespaceURI:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->startElement(Ljava/lang/Object;)V

    .line 75
    iget v4, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/xml/NamedChildrenFilter;->level:I

    .line 76
    return-void

    .line 63
    :cond_3
    const-string v2, ""

    .line 64
    .restart local v2       #curNamespaceURI:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #curLocalName:Ljava/lang/String;
    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4
    .parameter "val"

    .prologue
    .line 88
    instance-of v2, p1, Lgnu/lists/SeqPosition;

    if-eqz v2, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v1, v0

    .line 91
    .local v1, pos:Lgnu/lists/SeqPosition;
    iget-object v2, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v2, v2, Lgnu/lists/TreeList;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/lists/TreeList;

    iget v3, v1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3, p0}, Lgnu/lists/TreeList;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 101
    .end local v1           #pos:Lgnu/lists/SeqPosition;
    .end local p1
    :goto_0
    return-void

    .line 97
    .restart local p1
    :cond_0
    instance-of v2, p1, Lgnu/lists/Consumable;

    if-eqz v2, :cond_1

    .line 98
    check-cast p1, Lgnu/lists/Consumable;

    .end local p1
    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 100
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Lgnu/lists/FilterConsumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
