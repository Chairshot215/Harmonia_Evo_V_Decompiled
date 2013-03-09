.class public Lorg/apache/xml/dtm/ref/DTMManagerDefault;
.super Lorg/apache/xml/dtm/DTMManager;
.source "DTMManagerDefault.java"


# static fields
.field private static final DEBUG:Z

.field private static final DUMPTREE:Z


# instance fields
.field protected m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

.field m_dtm_offsets:[I

.field protected m_dtms:[Lorg/apache/xml/dtm/DTM;

.field private m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x100

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    new-array v0, v1, [Lorg/apache/xml/dtm/DTM;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    return-void
.end method


# virtual methods
.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;II)V
    .locals 7

    const/high16 v4, 0x1

    monitor-enter p0

    if-lt p2, v4, :cond_0

    :try_start_0
    new-instance v4, Lorg/apache/xml/dtm/DTMException;

    const-string v5, "ER_NO_DTMIDS_AVAIL"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v3, v4

    if-gt v3, p2, :cond_1

    add-int/lit16 v4, p2, 0x100

    const/high16 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v1, v2, [Lorg/apache/xml/dtm/DTM;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    new-array v0, v2, [I

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aput-object p1, v4, p2

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aput p3, v4, p2

    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRegistration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v8

    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v10

    :try_start_1
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 v2, p1, 0x10

    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .locals 21

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/xml/dtm/DTMManager;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v10

    shl-int/lit8 v5, v10, 0x10

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v3, :cond_0

    new-instance v2, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v4, v0

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    if-eqz p1, :cond_8

    :try_start_1
    move-object/from16 v0, p1

    instance-of v15, v0, Ljavax/xml/transform/sax/SAXSource;

    :goto_1
    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    move/from16 v16, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-nez v15, :cond_1

    if-eqz v16, :cond_19

    :cond_1
    const/16 v18, 0x0

    if-nez p1, :cond_a

    const/16 v20, 0x0

    :cond_2
    :goto_3
    if-nez p1, :cond_d

    if-eqz p2, :cond_d

    if-nez p4, :cond_d

    if-nez p5, :cond_d

    :try_start_2
    new-instance v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.apache.xerces.parsers.SAXParser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v14, 0x1

    :goto_5
    if-eqz v14, :cond_3

    const/16 p4, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_14

    if-eqz p4, :cond_14

    const/4 v9, 0x0

    if-eqz v14, :cond_4

    :try_start_3
    const-string v3, "org.apache.xml.dtm.ref.IncrementalSAXSource_Xerces"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_6
    if-nez v9, :cond_5

    if-nez v18, :cond_f

    :try_start_4
    new-instance v9, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v9}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    :cond_5
    :goto_7
    invoke-virtual {v2, v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v20, :cond_10

    if-eqz v18, :cond_7

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    if-eqz v3, :cond_6

    if-nez p4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :cond_7
    :goto_8
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_a
    :try_start_8
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v19

    if-eqz v19, :cond_2

    :try_start_9
    invoke-static/range {v19 .. v19}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v19

    :goto_9
    :try_start_a
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v3

    if-eqz v18, :cond_c

    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    if-eqz v4, :cond_b

    if-nez p4, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string v4, "http://xml.org/sax/properties/lexical-handler"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v6}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :cond_c
    :goto_a
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_0
    move-exception v11

    :try_start_e
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not absolutize URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    new-instance v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    goto/16 :goto_4

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_5

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_f
    new-instance v13, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v13}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    move-object v9, v13

    goto/16 :goto_7

    :cond_10
    invoke-interface/range {v18 .. v18}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    if-nez v3, :cond_11

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_11
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->startParse(Lorg/xml/sax/InputSource;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    :goto_b
    if-eqz v18, :cond_13

    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    if-eqz v3, :cond_12

    if-nez p4, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    :cond_13
    :goto_c
    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v17

    :try_start_13
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    throw v17

    :catch_3
    move-exception v11

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v3, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_14
    if-nez v18, :cond_17

    if-eqz v18, :cond_16

    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/DTMManager;->m_incremental:Z

    if-eqz v3, :cond_15

    if-nez p4, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    :cond_16
    :goto_d
    :try_start_16
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    :cond_17
    :try_start_17
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface/range {v18 .. v18}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v3

    if-nez v3, :cond_18

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :cond_18
    :try_start_18
    const-string v3, "http://xml.org/sax/properties/lexical-handler"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_18 .. :try_end_18} :catch_8

    :goto_e
    :try_start_19
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    goto/16 :goto_b

    :catch_4
    move-exception v17

    :try_start_1a
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    throw v17

    :catch_5
    move-exception v11

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v3, v11}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :cond_19
    :try_start_1b
    new-instance v3, Lorg/apache/xml/dtm/DTMException;

    const-string v4, "ER_NOT_SUPPORTED"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    invoke-static {v4, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :catch_6
    move-exception v4

    goto/16 :goto_a

    :catch_7
    move-exception v3

    goto/16 :goto_c

    :catch_8
    move-exception v3

    goto :goto_e

    :catch_9
    move-exception v3

    goto :goto_e

    :catch_a
    move-exception v3

    goto :goto_d

    :catch_b
    move-exception v3

    goto/16 :goto_8
.end method

.method public declared-synchronized getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 15

    const/4 v14, -0x1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NODE_NON_NULL"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    :cond_1
    monitor-exit p0

    return v8

    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v10, v1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v13, v1, v9

    if-eqz v13, :cond_3

    instance-of v1, v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    if-eqz v1, :cond_3

    check-cast v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v8

    if-ne v8, v14, :cond_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v12, p1

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    move-object v0, v12

    check-cast v0, Lorg/w3c/dom/Attr;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_6

    move-object v12, v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    goto :goto_1

    :cond_5
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    goto :goto_1

    :cond_6
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    if-eqz v1, :cond_7

    move-object/from16 v0, p1

    check-cast v0, Lorg/w3c/dom/Attr;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v8

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    :goto_2
    if-ne v14, v8, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_COULD_NOT_RESOLVE_NODE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto :goto_2
.end method

.method public declared-synchronized getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .locals 7

    const/4 v5, -0x1

    monitor-enter p0

    :try_start_0
    instance-of v6, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    if-eqz v6, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v6

    if-ne v6, p0, :cond_0

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v3, v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v4, v6, v2

    if-ne v4, p1, :cond_2

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget v6, v6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    shl-int/lit8 v5, v2, 0x10

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    return-object v0
.end method

.method public declared-synchronized getFirstFreeDTMID()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v1, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v2, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;
    .locals 4

    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_2

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    invoke-virtual {v2}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lorg/apache/xml/dtm/DTMException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized release(Lorg/apache/xml/dtm/DTM;Z)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    :cond_0
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 v4, v1, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_2
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
