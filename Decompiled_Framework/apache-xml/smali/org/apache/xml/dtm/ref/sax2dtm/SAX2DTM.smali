.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.source "SAX2DTM.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTITY_FIELDS_PER:I = 0x4

.field private static final ENTITY_FIELD_NAME:I = 0x3

.field private static final ENTITY_FIELD_NOTATIONNAME:I = 0x2

.field private static final ENTITY_FIELD_PUBLICID:I = 0x0

.field private static final ENTITY_FIELD_SYSTEMID:I = 0x1

.field private static final m_fixednames:[Ljava/lang/String;


# instance fields
.field protected m_chars:Lorg/apache/xml/utils/FastStringBuffer;

.field protected transient m_coalescedTextType:I

.field protected transient m_contextIndexes:Lorg/apache/xml/utils/IntStack;

.field protected m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_endDocumentOccured:Z

.field private m_entities:Ljava/util/Vector;

.field protected m_idAttributes:Ljava/util/Hashtable;

.field private m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field protected transient m_insideDTD:Z

.field protected transient m_locator:Lorg/xml/sax/Locator;

.field protected transient m_parents:Lorg/apache/xml/utils/IntStack;

.field m_pastFirstElement:Z

.field protected transient m_prefixMappings:Ljava/util/Vector;

.field protected transient m_previous:I

.field protected m_sourceColumn:Lorg/apache/xml/utils/IntVector;

.field protected m_sourceLine:Lorg/apache/xml/utils/IntVector;

.field protected m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

.field private transient m_systemId:Ljava/lang/String;

.field protected m_textPendingStart:I

.field protected transient m_textType:I

.field protected m_useSourceLocationProperty:Z

.field protected m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field protected m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "#text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#cdata_section"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, "#comment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#document"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "#document-fragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 10

    const/16 v7, 0x200

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .locals 6

    const/16 v5, 0xa

    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    const/16 v0, 0x40

    if-gt p7, v0, :cond_1

    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v0, p7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v0, p7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v5}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v4}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v4}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    :goto_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    invoke-virtual {p1}, Lorg/apache/xml/dtm/DTMManager;->getSource_location()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    :goto_1
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :goto_2
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v1}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :cond_0
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    return-void

    :cond_1
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 v2, 0x20

    invoke-direct {v0, p7, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 v2, 0x20

    invoke-direct {v0, p7, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v2, 0xd

    invoke-direct {v0, v5, v2}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private final isTextType(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected _dataOrQName(I)I
    .locals 2

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_0
.end method

.method protected addNewDTMID(I)V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/ClassCastException;

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v3, "ER_NO_DTMIDS_AVAIL"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    check-cast v2, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v1

    invoke-virtual {v2, p0, v1, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v4, v1, 0x10

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected addNode(IIIIIZ)I
    .locals 5

    const/4 v2, -0x2

    const/4 v3, -0x1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    ushr-int/lit8 v4, v0, 0x10

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNewDTMID(I)V

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz p6, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    :cond_1
    if-eq v3, p4, :cond_2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setSourceLocation()V

    :cond_3
    sparse-switch p1, :sswitch_data_0

    if-ne v3, p4, :cond_4

    if-eq v3, p3, :cond_4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_4
    :goto_1
    :sswitch_0
    return v0

    :cond_5
    move v1, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declareNamespaceInContext(II)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x3

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    return-void

    :cond_1
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    if-ne v0, v2, :cond_0

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    goto :goto_0
.end method

.method protected charactersFlush()V
    .locals 10

    const/4 v9, 0x3

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    sub-int v8, v0, v1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getShouldStripWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1, v8}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v7

    :cond_0
    if-eqz v7, :cond_3

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    iput v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    :cond_2
    return-void

    :cond_3
    if-lez v8, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v9}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v5

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_0
.end method

.method public clearCoRoutine()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    return-void
.end method

.method public clearCoRoutine(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    :cond_1
    return-void
.end method

.method public comment([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v1, 0x8

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    goto :goto_0
.end method

.method protected declAlreadyDeclared(Ljava/lang/String;)Z
    .locals 6

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v5}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v2

    if-ne v2, v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v7

    invoke-direct {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    if-eqz p3, :cond_2

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_firstch(I)I

    move-result v1

    if-eq v10, v1, :cond_9

    const/4 v4, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v2, v1

    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v7

    invoke-direct {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    if-ne v10, v4, :cond_5

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    :cond_5
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    add-int/2addr v3, v8

    :cond_6
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v10, v2, :cond_7

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_parent(I)I

    move-result v8

    if-ge v8, v5, :cond_4

    :cond_7
    if-lez v3, :cond_0

    if-eqz p3, :cond_8

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_0

    :cond_8
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0

    :cond_9
    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    if-gez v0, :cond_a

    neg-int v0, v0

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_a
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v8, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v11, v9, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-interface {p2, v8, v11, v9}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_0
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->getcontentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    :cond_0
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setDTM(Lorg/apache/xml/dtm/DTM;)V

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    throw v2
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    return-void
.end method

.method public endDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    return-void
.end method

.method public endDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    if-eq v2, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_1
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, -0x1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v2

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    if-ne v4, v0, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    invoke-virtual {v2, v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->popShouldStripWhitespace()V

    return-void

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, v4, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_0
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-ltz v0, :cond_2

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_2
    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const-string v2, "%@$#^@#"

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const-string v2, "%@$#^@#"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    throw p1
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v4, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_0
    if-eq v4, v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_2
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    check-cast v0, Lorg/xml/sax/ContentHandler;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 0

    return-object p0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public getElementById(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeHandle(I)I

    move-result v2

    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v1

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    return-object p0
.end method

.method public getFixedNames(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_exptype(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_exptype(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-ltz v0, :cond_1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    :cond_1
    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method protected getNextNodeIdentity(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-nez v0, :cond_1

    const/4 p1, -0x1

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    goto :goto_0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getExpandedTypeID(I)I

    move-result v0

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNodeType(I)S

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "xmlns"

    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object v4, v4, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    if-gez v2, :cond_4

    neg-int v2, v2

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getExpandedTypeID(I)I

    move-result v0

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    if-gez v3, :cond_2

    neg-int v3, v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v5, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x1

    if-eq v5, v4, :cond_1

    const/16 v5, 0xb

    if-eq v5, v4, :cond_1

    const/16 v5, 0x9

    if-ne v5, v4, :cond_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    if-gez v0, :cond_3

    neg-int v0, v0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_3
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getNumberOfNodes()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v1

    if-nez v1, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v1

    if-gez v1, :cond_2

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x3a

    const/4 v4, 0x0

    const/4 v2, -0x1

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p2, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    if-ltz v2, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v3, "xmlns"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    const-string v3, "xmlns:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_8

    const-string v3, "xmlns:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    const-string v3, "xmlns"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v1, ""

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .locals 5

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result p1

    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 10

    const/4 v9, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v2

    if-ne v2, v9, :cond_0

    const/4 v6, -0x1

    :goto_0
    invoke-direct {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, v8, v4, v3}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    :goto_1
    return-object v7

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_firstch(I)I

    move-result v1

    if-eq v9, v1, :cond_6

    const/4 v4, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v2, v1

    :cond_2
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v6

    invoke-direct {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    if-ne v9, v4, :cond_3

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    :cond_3
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    add-int/2addr v3, v7

    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    if-eq v9, v2, :cond_5

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_parent(I)I

    move-result v7

    if-ge v7, v5, :cond_2

    :cond_5
    if-lez v3, :cond_8

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, v8, v4, v3}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    goto :goto_1

    :cond_6
    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    if-gez v0, :cond_7

    neg-int v0, v0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_7
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v8, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v7}, Lorg/apache/xml/utils/XMLStringFactory;->emptystr()Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    goto :goto_1
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v4, ""

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    if-nez v6, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_1
    move-object v5, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_1
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->characters([CII)V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWhitespace(I)Z
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    const/4 v4, -0x1

    :goto_0
    invoke-direct {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v5, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v5

    :goto_1
    return v5

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 6

    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->migrateTo(Lorg/apache/xml/dtm/DTMManager;)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v5, v0, 0x10

    invoke-virtual {v4, v5, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v4, p0, v0, v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    add-int/lit8 v0, v0, 0x1

    const/high16 v4, 0x1

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public needsTwoThreads()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected nextNode()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    invoke-interface {v3, v2}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-nez v3, :cond_4

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_3

    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected setSourceLocation()V
    .locals 3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CODING ERROR in Source Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public setUseSourceLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    return-void
.end method

.method public startDocument()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v1, 0x9

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v7

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v7}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v8

    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->indexNode(II)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3, v12}, Lorg/apache/xml/utils/IntStack;->push(I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v23

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    if-nez v3, :cond_1

    const-string v24, "xml"

    const-string v20, "http://www.w3.org/XML/1998/namespace"

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v4, 0x0

    const/16 v6, 0xd

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0, v6}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v14

    const/16 v10, 0xd

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v11, v5

    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v13

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    :cond_1
    move/from16 v21, v26

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    if-nez v24, :cond_3

    :goto_2
    add-int/lit8 v21, v21, 0x2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v4, v21, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v4, 0x0

    const/16 v6, 0xd

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0, v6}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v14

    const/16 v10, 0xd

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v11, v5

    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v13

    goto :goto_2

    :cond_4
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v22

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v17, :cond_a

    const-string v3, "xmlns"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "xmlns:"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declAlreadyDeclared(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_6
    const/16 v10, 0xd

    :cond_7
    :goto_5
    if-nez v27, :cond_8

    const-string v27, ""

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v14

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v14}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    move/from16 v0, v19

    neg-int v14, v0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v11, v5

    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v13

    goto :goto_4

    :cond_a
    const/4 v10, 0x2

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIDAttribute(Ljava/lang/String;I)V

    goto :goto_5

    :cond_b
    const/4 v3, -0x1

    if-eq v3, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeHandle(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v3, v4, v0}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v28

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v3, v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getShouldStripWhitespace()Z

    move-result v25

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->pushShouldStripWhitespace(Z)V

    :cond_d
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void

    :cond_e
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v3, v0, :cond_f

    const/16 v25, 0x1

    goto :goto_6

    :cond_f
    const/16 v25, 0x0

    goto :goto_6
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
