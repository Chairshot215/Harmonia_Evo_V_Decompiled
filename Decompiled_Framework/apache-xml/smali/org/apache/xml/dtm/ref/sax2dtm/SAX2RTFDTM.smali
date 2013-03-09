.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2RTFDTM.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private m_currentDocumentNode:I

.field m_emptyCharsCount:I

.field m_emptyDataCount:I

.field m_emptyDataQNCount:I

.field m_emptyNSDeclSetCount:I

.field m_emptyNSDeclSetElemsCount:I

.field m_emptyNodeCount:I

.field mark_char_size:Lorg/apache/xml/utils/IntStack;

.field mark_data_size:Lorg/apache/xml/utils/IntStack;

.field mark_doq_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

.field mark_size:Lorg/apache/xml/utils/IntStack;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :goto_1
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v1}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :cond_0
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez v0, :cond_4

    :goto_3
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v2

    goto :goto_3
.end method


# virtual methods
.method protected _documentRoot(I)I
    .locals 2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    :goto_1
    if-eq v0, v1, :cond_1

    move p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public endDocument()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->charactersFlush()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

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

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    return-void
.end method

.method public getDocument()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    move-result v0

    return v0
.end method

.method public getDocumentRoot(I)I
    .locals 4

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeIdentity(I)I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_type(I)S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    goto :goto_0
.end method

.method public isTreeIncomplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popRewindMark()Z
    .locals 5

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->empty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    :goto_0
    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    const/4 v3, 0x0

    check-cast v3, [[[I

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-eqz v2, :cond_3

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    :goto_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    if-eqz v2, :cond_4

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    :goto_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v2, :cond_5

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    :goto_3
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v2, :cond_6

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    :goto_4
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v2, :cond_7

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    :goto_5
    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-nez v3, :cond_8

    const/4 v3, 0x1

    :goto_6
    return v3

    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public pushRewindMark()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Coding error; Don\'t try to mark/rewind an indexed DTM"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    goto :goto_1
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->startDocument()V

    return-void
.end method
