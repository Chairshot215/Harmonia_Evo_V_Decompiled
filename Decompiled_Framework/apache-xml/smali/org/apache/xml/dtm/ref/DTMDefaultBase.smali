.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.super Ljava/lang/Object;
.source "DTMDefaultBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;


# static fields
.field public static final DEFAULT_BLOCKSIZE:I = 0x200

.field public static final DEFAULT_NUMBLOCKS:I = 0x20

.field public static final DEFAULT_NUMBLOCKS_SMALL:I = 0x4

.field static final JJK_DEBUG:Z = false

.field protected static final NOTPROCESSED:I = -0x2

.field public static final ROOTNODE:I


# instance fields
.field protected m_documentBaseURI:Ljava/lang/String;

.field protected m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_elemIndexes:[[[I

.field protected m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_indexing:Z

.field public m_mgr:Lorg/apache/xml/dtm/DTMManager;

.field protected m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

.field protected m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_namespaceDeclSets:Ljava/util/Vector;

.field private m_namespaceLists:Ljava/util/Vector;

.field protected m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_shouldStripWS:Z

.field protected m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

.field protected m_size:I

.field protected m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

.field protected m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

.field protected m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
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

    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iput-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceLists:Ljava/util/Vector;

    const/16 v2, 0x40

    if-gt p7, v2, :cond_4

    const/4 v0, 0x4

    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    :goto_0
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz p8, :cond_0

    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    :cond_0
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    instance-of v2, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    iput-object p5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iput-boolean p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz p6, :cond_5

    new-instance v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    :goto_1
    if-eqz p4, :cond_3

    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    :cond_3
    return-void

    :cond_4
    const/16 v0, 0x20

    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    goto :goto_1
.end method


# virtual methods
.method protected _exptype(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    goto :goto_0
.end method

.method protected _firstch(I)I
    .locals 5

    const/4 v3, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_2

    if-nez v1, :cond_2

    move v2, v3

    :goto_1
    return v2

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method protected _level(I)I
    .locals 4

    const/4 v2, -0x1

    :cond_0
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v3, :cond_0

    move v0, v2

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    if-eq v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected _nextsib(I)I
    .locals 5

    const/4 v3, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_2

    if-nez v1, :cond_2

    move v2, v3

    :goto_1
    return v2

    :cond_1
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method protected _parent(I)I
    .locals 2

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_1

    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_0
.end method

.method protected _prevsib(I)I
    .locals 2

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_1

    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_0
.end method

.method protected _type(I)S
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v1

    :cond_0
    return v1
.end method

.method public appendChild(IZZ)V
    .locals 2

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-void
.end method

.method protected declareNamespaceInContext(II)V
    .locals 9

    const/16 v8, 0x20

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v6, :cond_1

    new-instance v6, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v6, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v5, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-nez v5, :cond_4

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v2

    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v2, 0x10

    const/16 v7, 0x800

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    if-ltz v3, :cond_0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    if-ne p1, v6, :cond_0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_0

    :cond_2
    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v5, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    :cond_3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v4

    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_2
    if-ltz v0, :cond_6

    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v6

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :goto_3
    return-void

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_3
.end method

.method public abstract dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public documentRegistration()V
    .locals 0

    return-void
.end method

.method public documentRelease()V
    .locals 0

    return-void
.end method

.method public dumpDTM(Ljava/io/OutputStream;)V
    .locals 19

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DTMDump"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".txt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dumping... "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 p1, v10

    :cond_0
    new-instance v13, Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Total nodes: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "=========== index="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " handle="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ==========="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NodeName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeName(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NodeNameX: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LocalName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getLocalName(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NamespaceURI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Prefix: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getPrefix(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Expanded Type ID: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    const-string v15, "Unknown!"

    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v3

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_3

    const-string v16, "First child: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result v12

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v12, :cond_5

    const-string v16, "Prev sibling: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v9

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v9, :cond_7

    const-string v16, "Next sibling: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v11

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v11, :cond_9

    const-string v16, "Parent: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result v7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Node Value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "String Value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :pswitch_1
    const-string v15, "ATTRIBUTE_NODE"

    goto/16 :goto_1

    :pswitch_2
    const-string v15, "CDATA_SECTION_NODE"

    goto/16 :goto_1

    :pswitch_3
    const-string v15, "COMMENT_NODE"

    goto/16 :goto_1

    :pswitch_4
    const-string v15, "DOCUMENT_FRAGMENT_NODE"

    goto/16 :goto_1

    :pswitch_5
    const-string v15, "DOCUMENT_NODE"

    goto/16 :goto_1

    :pswitch_6
    const-string v15, "DOCUMENT_NODE"

    goto/16 :goto_1

    :pswitch_7
    const-string v15, "ELEMENT_NODE"

    goto/16 :goto_1

    :pswitch_8
    const-string v15, "ENTITY_NODE"

    goto/16 :goto_1

    :pswitch_9
    const-string v15, "ENTITY_REFERENCE_NODE"

    goto/16 :goto_1

    :pswitch_a
    const-string v15, "NAMESPACE_NODE"

    goto/16 :goto_1

    :pswitch_b
    const-string v15, "NOTATION_NODE"

    goto/16 :goto_1

    :pswitch_c
    const-string v15, "NULL"

    goto/16 :goto_1

    :pswitch_d
    const-string v15, "PROCESSING_INSTRUCTION_NODE"

    goto/16 :goto_1

    :pswitch_e
    const-string v15, "TEXT_NODE"

    goto/16 :goto_1

    :cond_3
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    const-string v16, "First child: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v16, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_4
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "First child: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v12, :cond_6

    const-string v16, "Prev sibling: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Prev sibling: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v9, :cond_8

    const-string v16, "Next sibling: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Next sibling: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_9
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v11, :cond_a

    const-string v16, "Parent: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Parent: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_e
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public dumpNode(I)Ljava/lang/String;
    .locals 4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-string v2, "[null]"

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v1, "Unknown!"

    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    const-string v1, "ATTR"

    goto :goto_1

    :pswitch_2
    const-string v1, "CDATA"

    goto :goto_1

    :pswitch_3
    const-string v1, "COMMENT"

    goto :goto_1

    :pswitch_4
    const-string v1, "DOC_FRAG"

    goto :goto_1

    :pswitch_5
    const-string v1, "DOC"

    goto :goto_1

    :pswitch_6
    const-string v1, "DOC_TYPE"

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "ELEMENT"

    goto/16 :goto_1

    :pswitch_8
    const-string v1, "ENTITY"

    goto/16 :goto_1

    :pswitch_9
    const-string v1, "ENT_REF"

    goto/16 :goto_1

    :pswitch_a
    const-string v1, "NAMESPACE"

    goto/16 :goto_1

    :pswitch_b
    const-string v1, "NOTATION"

    goto/16 :goto_1

    :pswitch_c
    const-string v1, "null"

    goto/16 :goto_1

    :pswitch_d
    const-string v1, "PI"

    goto/16 :goto_1

    :pswitch_e
    const-string v1, "TEXT"

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_e
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected ensureSizeOfIndex(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-nez v3, :cond_3

    add-int/lit8 v3, p1, 0x14

    new-array v3, v3, [[[I

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object v2, v3, p1

    if-nez v2, :cond_4

    add-int/lit8 v3, p2, 0x64

    new-array v2, v3, [[I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aput-object v2, v3, p1

    :cond_1
    :goto_1
    aget-object v0, v2, p2

    if-nez v0, :cond_5

    const/16 v3, 0x80

    new-array v0, v3, [I

    aput-object v0, v2, p2

    const/4 v3, 0x1

    aput v3, v0, v5

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    array-length v3, v3

    if-gt v3, p1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    add-int/lit8 v3, p1, 0x14

    new-array v3, v3, [[[I

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    array-length v3, v2

    if-gt v3, p2, :cond_1

    move-object v1, v2

    add-int/lit8 v3, p2, 0x64

    new-array v2, v3, [[I

    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aput-object v2, v3, p1

    goto :goto_1

    :cond_5
    array-length v3, v0

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x1

    if-gt v3, v4, :cond_2

    move-object v1, v0

    aget v3, v0, v5

    add-int/lit16 v3, v3, 0x400

    new-array v0, v3, [I

    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v2, p2

    goto :goto_2
.end method

.method protected error(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    invoke-direct {v0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findElementFromIndex(III)I
    .locals 6

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-eqz v1, :cond_0

    array-length v4, v1

    if-ge p1, v4, :cond_0

    aget-object v2, v1, p1

    if-eqz v2, :cond_0

    array-length v4, v2

    if-ge p2, v4, :cond_0

    aget-object v0, v2, p2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {p0, v0, v4, v5, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findGTE([IIII)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    aget v4, v0, v3

    :goto_0
    return v4

    :cond_0
    const/4 v4, -0x2

    goto :goto_0
.end method

.method protected findGTE([IIII)I
    .locals 6

    move v3, p2

    add-int/lit8 v5, p3, -0x1

    add-int v2, p2, v5

    move v1, v2

    :goto_0
    if-gt v3, v2, :cond_1

    add-int v5, v3, v2

    div-int/lit8 v4, v5, 0x2

    aget v0, p1, v4

    if-le v0, p4, :cond_0

    add-int/lit8 v2, v4, -0x1

    goto :goto_0

    :cond_0
    if-ge v0, p4, :cond_2

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_1
    if-gt v3, v1, :cond_3

    aget v5, p1, v3

    if-le v5, p4, :cond_3

    :goto_1
    move v4, v3

    :cond_2
    return v4

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-gt v0, v2, :cond_2

    add-int v4, v0, v2

    div-int/lit8 v1, v4, 0x2

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    sub-int v3, p2, v4

    if-nez v3, :cond_0

    move v4, v1

    :goto_1
    return v4

    :cond_0
    if-gez v3, :cond_1

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    move v1, v0

    :cond_3
    rsub-int/lit8 v4, v1, -0x1

    goto :goto_1
.end method

.method protected findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, -0x1

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, v8, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I

    move-result v6

    if-ltz v6, :cond_1

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    if-eq v6, v10, :cond_0

    rsub-int/lit8 v6, v6, -0x1

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v8, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    if-nez v6, :cond_6

    if-ge v1, v0, :cond_6

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_3

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    if-eq v2, v10, :cond_2

    move v5, v2

    :goto_1
    if-ne v1, v5, :cond_6

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    if-ge v1, v0, :cond_7

    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    if-lt v1, v0, :cond_5

    :cond_6
    :goto_2
    if-ltz v6, :cond_0

    if-lez v0, :cond_0

    if-ne v1, v0, :cond_4

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_0

    :cond_7
    if-lez v6, :cond_0

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v8, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_2
.end method

.method public abstract getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_0
.end method

.method public getDocument()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getDocumentRoot(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v0

    return v0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
.end method

.method public abstract getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getElementById(Ljava/lang/String;)I
.end method

.method public getExpandedTypeID(I)I
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    goto :goto_0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getFirstAttribute(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstAttributeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    return v1
.end method

.method protected getFirstAttributeIdentity(I)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v1, p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v1, p1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v2, 0xd

    if-eq v2, v0, :cond_0

    goto :goto_0
.end method

.method public getFirstChild(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    return v2
.end method

.method public getFirstNamespaceNode(IZ)I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v4

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    if-ne v4, v5, :cond_0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result v0

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_4

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    if-eq v4, v2, :cond_3

    goto :goto_0
.end method

.method public getLastChild(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    const/4 v2, -0x1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v2, v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v3

    return v3
.end method

.method public getLevel(I)S
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    return v1
.end method

.method public abstract getLocalName(I)Ljava/lang/String;
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceType(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v2

    return v2
.end method

.method public abstract getNamespaceURI(I)Ljava/lang/String;
.end method

.method public getNextAttribute(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextAttributeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getNextAttributeIdentity(I)I
    .locals 3

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v1, p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :goto_0
    return p1

    :cond_1
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    :cond_2
    move p1, v1

    goto :goto_0
.end method

.method public getNextNamespaceNode(IIZ)I
    .locals 6

    const/4 v4, -0x1

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    if-lez v0, :cond_0

    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v5

    if-eq v0, v5, :cond_0

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result v1

    if-eq v4, v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    goto :goto_0
.end method

.method protected abstract getNextNodeIdentity(I)I
.end method

.method public getNextSibling(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    goto :goto_0
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .locals 1

    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    return-object v0
.end method

.method public getNodeHandle(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    return v0
.end method

.method public getNodeIdent(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    return v0
.end method

.method public abstract getNodeName(I)Ljava/lang/String;
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public getNodeType(I)S
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v0

    goto :goto_0
.end method

.method public abstract getNodeValue(I)Ljava/lang/String;
.end method

.method protected abstract getNumberOfNodes()I
.end method

.method public getOwnerDocument(I)I
    .locals 2

    const/16 v0, 0x9

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result v0

    goto :goto_0
.end method

.method public getParent(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public abstract getPrefix(I)Ljava/lang/String;
.end method

.method public getPreviousSibling(I)I
    .locals 5

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    const/4 v3, -0x1

    :goto_1
    if-eq v0, v1, :cond_2

    move v3, v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    goto :goto_0
.end method

.method protected getShouldStripWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    return v0
.end method

.method public abstract getStringValue(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public getStringValueChunk(II[I)[C
    .locals 2

    const/4 v1, 0x0

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    return-object v1
.end method

.method public getStringValueChunkCount(I)I
    .locals 2

    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected getTypedAttribute(II)I
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/16 v3, 0xd

    if-eq v3, v1, :cond_0

    goto :goto_0
.end method

.method public getTypedFirstChild(II)I
    .locals 5

    const/16 v4, 0xe

    const/4 v2, -0x1

    if-ge p2, v4, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v1

    :goto_0
    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    if-lt v0, v4, :cond_2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v3

    if-ne v3, p2, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    :cond_1
    :goto_1
    return v2

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v1

    :goto_2
    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    if-ne v3, p2, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    goto :goto_2
.end method

.method public getTypedNextSibling(II)I
    .locals 4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v3

    if-ne v3, p2, :cond_2

    :cond_3
    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    goto :goto_0
.end method

.method public abstract getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public hasChildNodes(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected indexNode(II)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v3

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->ensureSizeOfIndex(II)V

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object v5, v5, v3

    aget-object v1, v5, v2

    aget v5, v1, v6

    aput p2, v1, v5

    aget v5, v1, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v6

    :cond_0
    return-void
.end method

.method public abstract isAttributeSpecified(I)Z
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNodeAfter(II)Z
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    if-gt v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final makeNodeHandle(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, p1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final makeNodeIdentity(I)I
    .locals 6

    const v5, 0xffff

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz v3, :cond_2

    ushr-int/lit8 v1, p1, 0x10

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget v2, v2, v1

    and-int v3, p1, v5

    or-int/2addr v2, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/high16 v4, -0x1

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x10

    and-int v3, p1, v5

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    :cond_0
    return-void
.end method

.method protected abstract nextNode()Z
.end method

.method protected popShouldStripWhitespace()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->popAndTop()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    :cond_0
    return-void
.end method

.method protected pushShouldStripWhitespace(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    :cond_0
    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected setShouldStripWhitespace(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->setTop(Z)V

    :cond_0
    return-void
.end method

.method public supportsPreStripping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
