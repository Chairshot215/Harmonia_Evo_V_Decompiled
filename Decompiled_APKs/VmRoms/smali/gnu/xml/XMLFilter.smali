.class public Lgnu/xml/XMLFilter;
.super Ljava/lang/Object;
.source "XMLFilter.java"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lgnu/text/SourceLocator;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;


# static fields
.field public static final COPY_NAMESPACES_INHERIT:I = 0x2

.field public static final COPY_NAMESPACES_PRESERVE:I = 0x1

.field private static final SAW_KEYWORD:I = 0x1

.field private static final SAW_WORD:I = 0x2


# instance fields
.field attrCount:I

.field attrLocalName:Ljava/lang/String;

.field attrPrefix:Ljava/lang/String;

.field base:Lgnu/lists/Consumer;

.field public transient copyNamespacesMode:I

.field currentNamespacePrefix:Ljava/lang/String;

.field protected ignoringLevel:I

.field in:Lgnu/text/LineBufferedReader;

.field inStartTag:Z

.field locator:Lgnu/text/SourceLocator;

.field mappingTable:[Lgnu/xml/MappingInfo;

.field mappingTableMask:I

.field private messages:Lgnu/text/SourceMessages;

.field mismatchReported:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field public namespacePrefixes:Z

.field protected nesting:I

.field public out:Lgnu/lists/Consumer;

.field previous:I

.field startIndexes:[I

.field protected stringizingElementNesting:I

.field protected stringizingLevel:I

.field tlist:Lgnu/lists/TreeList;

.field workStack:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v3, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    .line 73
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 87
    iput v1, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 100
    iput v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 115
    iput-boolean v2, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    .line 126
    const/16 v0, 0x80

    new-array v0, v0, [Lgnu/xml/MappingInfo;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    .line 127
    iget-object v0, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    array-length v0, v0

    sub-int/2addr v0, v3

    iput v0, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    .line 717
    iput-object p1, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 718
    iput-object p1, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    .line 719
    instance-of v0, p1, Lgnu/xml/NodeTree;

    if-eqz v0, :cond_0

    .line 720
    check-cast p1, Lgnu/xml/NodeTree;

    .end local p1
    iput-object p1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    .line 724
    :goto_0
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 725
    return-void

    .line 722
    .restart local p1
    :cond_0
    new-instance v0, Lgnu/lists/TreeList;

    invoke-direct {v0}, Lgnu/lists/TreeList;-><init>()V

    iput-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    goto :goto_0
.end method

.method public static duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "attrSymbol"
    .parameter "elementName"

    .prologue
    .line 1445
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "duplicate attribute: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v0, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, uri:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1449
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1450
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1454
    if-eqz p1, :cond_1

    .line 1456
    const-string v2, " in <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1457
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1458
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1460
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private ensureSpaceInStartIndexes(I)V
    .locals 3
    .parameter "oldSize"

    .prologue
    const/4 v2, 0x0

    .line 1430
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    if-nez v1, :cond_1

    .line 1432
    const/16 v1, 0x14

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 1436
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 1437
    .local v0, tmpn:[I
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1438
    iput-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    goto :goto_0
.end method

.method private ensureSpaceInWorkStack(I)V
    .locals 3
    .parameter "oldSize"

    .prologue
    const/4 v2, 0x0

    .line 1416
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1418
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 1422
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 1423
    .local v0, tmpn:[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    iput-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 4
    .parameter "list"
    .parameter "node"

    .prologue
    .line 905
    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne p2, v3, :cond_0

    move-object v3, p1

    .line 919
    :goto_0
    return-object v3

    .line 907
    :cond_0
    iget-object v3, p2, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-direct {p0, p1, v3}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    .line 908
    iget-object v2, p2, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 909
    .local v2, uri:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 911
    if-nez v2, :cond_1

    move-object v3, p1

    .line 912
    goto :goto_0

    .line 913
    :cond_1
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 915
    :cond_2
    iget-object v1, p2, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 916
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, found:Ljava/lang/String;
    if-nez v0, :cond_4

    if-nez v2, :cond_5

    :cond_3
    move-object v3, p1

    .line 918
    goto :goto_0

    .line 917
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 919
    :cond_5
    invoke-virtual {p0, v1, v2, p1}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    goto :goto_0
.end method

.method private resolve(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "prefix"
    .parameter "isAttribute"

    .prologue
    .line 327
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 328
    const-string v1, ""

    .line 334
    :goto_0
    return-object v1

    .line 329
    :cond_0
    iget-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v1, p1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 331
    goto :goto_0

    .line 332
    :cond_1
    if-eqz p1, :cond_2

    .line 333
    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown namespace prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 334
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private startAttributeCommon()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 924
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ltz v0, :cond_0

    .line 925
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 926
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_1

    move v0, v2

    .line 935
    :goto_0
    return v0

    .line 929
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v0, :cond_2

    .line 930
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 931
    :cond_2
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 932
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInStartIndexes(I)V

    .line 933
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v2, v2, Lgnu/lists/TreeList;->gapStart:I

    aput v2, v0, v1

    .line 934
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 935
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lgnu/xml/XMLFilter;
    .locals 0
    .parameter "c"

    .prologue
    .line 1293
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1294
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;
    .locals 2
    .parameter "csq"

    .prologue
    .line 1299
    if-nez p1, :cond_0

    .line 1300
    const-string p1, "null"

    .line 1301
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    .line 1302
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;
    .locals 1
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1307
    if-nez p1, :cond_0

    .line 1308
    const-string p1, "null"

    .line 1309
    :cond_0
    sub-int v0, p3, p2

    invoke-virtual {p0, p1, p2, v0}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 1310
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 1
    .parameter "baseUri"

    .prologue
    .line 1280
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1281
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 1282
    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1533
    return-void
.end method

.method protected checkValidComment([CII)V
    .locals 5
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1129
    move v1, p3

    .line 1130
    .local v1, i:I
    const/4 v2, 0x1

    .line 1131
    .local v2, sawHyphen:Z
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1133
    add-int v3, p2, v1

    aget-char v3, p1, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 1134
    .local v0, curHyphen:Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1136
    const/16 v3, 0x65

    const-string v4, "consecutive or final hyphen in XML comment"

    invoke-virtual {p0, v3, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1141
    .end local v0           #curHyphen:Z
    :cond_0
    return-void

    .line 1133
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 1139
    .restart local v0       #curHyphen:Z
    :cond_2
    move v2, v0

    .line 1140
    goto :goto_0
.end method

.method protected checkWriteAtomic()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 603
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    move v0, v1

    .line 606
    :goto_0
    return v0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 606
    const/4 v0, 0x1

    goto :goto_0
.end method

.method closeStartTag()V
    .locals 35

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    move/from16 v31, v0

    if-lez v31, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/xml/XMLFilter;->inStartTag:Z

    .line 342
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->previous:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 345
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 346
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v31, v0

    if-nez v31, :cond_6

    sget-object v31, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    move-object/from16 v20, v31

    .line 349
    .local v20, outer:Lgnu/xml/NamespaceBinding;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v4, v0

    .line 353
    .local v4, bindings:Lgnu/xml/NamespaceBinding;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-gt v0, v1, :cond_12

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v22, v31, v32

    .line 356
    .local v22, saved:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 358
    move-object/from16 v0, v22

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v24, v0

    .line 359
    .local v24, sym:Lgnu/mapping/Symbol;
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v21

    .line 360
    .local v21, prefix:Ljava/lang/String;
    const-string v31, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 361
    const/16 v21, 0x0

    .line 362
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v29

    .line 363
    .local v29, uri:Ljava/lang/String;
    const-string v31, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 364
    const/16 v29, 0x0

    .line 365
    :cond_4
    if-lez v8, :cond_7

    if-nez v21, :cond_7

    if-nez v29, :cond_7

    .line 353
    .end local v21           #prefix:Ljava/lang/String;
    .end local v24           #sym:Lgnu/mapping/Symbol;
    .end local v29           #uri:Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 346
    .end local v4           #bindings:Lgnu/xml/NamespaceBinding;
    .end local v8           #i:I
    .end local v20           #outer:Lgnu/xml/NamespaceBinding;
    .end local v22           #saved:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    const/16 v33, 0x2

    sub-int v32, v32, v33

    aget-object v4, v31, v32

    check-cast v4, Lgnu/xml/NamespaceBinding;

    move-object/from16 v20, v4

    goto :goto_1

    .line 367
    .restart local v4       #bindings:Lgnu/xml/NamespaceBinding;
    .restart local v8       #i:I
    .restart local v20       #outer:Lgnu/xml/NamespaceBinding;
    .restart local v21       #prefix:Ljava/lang/String;
    .restart local v22       #saved:Ljava/lang/Object;
    .restart local v24       #sym:Lgnu/mapping/Symbol;
    .restart local v29       #uri:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    .line 368
    .local v12, isOuter:Z
    move-object/from16 v16, v4

    .line 370
    .local v16, ns:Lgnu/xml/NamespaceBinding;
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 371
    const/4 v12, 0x1

    .line 372
    :cond_8
    if-nez v16, :cond_a

    .line 374
    if-nez v21, :cond_9

    if-eqz v29, :cond_5

    .line 375
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    goto :goto_3

    .line 378
    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 380
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 382
    if-eqz v12, :cond_b

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    goto :goto_3

    .line 388
    :cond_b
    move-object/from16 v17, v4

    .line 391
    .local v17, ns2:Lgnu/xml/NamespaceBinding;
    :goto_5
    if-nez v17, :cond_f

    .line 394
    const/4 v13, 0x1

    .line 396
    .local v13, j:I
    :goto_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "_ns_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, nprefix:Ljava/lang/String;
    invoke-virtual {v4, v15}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_e

    .line 409
    .end local v13           #j:I
    :cond_c
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    .line 410
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v14

    .line 411
    .local v14, local:Ljava/lang/String;
    if-nez v29, :cond_d

    .line 412
    const-string v29, ""

    .line 413
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    move-object/from16 v0, v29

    move-object v1, v14

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v33

    aput-object v33, v31, v32

    goto/16 :goto_3

    .line 394
    .end local v14           #local:Ljava/lang/String;
    .restart local v13       #j:I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 402
    .end local v13           #j:I
    .end local v15           #nprefix:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 404
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object v15, v0

    .line 405
    .restart local v15       #nprefix:Ljava/lang/String;
    invoke-virtual {v4, v15}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 389
    .end local v15           #nprefix:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    goto :goto_5

    .line 368
    .end local v17           #ns2:Lgnu/xml/NamespaceBinding;
    :cond_11
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 424
    .end local v12           #isOuter:Z
    .end local v16           #ns:Lgnu/xml/NamespaceBinding;
    .end local v21           #prefix:Ljava/lang/String;
    .end local v22           #saved:Ljava/lang/Object;
    .end local v24           #sym:Lgnu/mapping/Symbol;
    .end local v29           #uri:Ljava/lang/String;
    :cond_12
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-gt v0, v1, :cond_32

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v22, v31, v32

    .line 428
    .restart local v22       #saved:Ljava/lang/Object;
    const/4 v11, 0x0

    .line 430
    .local v11, isNsNode:Z
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-nez v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 432
    :cond_13
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    .line 434
    move-object/from16 v0, v22

    check-cast v0, Lgnu/xml/MappingInfo;

    move-object v10, v0

    .line 435
    .local v10, info:Lgnu/xml/MappingInfo;
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 436
    .restart local v21       #prefix:Ljava/lang/String;
    iget-object v14, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 437
    .restart local v14       #local:Ljava/lang/String;
    if-lez v8, :cond_19

    if-nez v21, :cond_14

    const-string v31, "xmlns"

    move-object v0, v14

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_15

    :cond_14
    const-string v31, "xmlns"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 441
    :cond_15
    const/4 v11, 0x1

    .line 442
    const-string v29, "(namespace-node)"

    .line 455
    .restart local v29       #uri:Ljava/lang/String;
    :goto_8
    iget v7, v10, Lgnu/xml/MappingInfo;->tagHash:I

    .line 456
    .local v7, hash:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    move/from16 v31, v0

    and-int v5, v7, v31

    .line 458
    .local v5, bucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v31, v0

    aget-object v10, v31, v5

    .line 459
    const/16 v27, 0x0

    .line 463
    .local v27, tagMatch:Lgnu/xml/MappingInfo;
    :goto_9
    if-nez v10, :cond_1c

    .line 465
    move-object/from16 v10, v27

    .line 466
    new-instance v10, Lgnu/xml/MappingInfo;

    .end local v10           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v10}, Lgnu/xml/MappingInfo;-><init>()V

    .line 467
    .restart local v10       #info:Lgnu/xml/MappingInfo;
    iput v7, v10, Lgnu/xml/MappingInfo;->tagHash:I

    .line 468
    move-object/from16 v0, v21

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 469
    iput-object v14, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v5

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v31, v0

    aput-object v10, v31, v5

    .line 472
    move-object/from16 v0, v29

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 473
    move-object/from16 v0, v29

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 474
    if-nez v8, :cond_16

    .line 476
    new-instance v30, Lgnu/xml/XName;

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 477
    .local v30, xname:Lgnu/xml/XName;
    move-object/from16 v28, v30

    .line 478
    .local v28, type:Lgnu/xml/XName;
    move-object/from16 v0, v30

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 479
    iput-object v4, v10, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 519
    .end local v28           #type:Lgnu/xml/XName;
    .end local v30           #xname:Lgnu/xml/XName;
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aput-object v10, v31, v32

    .line 530
    .end local v5           #bucket:I
    .end local v7           #hash:I
    .end local v21           #prefix:Ljava/lang/String;
    .end local v27           #tagMatch:Lgnu/xml/MappingInfo;
    :goto_b
    const/4 v13, 0x1

    .restart local v13       #j:I
    :goto_c
    if-ge v13, v8, :cond_25

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v13

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v19, v31, v32

    .line 534
    .local v19, other:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v31, v0

    if-eqz v31, :cond_24

    .line 535
    move-object/from16 v0, v19

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v18, v0

    .line 540
    .end local v19           #other:Ljava/lang/Object;
    .local v18, osym:Lgnu/mapping/Symbol;
    :goto_d
    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_18

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v26, v31, v32

    .line 544
    .local v26, tag:Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_17

    .line 545
    check-cast v26, Lgnu/xml/MappingInfo;

    .end local v26           #tag:Ljava/lang/Object;
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v26, v0

    .line 546
    :cond_17
    const/16 v31, 0x65

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 530
    .end local v18           #osym:Lgnu/mapping/Symbol;
    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 445
    .end local v13           #j:I
    .end local v29           #uri:Ljava/lang/String;
    .restart local v21       #prefix:Ljava/lang/String;
    :cond_19
    if-lez v8, :cond_1a

    const/16 v31, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lgnu/xml/XMLFilter;->resolve(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #uri:Ljava/lang/String;
    goto/16 :goto_8

    .end local v29           #uri:Ljava/lang/String;
    :cond_1a
    const/16 v31, 0x0

    goto :goto_e

    .line 449
    .end local v10           #info:Lgnu/xml/MappingInfo;
    .end local v14           #local:Ljava/lang/String;
    .end local v21           #prefix:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v22

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v25, v0

    .line 450
    .local v25, symbol:Lgnu/mapping/Symbol;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/xml/XMLFilter;->lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;

    move-result-object v10

    .line 451
    .restart local v10       #info:Lgnu/xml/MappingInfo;
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 452
    .restart local v21       #prefix:Ljava/lang/String;
    iget-object v14, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 453
    .restart local v14       #local:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v29

    .restart local v29       #uri:Ljava/lang/String;
    goto/16 :goto_8

    .line 483
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    .restart local v5       #bucket:I
    .restart local v7       #hash:I
    .restart local v27       #tagMatch:Lgnu/xml/MappingInfo;
    :cond_1c
    move-object v0, v10

    iget v0, v0, Lgnu/xml/MappingInfo;->tagHash:I

    move/from16 v31, v0

    move/from16 v0, v31

    move v1, v7

    if-ne v0, v1, :cond_20

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object v1, v14

    if-ne v0, v1, :cond_20

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 487
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_1f

    .line 489
    move-object/from16 v0, v29

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 490
    move-object/from16 v0, v29

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 496
    :cond_1d
    :goto_f
    if-nez v8, :cond_22

    .line 498
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object v1, v4

    if-eq v0, v1, :cond_1e

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v31, v0

    if-nez v31, :cond_20

    .line 501
    :cond_1e
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v28, v0

    .line 502
    .restart local v28       #type:Lgnu/xml/XName;
    iput-object v4, v10, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 503
    if-nez v28, :cond_16

    .line 505
    new-instance v30, Lgnu/xml/XName;

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 506
    .restart local v30       #xname:Lgnu/xml/XName;
    move-object/from16 v28, v30

    .line 507
    move-object/from16 v0, v30

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    goto/16 :goto_a

    .line 492
    .end local v28           #type:Lgnu/xml/XName;
    .end local v30           #xname:Lgnu/xml/XName;
    :cond_1f
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_21

    .line 461
    :cond_20
    iget-object v10, v10, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto/16 :goto_9

    .line 494
    :cond_21
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    if-nez v31, :cond_1d

    .line 495
    move-object/from16 v0, v29

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    goto :goto_f

    .line 514
    :cond_22
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v28, v0

    .line 515
    .local v28, type:Lgnu/mapping/Symbol;
    goto/16 :goto_a

    .line 523
    .end local v5           #bucket:I
    .end local v7           #hash:I
    .end local v10           #info:Lgnu/xml/MappingInfo;
    .end local v14           #local:Ljava/lang/String;
    .end local v21           #prefix:Ljava/lang/String;
    .end local v27           #tagMatch:Lgnu/xml/MappingInfo;
    .end local v28           #type:Lgnu/mapping/Symbol;
    .end local v29           #uri:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v22

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v24, v0

    .line 524
    .restart local v24       #sym:Lgnu/mapping/Symbol;
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v29

    .line 525
    .restart local v29       #uri:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v14

    .line 526
    .restart local v14       #local:Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #info:Lgnu/xml/MappingInfo;
    goto/16 :goto_b

    .line 536
    .end local v24           #sym:Lgnu/mapping/Symbol;
    .restart local v13       #j:I
    .restart local v19       #other:Ljava/lang/Object;
    :cond_24
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_18

    .line 537
    check-cast v19, Lgnu/xml/MappingInfo;

    .end local v19           #other:Ljava/lang/Object;
    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v18, v0

    .restart local v18       #osym:Lgnu/mapping/Symbol;
    goto/16 :goto_d

    .line 550
    .end local v18           #osym:Lgnu/mapping/Symbol;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2c

    .line 552
    if-nez v8, :cond_29

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    .line 553
    .local v28, type:Ljava/lang/Object;
    :goto_10
    iget v9, v10, Lgnu/xml/MappingInfo;->index:I

    .line 554
    .local v9, index:I
    if-lez v9, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v31, v0

    aget-object v31, v31, v9

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_27

    .line 557
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v9

    .line 558
    iput v9, v10, Lgnu/xml/MappingInfo;->index:I

    .line 560
    :cond_27
    if-nez v8, :cond_2a

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/lists/TreeList;->setElementName(II)V

    .line 424
    .end local v9           #index:I
    :cond_28
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 552
    .end local v28           #type:Ljava/lang/Object;
    :cond_29
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    goto :goto_10

    .line 562
    .restart local v9       #index:I
    .restart local v28       #type:Ljava/lang/Object;
    :cond_2a
    if-eqz v11, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move/from16 v31, v0

    if-eqz v31, :cond_28

    .line 563
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, v8, v33

    aget v32, v32, v33

    move-object/from16 v0, v31

    move/from16 v1, v32

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/lists/TreeList;->setAttributeName(II)V

    goto :goto_11

    .line 567
    .end local v9           #index:I
    .end local v28           #type:Ljava/lang/Object;
    :cond_2c
    if-nez v10, :cond_2d

    move-object/from16 v28, v22

    .line 569
    .restart local v28       #type:Ljava/lang/Object;
    :goto_12
    if-nez v8, :cond_2f

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto :goto_11

    .line 567
    .end local v28           #type:Ljava/lang/Object;
    :cond_2d
    if-nez v8, :cond_2e

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    goto :goto_12

    :cond_2e
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    goto :goto_12

    .line 571
    .restart local v28       #type:Ljava/lang/Object;
    :cond_2f
    if-eqz v11, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move/from16 v31, v0

    if-eqz v31, :cond_28

    .line 573
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    sub-int v32, v8, v32

    aget v23, v31, v32

    .line 575
    .local v23, start:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-ge v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v31, v0

    aget v31, v31, v8

    move/from16 v6, v31

    .line 576
    .local v6, end:I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    add-int/lit8 v32, v23, 0x5

    const/16 v33, 0x1

    sub-int v33, v6, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lgnu/lists/Consumer;->endAttribute()V

    goto/16 :goto_11

    .line 575
    .end local v6           #end:I
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v31, v0

    move/from16 v6, v31

    goto :goto_13

    .line 585
    .end local v10           #info:Lgnu/xml/MappingInfo;
    .end local v11           #isNsNode:Z
    .end local v13           #j:I
    .end local v14           #local:Ljava/lang/String;
    .end local v22           #saved:Ljava/lang/Object;
    .end local v23           #start:I
    .end local v28           #type:Ljava/lang/Object;
    .end local v29           #uri:Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/kawa/sax/ContentConsumer;

    move/from16 v31, v0

    if-eqz v31, :cond_33

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object v4, v0

    .end local v4           #bindings:Lgnu/xml/NamespaceBinding;
    check-cast v4, Lgnu/kawa/sax/ContentConsumer;

    invoke-virtual {v4}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 589
    :cond_33
    const/4 v8, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-gt v0, v1, :cond_34

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    const/16 v33, 0x0

    aput-object v33, v31, v32

    .line 589
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 591
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_35

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/lists/TreeList;->clear()V

    .line 597
    :cond_35
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->attrCount:I

    goto/16 :goto_0
.end method

.method public commentFromParser([CII)V
    .locals 1
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1157
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 1159
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1160
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1161
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1163
    .restart local p0
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 1164
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 653
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 654
    return-void
.end method

.method public emitCharacterReference(I[CII)V
    .locals 1
    .parameter "value"
    .parameter "name"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1121
    const/high16 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1122
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 1125
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    goto :goto_0
.end method

.method public emitDoctypeDecl([CIIII)V
    .locals 0
    .parameter "buffer"
    .parameter "target"
    .parameter "tlength"
    .parameter "data"
    .parameter "dlength"

    .prologue
    .line 1276
    return-void
.end method

.method public emitEndAttributes()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1007
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1008
    return-void
.end method

.method public emitEndElement([CII)V
    .locals 10
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x65

    .line 1015
    iget-object v6, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1017
    const-string v6, "unclosed attribute"

    invoke-virtual {p0, v8, v6}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1022
    const-string v6, "unmatched end element"

    invoke-virtual {p0, v8, v6}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1054
    :cond_1
    :goto_0
    return-void

    .line 1025
    :cond_2
    if-eqz p1, :cond_5

    .line 1027
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v1

    .line 1028
    .local v1, info:Lgnu/xml/MappingInfo;
    iget-object v6, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v7, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v7, v9

    aget-object v3, v6, v7

    .line 1029
    .local v3, old:Ljava/lang/Object;
    instance-of v6, v3, Lgnu/xml/MappingInfo;

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    if-nez v6, :cond_5

    .line 1031
    move-object v0, v3

    check-cast v0, Lgnu/xml/MappingInfo;

    move-object v2, v0

    .line 1032
    .local v2, mold:Lgnu/xml/MappingInfo;
    iget-object v6, v1, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    iget-object v7, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v6, v7, :cond_3

    iget-object v6, v1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    iget-object v7, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eq v6, v7, :cond_5

    .line 1034
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "</"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v5, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v5, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1036
    const-string v6, "> matching <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    iget-object v4, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1038
    .local v4, oldPrefix:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1040
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1041
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    :cond_4
    iget-object v6, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1044
    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1045
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v8, v6}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1046
    iput-boolean v9, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    .line 1050
    .end local v1           #info:Lgnu/xml/MappingInfo;
    .end local v2           #mold:Lgnu/xml/MappingInfo;
    .end local v3           #old:Ljava/lang/Object;
    .end local v4           #oldPrefix:Ljava/lang/String;
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1051
    iget v6, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v6, :cond_1

    .line 1053
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    goto :goto_0
.end method

.method public emitEntityReference([CII)V
    .locals 10
    .parameter "name"
    .parameter "start"
    .parameter "length"

    .prologue
    const/16 v9, 0x74

    const/16 v8, 0x70

    const/16 v7, 0x6f

    const/16 v6, 0x61

    .line 1088
    aget-char v0, p1, p2

    .line 1089
    .local v0, c0:C
    const/16 v4, 0x3f

    .line 1090
    .local v4, ch:C
    const/4 v5, 0x2

    if-ne p3, v5, :cond_2

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p1, v5

    if-ne v5, v9, :cond_2

    .line 1093
    const/16 v5, 0x6c

    if-ne v0, v5, :cond_1

    .line 1094
    const/16 v4, 0x3c

    .line 1113
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1114
    return-void

    .line 1095
    :cond_1
    const/16 v5, 0x67

    if-ne v0, v5, :cond_0

    .line 1096
    const/16 v4, 0x3e

    goto :goto_0

    .line 1098
    :cond_2
    const/4 v5, 0x3

    if-ne p3, v5, :cond_3

    .line 1100
    if-ne v0, v6, :cond_0

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p1, v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, p2, 0x2

    aget-char v5, p1, v5

    if-ne v5, v8, :cond_0

    .line 1101
    const/16 v4, 0x26

    goto :goto_0

    .line 1103
    :cond_3
    const/4 v5, 0x4

    if-ne p3, v5, :cond_0

    .line 1105
    add-int/lit8 v5, p2, 0x1

    aget-char v1, p1, v5

    .line 1106
    .local v1, c1:C
    add-int/lit8 v5, p2, 0x2

    aget-char v2, p1, v5

    .line 1107
    .local v2, c2:C
    add-int/lit8 v5, p2, 0x3

    aget-char v3, p1, v5

    .line 1108
    .local v3, c3:C
    const/16 v5, 0x71

    if-ne v0, v5, :cond_4

    const/16 v5, 0x75

    if-ne v1, v5, :cond_4

    if-ne v2, v7, :cond_4

    if-ne v3, v9, :cond_4

    .line 1109
    const/16 v4, 0x22

    goto :goto_0

    .line 1110
    :cond_4
    if-ne v0, v6, :cond_0

    if-ne v1, v8, :cond_0

    if-ne v2, v7, :cond_0

    const/16 v5, 0x73

    if-ne v3, v5, :cond_0

    .line 1111
    const/16 v4, 0x27

    goto :goto_0
.end method

.method public emitStartAttribute([CII)V
    .locals 6
    .parameter "data"
    .parameter "start"
    .parameter "count"

    .prologue
    .line 972
    iget-object v3, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 973
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 974
    :cond_0
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v3

    if-nez v3, :cond_2

    .line 999
    :cond_1
    :goto_0
    return-void

    .line 977
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 978
    .local v0, info:Lgnu/xml/MappingInfo;
    iget-object v3, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v5, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aput-object v0, v3, v4

    .line 979
    iget-object v2, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 980
    .local v2, prefix:Ljava/lang/String;
    iget-object v1, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 981
    .local v1, local:Ljava/lang/String;
    iput-object v1, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 982
    iput-object v2, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 983
    if-eqz v2, :cond_5

    .line 985
    const-string v3, "xmlns"

    if-ne v2, v3, :cond_3

    .line 987
    iput-object v1, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    .line 997
    :cond_3
    :goto_1
    iget-object v3, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v3, :cond_1

    .line 998
    :cond_4
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->startAttribute(I)V

    goto :goto_0

    .line 992
    :cond_5
    const-string v3, "xmlns"

    if-ne v1, v3, :cond_3

    if-nez v2, :cond_3

    .line 994
    const-string v3, ""

    iput-object v3, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto :goto_1
.end method

.method public emitStartElement([CII)V
    .locals 4
    .parameter "data"
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    .line 840
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 841
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 842
    .local v0, info:Lgnu/xml/MappingInfo;
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 843
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 844
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v2, v3

    aput-object v0, v1, v2

    .line 845
    return-void
.end method

.method public endAttribute()V
    .locals 21

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->previous:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 236
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0

    .line 239
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    move v5, v0

    if-ltz v5, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v5, :cond_0

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "id"

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "xml"

    if-ne v5, v6, :cond_4

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    add-int/lit8 v20, v5, 0x5

    .line 248
    .local v20, valStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v19, v0

    .line 249
    .local v19, valEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    iget-object v7, v5, Lgnu/lists/TreeList;->data:[C

    .line 250
    .local v7, data:[C
    move/from16 v14, v20

    .local v14, i:I
    move v15, v14

    .line 252
    .end local v14           #i:I
    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 278
    .end local v7           #data:[C
    .end local v15           #i:I
    .end local v19           #valEnd:I
    .end local v20           #valStart:I
    :cond_4
    :goto_2
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 279
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 281
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/TreeList;->endAttribute()V

    .line 282
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v12, v5, v6

    .line 286
    .local v12, attrStart:I
    move v8, v12

    .line 287
    .local v8, uriStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v18, v0

    .line 288
    .local v18, uriEnd:I
    sub-int v9, v18, v8

    .line 289
    .local v9, uriLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    iget-object v7, v5, Lgnu/lists/TreeList;->data:[C

    .line 294
    .restart local v7       #data:[C
    const/4 v10, 0x0

    .line 295
    .local v10, uriHash:I
    move v14, v8

    .restart local v14       #i:I
    :goto_3
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 297
    aget-char v13, v7, v14

    .line 298
    .local v13, datum:C
    const v5, 0xffff

    and-int/2addr v5, v13

    const v6, 0x9fff

    if-le v5, v6, :cond_b

    .line 300
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v17, sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v18

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 302
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 303
    const/4 v8, 0x0

    .line 304
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    move/from16 v18, v9

    .line 305
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    new-array v7, v5, [C

    .line 306
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move/from16 v2, v18

    move-object v3, v7

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 311
    .end local v13           #datum:C
    .end local v17           #sbuf:Ljava/lang/StringBuffer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    iput v12, v5, Lgnu/lists/TreeList;->gapStart:I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ""

    if-ne v5, v6, :cond_c

    const/4 v5, 0x0

    move-object v6, v5

    .line 315
    .local v6, prefix:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lgnu/xml/XMLFilter;->lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;

    move-result-object v16

    .line 318
    .local v16, info:Lgnu/xml/MappingInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 320
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 257
    .end local v6           #prefix:Ljava/lang/String;
    .end local v8           #uriStart:I
    .end local v9           #uriLength:I
    .end local v10           #uriHash:I
    .end local v12           #attrStart:I
    .end local v14           #i:I
    .end local v16           #info:Lgnu/xml/MappingInfo;
    .end local v18           #uriEnd:I
    .restart local v15       #i:I
    .restart local v19       #valEnd:I
    .restart local v20       #valStart:I
    :cond_8
    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    aget-char v13, v7, v15

    .line 258
    .restart local v13       #datum:C
    const v5, 0xffff

    and-int/2addr v5, v13

    const v6, 0x9fff

    if-gt v5, v6, :cond_9

    const/16 v5, 0x9

    if-eq v13, v5, :cond_9

    const/16 v5, 0xd

    if-eq v13, v5, :cond_9

    const/16 v5, 0xa

    if-eq v13, v5, :cond_9

    const/16 v5, 0x20

    if-ne v13, v5, :cond_a

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    aget-char v5, v7, v14

    const/16 v6, 0x20

    if-ne v5, v6, :cond_a

    .line 268
    :cond_9
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 269
    .restart local v17       #sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move/from16 v0, v20

    move-object v1, v5

    iput v0, v1, Lgnu/lists/TreeList;->gapStart:I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    .end local v7           #data:[C
    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v17           #sbuf:Ljava/lang/StringBuffer;
    .restart local v7       #data:[C
    :cond_a
    move v15, v14

    .line 275
    .end local v14           #i:I
    .restart local v15       #i:I
    goto/16 :goto_1

    .line 309
    .end local v15           #i:I
    .end local v19           #valEnd:I
    .end local v20           #valStart:I
    .restart local v8       #uriStart:I
    .restart local v9       #uriLength:I
    .restart local v10       #uriHash:I
    .restart local v12       #attrStart:I
    .restart local v14       #i:I
    .restart local v18       #uriEnd:I
    :cond_b
    mul-int/lit8 v5, v10, 0x1f

    add-int v10, v5, v13

    .line 295
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 313
    .end local v13           #datum:C
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v5

    goto/16 :goto_4
.end method

.method public endDocument()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1248
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1250
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1268
    :goto_0
    return-void

    .line 1253
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1254
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1255
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aput-object v2, v0, v1

    .line 1256
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 1257
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1258
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_0
.end method

.method public endElement()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1058
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1059
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v0, v2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1060
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 1061
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 1063
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1064
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aput-object v3, v0, v1

    .line 1065
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    aput-object v3, v0, v1

    .line 1066
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v0, v1, :cond_0

    .line 1070
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 1071
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1526
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1527
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 1503
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1504
    return-void
.end method

.method public endEntity()V
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1287
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0}, Lgnu/lists/XConsumer;->endEntity()V

    .line 1288
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"

    .prologue
    .line 1559
    iget-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1560
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 2
    .parameter "severity"
    .parameter "message"

    .prologue
    .line 1465
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    .line 1466
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    if-eqz v0, :cond_1

    .line 1468
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    iget-object v1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    invoke-virtual {v0, p1, v1, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 1471
    :goto_0
    return-void

    .line 1470
    :cond_1
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    goto :goto_0
.end method

.method public findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 6
    .parameter "prefix"
    .parameter "uri"
    .parameter "oldBindings"

    .prologue
    .line 138
    if-nez p2, :cond_2

    const/4 v4, 0x0

    move v1, v4

    .line 139
    .local v1, hash:I
    :goto_0
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v1, v4

    .line 141
    :cond_0
    iget v4, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v0, v1, v4

    .line 142
    .local v0, bucket:I
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v4, v0

    .line 145
    .local v2, info:Lgnu/xml/MappingInfo;
    :goto_1
    if-nez v2, :cond_3

    .line 147
    new-instance v2, Lgnu/xml/MappingInfo;

    .end local v2           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v2}, Lgnu/xml/MappingInfo;-><init>()V

    .line 148
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v4, v4, v0

    iput-object v4, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 149
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v4, v0

    .line 150
    iput v1, v2, Lgnu/xml/MappingInfo;->tagHash:I

    .line 151
    iput-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 152
    iput-object p2, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 153
    iput-object p2, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 154
    const-string v4, ""

    if-ne p2, v4, :cond_1

    .line 155
    const/4 p2, 0x0

    .line 156
    :cond_1
    new-instance v3, Lgnu/xml/NamespaceBinding;

    invoke-direct {v3, p1, p2, p3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 158
    .local v3, namespaces:Lgnu/xml/NamespaceBinding;
    iput-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 159
    iget-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 169
    :goto_2
    return-object v4

    .line 138
    .end local v0           #bucket:I
    .end local v1           #hash:I
    .end local v2           #info:Lgnu/xml/MappingInfo;
    .end local v3           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v1, v4

    goto :goto_0

    .line 162
    .restart local v0       #bucket:I
    .restart local v1       #hash:I
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    :cond_3
    iget v4, v2, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v4, v1, :cond_4

    iget-object v4, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v4, p1, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .restart local v3       #namespaces:Lgnu/xml/NamespaceBinding;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    iget-object v5, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_4

    iget-object v4, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-ne v4, p2, :cond_4

    .line 169
    iget-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    goto :goto_2

    .line 143
    .end local v3           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_4
    iget-object v2, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 1593
    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    .local v0, col:I
    if-lez v0, :cond_0

    move v1, v0

    .end local v0           #col:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1584
    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v1, :cond_0

    move v1, v2

    .line 1587
    :goto_0
    return v1

    .line 1586
    :cond_0
    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    .line 1587
    .local v0, line:I
    if-gez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1569
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1538
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1539
    return-void
.end method

.method public ignoring()Z
    .locals 1

    .prologue
    .line 1475
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final inElement()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 755
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 757
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 758
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 759
    :cond_0
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 1598
    const/4 v0, 0x0

    return v0
.end method

.method public linefeedFromParser()V
    .locals 2

    .prologue
    .line 764
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;
    .locals 8
    .parameter "prefix"
    .parameter "uriChars"
    .parameter "uriStart"
    .parameter "uriLength"
    .parameter "uriHash"
    .parameter "oldBindings"

    .prologue
    .line 186
    if-nez p1, :cond_1

    move v1, p5

    .line 192
    .local v1, hash:I
    :goto_0
    iget v6, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v0, v1, v6

    .line 193
    .local v0, bucket:I
    iget-object v6, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v6, v0

    .line 196
    .local v2, info:Lgnu/xml/MappingInfo;
    :goto_1
    if-nez v2, :cond_2

    .line 198
    new-instance v2, Lgnu/xml/MappingInfo;

    .end local v2           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v2}, Lgnu/xml/MappingInfo;-><init>()V

    .line 199
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    iget-object v6, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v6, v6, v0

    iput-object v6, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 200
    iget-object v6, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v6, v0

    .line 201
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, uri:Ljava/lang/String;
    iput v1, v2, Lgnu/xml/MappingInfo;->tagHash:I

    .line 207
    iput-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 208
    iput-object v5, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 209
    iput-object v5, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 210
    const-string v6, ""

    if-ne v5, v6, :cond_0

    .line 211
    const/4 v5, 0x0

    .line 212
    :cond_0
    new-instance v4, Lgnu/xml/NamespaceBinding;

    invoke-direct {v4, p1, v5, p6}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 214
    .local v4, namespaces:Lgnu/xml/NamespaceBinding;
    iput-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v3, v2

    .line 225
    .end local v2           #info:Lgnu/xml/MappingInfo;
    .end local v5           #uri:Ljava/lang/String;
    .local v3, info:Ljava/lang/Object;
    :goto_2
    return-object v3

    .line 186
    .end local v0           #bucket:I
    .end local v1           #hash:I
    .end local v3           #info:Ljava/lang/Object;
    .end local v4           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, p5

    move v1, v6

    goto :goto_0

    .line 218
    .restart local v0       #bucket:I
    .restart local v1       #hash:I
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    :cond_2
    iget v6, v2, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v6, v1, :cond_3

    iget-object v6, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v6, p1, :cond_3

    iget-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .restart local v4       #namespaces:Lgnu/xml/NamespaceBinding;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v6

    iget-object v7, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-ne v6, p1, :cond_3

    iget-object v6, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    invoke-static {v6, p2, p3, p4}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v2

    .line 225
    .restart local v3       #info:Ljava/lang/Object;
    goto :goto_2

    .line 194
    .end local v3           #info:Ljava/lang/Object;
    .end local v4           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_3
    iget-object v2, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;
    .locals 9
    .parameter "qname"

    .prologue
    .line 1316
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    .line 1317
    .local v5, local:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1318
    .local v6, prefix:Ljava/lang/String;
    const-string v8, ""

    if-ne v6, v8, :cond_0

    .line 1319
    const/4 v6, 0x0

    .line 1320
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 1321
    .local v7, uri:Ljava/lang/String;
    invoke-static {v6, v5}, Lgnu/xml/MappingInfo;->hash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1322
    .local v1, hash:I
    iget v8, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v2, v1, v8

    .line 1323
    .local v2, index:I
    iget-object v8, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v0, v8, v2

    .line 1324
    .local v0, first:Lgnu/xml/MappingInfo;
    move-object v3, v0

    .line 1327
    .local v3, info:Lgnu/xml/MappingInfo;
    :goto_0
    if-nez v3, :cond_1

    .line 1330
    new-instance v3, Lgnu/xml/MappingInfo;

    .end local v3           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v3}, Lgnu/xml/MappingInfo;-><init>()V

    .line 1331
    .restart local v3       #info:Lgnu/xml/MappingInfo;
    iput-object p1, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 1332
    iput-object v6, v3, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1333
    iput-object v7, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1334
    iput-object v5, v3, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1335
    iput v1, v3, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1336
    iput-object v0, v3, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1337
    iget-object v8, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v0, v8, v2

    move-object v4, v3

    .line 1348
    .end local v3           #info:Lgnu/xml/MappingInfo;
    .local v4, info:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 1340
    .end local v4           #info:Ljava/lang/Object;
    .restart local v3       #info:Lgnu/xml/MappingInfo;
    :cond_1
    iget-object v8, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-ne p1, v8, :cond_2

    move-object v4, v3

    .line 1341
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_1

    .line 1342
    .end local v4           #info:Ljava/lang/Object;
    :cond_2
    iget-object v8, v3, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v5, v8, :cond_4

    iget-object v8, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v8, :cond_4

    iget-object v8, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-eq v7, v8, :cond_3

    iget-object v8, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, v3, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v6, v8, :cond_4

    .line 1346
    iput-object v7, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1347
    iput-object p1, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object v4, v3

    .line 1348
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_1

    .line 1350
    .end local v4           #info:Ljava/lang/Object;
    :cond_4
    iget-object v3, v3, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_0
.end method

.method lookupTag([CII)Lgnu/xml/MappingInfo;
    .locals 12
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1365
    const/4 v3, 0x0

    .line 1366
    .local v3, hash:I
    const/4 v9, 0x0

    .line 1367
    .local v9, prefixHash:I
    const/4 v1, -0x1

    .line 1368
    .local v1, colon:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p3, :cond_1

    .line 1370
    add-int v10, p2, v4

    aget-char v0, p1, v10

    .line 1371
    .local v0, ch:C
    const/16 v10, 0x3a

    if-ne v0, v10, :cond_0

    if-gez v1, :cond_0

    .line 1373
    move v1, v4

    .line 1374
    move v9, v3

    .line 1375
    const/4 v3, 0x0

    .line 1368
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1378
    :cond_0
    mul-int/lit8 v10, v3, 0x1f

    add-int v3, v10, v0

    goto :goto_1

    .line 1380
    .end local v0           #ch:C
    :cond_1
    xor-int/2addr v3, v9

    .line 1381
    iget v10, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v5, v3, v10

    .line 1382
    .local v5, index:I
    iget-object v10, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v10, v5

    .line 1383
    .local v2, first:Lgnu/xml/MappingInfo;
    move-object v6, v2

    .line 1386
    .local v6, info:Lgnu/xml/MappingInfo;
    :goto_2
    if-nez v6, :cond_3

    .line 1389
    new-instance v6, Lgnu/xml/MappingInfo;

    .end local v6           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v6}, Lgnu/xml/MappingInfo;-><init>()V

    .line 1390
    .restart local v6       #info:Lgnu/xml/MappingInfo;
    iput v3, v6, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1391
    if-ltz v1, :cond_2

    .line 1393
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1394
    add-int/lit8 v1, v1, 0x1

    .line 1395
    add-int v8, p2, v1

    .line 1396
    .local v8, lstart:I
    new-instance v10, Ljava/lang/String;

    sub-int v11, p3, v1

    invoke-direct {v10, p1, v8, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1403
    .end local v8           #lstart:I
    :goto_3
    iput-object v2, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1404
    iget-object v10, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v10, v5

    move-object v7, v6

    .line 1409
    .end local v6           #info:Lgnu/xml/MappingInfo;
    .local v7, info:Ljava/lang/Object;
    :goto_4
    return-object v7

    .line 1400
    .end local v7           #info:Ljava/lang/Object;
    .restart local v6       #info:Lgnu/xml/MappingInfo;
    :cond_2
    const/4 v10, 0x0

    iput-object v10, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1401
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    goto :goto_3

    .line 1407
    :cond_3
    iget v10, v6, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v3, v10, :cond_4

    invoke-virtual {v6, p1, p2, p3}, Lgnu/xml/MappingInfo;->match([CII)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v7, v6

    .line 1409
    .restart local v7       #info:Ljava/lang/Object;
    goto :goto_4

    .line 1410
    .end local v7           #info:Ljava/lang/Object;
    :cond_4
    iget-object v6, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_2
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "target"
    .parameter "data"

    .prologue
    .line 1546
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1547
    .local v0, chars:[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1548
    return-void
.end method

.method processingInstructionCommon(Ljava/lang/String;[CII)V
    .locals 1
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1198
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 1200
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1201
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1202
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1, p2, p3, p4}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1205
    .restart local p0
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p2, p3, p4}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public processingInstructionFromParser([CIIII)V
    .locals 3
    .parameter "buffer"
    .parameter "tstart"
    .parameter "tlength"
    .parameter "dstart"
    .parameter "dlength"

    .prologue
    .line 1215
    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v1

    if-nez v1, :cond_0

    aget-char v1, p1, p2

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    aget-char v1, p1, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x2

    aget-char v1, p1, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1220
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1221
    .local v0, target:Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p4, p5}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .parameter "locator"

    .prologue
    .line 1481
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 1482
    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    iput-object p1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    .line 1485
    :cond_0
    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .parameter "messages"

    .prologue
    .line 68
    iput-object p1, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/LineBufferedReader;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 64
    iput-object p1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    iput-object p0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 66
    iput-object p1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1565
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 9
    .parameter "attrType"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x65

    .line 940
    iput v7, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 941
    instance-of v4, p1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_1

    .line 943
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    .line 944
    .local v2, sym:Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, local:Ljava/lang/String;
    iput-object v1, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 946
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 947
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, uri:Ljava/lang/String;
    const-string v4, "http://www.w3.org/2000/xmlns/"

    if-eq v3, v4, :cond_0

    const-string v4, ""

    if-ne v3, v4, :cond_1

    const-string v4, "xmlns"

    if-ne v1, v4, :cond_1

    .line 950
    :cond_0
    const-string v4, "arttribute name cannot be \'xmlns\' or in xmlns namespace"

    invoke-virtual {p0, v6, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 952
    .end local v1           #local:Ljava/lang/String;
    .end local v2           #sym:Lgnu/mapping/Symbol;
    .end local v3           #uri:Ljava/lang/String;
    :cond_1
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v4, v4, v8

    if-nez v4, :cond_2

    .line 953
    const-string v4, "attribute not allowed at document level"

    invoke-virtual {p0, v6, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 954
    :cond_2
    iget v4, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v4, :cond_3

    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v4, :cond_3

    .line 955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' follows non-attribute content"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 956
    :cond_3
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v4

    if-nez v4, :cond_4

    .line 963
    :goto_0
    return-void

    .line 958
    :cond_4
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v5, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v6, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v8

    aput-object p1, v4, v5

    .line 959
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v4, :cond_5

    .line 960
    iget-object v4, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v4, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_0

    .line 962
    :cond_5
    iget-object v4, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v4, v7}, Lgnu/lists/TreeList;->startAttribute(I)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 3

    .prologue
    .line 1226
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1227
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1244
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1233
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    .line 1236
    :goto_1
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 1237
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    .line 1241
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1242
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 849
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 850
    iget v4, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v4, :cond_0

    .line 852
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v4, v6

    invoke-direct {p0, v4}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 853
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v5, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v5, v6

    aput-object p1, v4, v5

    .line 854
    iget v4, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-nez v4, :cond_1

    .line 855
    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 900
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 856
    .restart local p1
    :cond_1
    iget v4, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-eq v4, v6, :cond_2

    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v4, v7, :cond_4

    .line 858
    :cond_2
    instance-of v4, p1, Lgnu/xml/XName;

    if-eqz v4, :cond_3

    check-cast p1, Lgnu/xml/XName;

    .end local p1
    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .restart local p1
    :cond_3
    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_1

    .line 865
    :cond_4
    const/4 v0, 0x2

    .line 867
    .local v0, i:I
    :goto_2
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v0, v4, :cond_5

    .line 869
    const/4 v1, 0x0

    .line 878
    .local v1, inherited:Lgnu/xml/NamespaceBinding;
    :goto_3
    if-nez v1, :cond_8

    .line 881
    instance-of v4, p1, Lgnu/xml/XName;

    if-eqz v4, :cond_7

    check-cast p1, Lgnu/xml/XName;

    .end local p1
    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    :goto_4
    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 872
    .end local v1           #inherited:Lgnu/xml/NamespaceBinding;
    .restart local p1
    :cond_5
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_6

    .line 874
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v1, v4, v0

    check-cast v1, Lgnu/xml/NamespaceBinding;

    .line 875
    .restart local v1       #inherited:Lgnu/xml/NamespaceBinding;
    goto :goto_3

    .line 865
    .end local v1           #inherited:Lgnu/xml/NamespaceBinding;
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 881
    .restart local v1       #inherited:Lgnu/xml/NamespaceBinding;
    :cond_7
    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_4

    .line 885
    :cond_8
    iget v4, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-ne v4, v7, :cond_9

    .line 886
    iput-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 887
    :cond_9
    instance-of v4, p1, Lgnu/xml/XName;

    if-eqz v4, :cond_b

    .line 889
    check-cast p1, Lgnu/xml/XName;

    .end local p1
    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 890
    .local v3, preserved:Lgnu/xml/NamespaceBinding;
    invoke-static {v1, v3}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v2

    .line 891
    .local v2, join:Lgnu/xml/NamespaceBinding;
    if-ne v2, v1, :cond_a

    .line 892
    iput-object v3, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 894
    :cond_a
    invoke-direct {p0, v1, v3}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 897
    .end local v2           #join:Lgnu/xml/NamespaceBinding;
    .end local v3           #preserved:Lgnu/xml/NamespaceBinding;
    .restart local p1
    :cond_b
    iput-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 1490
    invoke-static {p1, p2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1491
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1492
    .local v1, numAttributes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1494
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1495
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 4
    .parameter "name"
    .parameter "atts"

    .prologue
    .line 1508
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1509
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1510
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v0

    .line 1511
    .local v0, attrLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1513
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object p1

    .line 1514
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1515
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v2

    .line 1516
    .local v2, type:Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1518
    invoke-virtual {p0, v3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1521
    .end local v2           #type:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected startElementCommon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 817
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 818
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 820
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 821
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    .line 822
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v0, v3}, Lgnu/lists/TreeList;->startElement(I)V

    .line 823
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 824
    iput v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 834
    :cond_0
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 835
    return-void

    .line 828
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_2

    .line 829
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 830
    :cond_2
    iput v3, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 831
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 832
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 1552
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1555
    return-void
.end method

.method public textFromParser([CII)V
    .locals 3
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 771
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v1

    if-nez v1, :cond_3

    .line 773
    const/4 v0, 0x0

    .line 775
    .local v0, i:I
    :goto_0
    if-ne v0, p3, :cond_1

    .line 791
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 777
    .restart local v0       #i:I
    :cond_1
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 779
    const/16 v1, 0x65

    const-string v2, "text at document level"

    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 773
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    .end local v0           #i:I
    :cond_3
    if-lez p3, :cond_0

    .line 786
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_1
.end method

.method public write(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 611
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    .line 613
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 747
    if-nez p3, :cond_1

    .line 748
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 739
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 730
    if-nez p3, :cond_1

    .line 731
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 617
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 619
    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 806
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_1

    .line 809
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 811
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    goto :goto_0
.end method

.method public writeComment([CII)V
    .locals 0
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1148
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->checkValidComment([CII)V

    .line 1149
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 1150
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 647
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_0

    .line 648
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/TreeList;

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 649
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .parameter "v"

    .prologue
    .line 629
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 631
    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 623
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 625
    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 635
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 637
    :cond_0
    return-void
.end method

.method protected writeJoiner()V
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 796
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-nez v0, :cond_0

    .line 797
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/TreeList;

    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 798
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .parameter "v"

    .prologue
    .line 641
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 643
    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x2

    .line 674
    iget v7, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v7, :cond_1

    .line 713
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 676
    .restart local p1
    :cond_1
    instance-of v7, p1, Lgnu/lists/SeqPosition;

    if-eqz v7, :cond_2

    .line 678
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v4, v0

    .line 679
    .local v4, pos:Lgnu/lists/SeqPosition;
    iget-object v7, v4, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v4}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_0

    .line 681
    .end local v4           #pos:Lgnu/lists/SeqPosition;
    :cond_2
    instance-of v7, p1, Lgnu/lists/TreeList;

    if-eqz v7, :cond_3

    .line 682
    check-cast p1, Lgnu/lists/TreeList;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/lists/TreeList;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 683
    .restart local p1
    :cond_3
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_4

    instance-of v7, p1, Lgnu/lists/CharSeq;

    if-nez v7, :cond_4

    .line 685
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 686
    .local v5, seq:Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 687
    .local v2, it:Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 688
    .local v6, wasAtomic:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 689
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 691
    .end local v1           #i:I
    .end local v2           #it:Ljava/util/Iterator;
    .end local v5           #seq:Ljava/util/List;
    .end local v6           #wasAtomic:Z
    :cond_4
    instance-of v7, p1, Lgnu/expr/Keyword;

    if-eqz v7, :cond_5

    .line 693
    move-object v0, p1

    check-cast v0, Lgnu/expr/Keyword;

    move-object v3, v0

    .line 694
    .local v3, k:Lgnu/expr/Keyword;
    invoke-virtual {v3}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 695
    const/4 v7, 0x1

    iput v7, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0

    .line 699
    .end local v3           #k:Lgnu/expr/Keyword;
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 700
    instance-of v7, p1, Lgnu/lists/UnescapedData;

    if-eqz v7, :cond_6

    .line 702
    iget-object v7, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v7, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 703
    const/4 v7, 0x0

    iput v7, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0

    .line 707
    :cond_6
    iget v7, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v7, v8, :cond_7

    .line 708
    const/16 v7, 0x20

    invoke-virtual {p0, v7}, Lgnu/xml/XMLFilter;->write(I)V

    .line 709
    :cond_7
    invoke-static {p1, p0}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 710
    iput v8, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 2
    .parameter "seq"
    .parameter "ipos"

    .prologue
    const/4 v1, 0x2

    .line 658
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_3

    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v0, v1, :cond_3

    .line 662
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_2

    .line 663
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 664
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 666
    :cond_3
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 667
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 668
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 5
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x65

    .line 1170
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1171
    add-int v1, p3, p4

    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p3, :cond_2

    .line 1173
    aget-char v0, p2, v1

    .line 1174
    .local v0, ch:C
    :cond_1
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-lt v1, p3, :cond_0

    .line 1176
    aget-char v0, p2, v1

    .line 1177
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_1

    .line 1179
    const-string v2, "\'?>\' is not allowed in a processing-instruction"

    invoke-virtual {p0, v4, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 1185
    .end local v0           #ch:C
    :cond_2
    const-string v2, "xml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1186
    const-string v2, "processing-instruction target may not be \'xml\' (ignoring case)"

    invoke-virtual {p0, v4, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1188
    :cond_3
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing-instruction target \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a valid Name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1192
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1193
    return-void
.end method
