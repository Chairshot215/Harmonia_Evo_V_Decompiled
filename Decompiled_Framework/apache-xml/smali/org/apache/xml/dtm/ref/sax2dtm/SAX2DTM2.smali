.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString; = null

.field protected static final TEXT_LENGTH_BITS:I = 0xa

.field protected static final TEXT_LENGTH_MAX:I = 0x3ff

.field protected static final TEXT_OFFSET_BITS:I = 0x15

.field protected static final TEXT_OFFSET_MAX:I = 0x1fffff


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildIdIndex:Z

.field private m_exptype_map:[[I

.field private m_exptype_map0:[I

.field protected m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_firstch_map:[[I

.field private m_firstch_map0:[I

.field private m_maxNodeIndex:I

.field private m_nextsib_map:[[I

.field private m_nextsib_map0:[I

.field private m_parent_map:[[I

.field private m_parent_map0:[I

.field private m_valueIndex:I

.field protected m_values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .locals 11

    const/16 v7, 0x200

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V
    .locals 12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    const/4 v11, 0x0

    :goto_0
    ushr-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, v11

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    iput v11, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x20

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/util/Vector;-><init>(II)V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    const/high16 v1, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    return-void
.end method


# virtual methods
.method public final _exptype(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public final _exptype2(I)I
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final _exptype2Type(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final _firstch2(I)I
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final _nextsib2(I)I
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final _parent2(I)I
    .locals 2

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final _type2(I)I
    .locals 4

    const/4 v1, -0x1

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget v0, v2, p1

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v3, p1, v3

    aget-object v2, v2, v3

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v3, p1

    aget v0, v2, v3

    goto :goto_0
.end method

.method protected final addNode(IIIIIZ)I
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNewDTMID(I)V

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

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
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->setSourceLocation()V

    :cond_2
    sparse-switch p1, :sswitch_data_0

    if-eq v3, p4, :cond_4

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    :cond_3
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->declareNamespaceInContext(II)V

    goto :goto_0

    :cond_4
    if-eq v3, p3, :cond_3

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method protected final charactersFlush()V
    .locals 10

    const/4 v6, 0x0

    const/4 v2, 0x3

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    sub-int v9, v0, v1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getShouldStripWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1, v9}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v8

    :cond_0
    if-eqz v8, :cond_3

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    :cond_2
    return-void

    :cond_3
    if-lez v9, :cond_1

    const/16 v0, 0x3ff

    if-gt v9, v0, :cond_4

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const v1, 0x1fffff

    if-gt v0, v1, :cond_4

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    shl-int/lit8 v0, v0, 0xa

    add-int v5, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    neg-int v5, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_0
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
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    goto :goto_0
.end method

.method protected final copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v12, p2

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v2

    move v11, v2

    if-gtz v2, :cond_0

    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v13, v2

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v13, v2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v11

    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v12, v8}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x3a

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v10}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v7, :cond_2

    move-object v5, v9

    :goto_0
    iget-object v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v12, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v5, v4

    goto :goto_0
.end method

.method protected final copyAttributes(ILorg/apache/xml/serializer/SerializationHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttributeIdentity(I)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextAttributeIdentity(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final copyElement(IILorg/apache/xml/serializer/SerializationHandler;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v7, p2

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p3, v1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p3, v1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    const-string v7, ""

    invoke-interface {p3, v7, v6}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-gez v5, :cond_2

    neg-int v5, v5

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    :cond_2
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v7, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {p3, v2, v6}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected final copyNS(ILorg/apache/xml/serializer/SerializationHandler;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-ne v7, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-lt v7, v8, :cond_0

    invoke-virtual {v5, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    :goto_0
    const/4 v6, 0x1

    :goto_1
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_2
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v2

    goto :goto_1
.end method

.method protected final copyTextNode(ILorg/apache/xml/serializer/SerializationHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v2, v0, 0xa

    and-int/lit16 v3, v0, 0x3ff

    invoke-virtual {v1, p2, v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    invoke-virtual {v1, p2, v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0
.end method

.method public final dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/16 v7, 0x9

    if-ne v6, v7, :cond_a

    :cond_2
    move v4, v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v7, v1, :cond_0

    const/4 v3, -0x1

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :cond_4
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_7

    const/4 v7, -0x1

    if-ne v7, v3, :cond_5

    ushr-int/lit8 v3, v0, 0xa

    :cond_5
    and-int/lit16 v7, v0, 0x3ff

    add-int/2addr v2, v7

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v7

    if-ge v7, v4, :cond_3

    if-lez v2, :cond_0

    if-eqz p3, :cond_9

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, p2, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_0

    :cond_7
    const/4 v7, -0x1

    if-ne v7, v3, :cond_8

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    :cond_8
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, p2, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0

    :cond_a
    const/4 v7, 0x3

    if-eq v7, v6, :cond_b

    const/4 v7, 0x4

    if-ne v7, v6, :cond_f

    :cond_b
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_d

    if-eqz p3, :cond_c

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_0

    :cond_c
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_0

    :cond_d
    if-eqz p3, :cond_e

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto/16 :goto_0

    :cond_e
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-gez v0, :cond_10

    neg-int v0, v0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_10
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p3, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v8, v9, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-interface {p2, v7, v8, v9}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->endDocument()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->popShouldStripWhitespace()V

    return-void
.end method

.method public final getExpandedTypeID2(I)I
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget v1, v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v2, v0

    aget v1, v1, v2

    goto :goto_0
.end method

.method public final getFirstAttribute(I)I
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/16 v3, 0xd

    if-eq v3, v1, :cond_2

    goto :goto_0
.end method

.method protected getFirstAttributeIdentity(I)I
    .locals 3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    const/16 v2, 0xd

    if-eq v2, v0, :cond_2

    goto :goto_0
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    :cond_0
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype(I)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getNextAttributeIdentity(I)I
    .locals 2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :goto_0
    return p1

    :cond_1
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0
.end method

.method protected final getNextNamespaceNode2(I)I
    .locals 2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :goto_0
    return p1

    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v2, v7, v1

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v6

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    const-string v3, "xmlns"

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v7, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFixedNames(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    if-gez v5, :cond_6

    neg-int v5, v5

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    :cond_6
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v7, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public final getNodeNameX(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v6, v0

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v2, v5, v1

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    if-gez v4, :cond_3

    neg-int v4, v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    :cond_3
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v4, v0, 0xa

    and-int/lit16 v5, v0, 0x3ff

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-eq v3, v2, :cond_3

    const/16 v3, 0xb

    if-eq v3, v2, :cond_3

    const/16 v3, 0x9

    if-ne v3, v2, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-gez v0, :cond_5

    neg-int v0, v0

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_5
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 6

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v3, v1, 0xa

    and-int/lit16 v4, v1, 0x3ff

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v5, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    if-ne v1, v8, :cond_0

    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_b

    :cond_1
    move v4, v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    if-eq v8, v1, :cond_a

    const/4 v3, -0x1

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    if-eq v5, v9, :cond_3

    if-ne v5, v10, :cond_5

    :cond_3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_6

    if-ne v8, v3, :cond_4

    ushr-int/lit8 v3, v0, 0xa

    :cond_4
    and-int/lit16 v6, v0, 0x3ff

    add-int/2addr v2, v6

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v6

    if-ge v6, v4, :cond_2

    if-lez v2, :cond_9

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v6, v7, v3, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto :goto_0

    :cond_6
    if-ne v8, v3, :cond_7

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    :cond_7
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_1

    :cond_8
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    goto :goto_0

    :cond_a
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    goto :goto_0

    :cond_b
    if-eq v9, v5, :cond_c

    if-ne v10, v5, :cond_10

    :cond_c
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto/16 :goto_0

    :cond_d
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto/16 :goto_0

    :cond_f
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-gez v0, :cond_11

    neg-int v0, v0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_11
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_12

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto/16 :goto_0

    :cond_12
    new-instance v7, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    goto/16 :goto_0
.end method

.method public final getStringValueX(I)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    if-ne v1, v8, :cond_0

    const-string v6, ""

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_a

    :cond_1
    move v4, v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    if-eq v8, v1, :cond_9

    const/4 v3, -0x1

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    if-eq v5, v9, :cond_3

    if-ne v5, v10, :cond_5

    :cond_3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_6

    if-ne v8, v3, :cond_4

    ushr-int/lit8 v3, v0, 0xa

    :cond_4
    and-int/lit16 v6, v0, 0x3ff

    add-int/2addr v2, v6

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v6

    if-ge v6, v4, :cond_2

    if-lez v2, :cond_8

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v6, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_6
    if-ne v8, v3, :cond_7

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    :cond_7
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_1

    :cond_8
    const-string v6, ""

    goto :goto_0

    :cond_9
    const-string v6, ""

    goto :goto_0

    :cond_a
    if-eq v9, v5, :cond_b

    if-ne v10, v5, :cond_d

    :cond_b
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v7, v0, 0xa

    and-int/lit16 v8, v0, 0x3ff

    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_c
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    if-gez v0, :cond_e

    neg-int v0, v0

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    :cond_e
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected final getTypedAttribute(II)I
    .locals 5

    const/4 v3, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    if-ne v0, p2, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v3

    goto :goto_0

    :cond_3
    const/16 v4, 0xd

    if-eq v4, v2, :cond_2

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    neg-int v5, v7

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

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

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

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

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

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

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->indexNode(II)V

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

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/16 v10, 0xd

    const/4 v13, -0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v11, v5

    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

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

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    const/16 v10, 0xd

    const/4 v13, -0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v11, v5

    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

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

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->declAlreadyDeclared(Ljava/lang/String;)Z

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

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v3, v14, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_9

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

    const/4 v13, -0x1

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move v11, v5

    invoke-virtual/range {v9 .. v15}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    goto :goto_4

    :cond_a
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    if-eqz v3, :cond_7

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

    invoke-virtual {v0, v1, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->setIDAttribute(Ljava/lang/String;I)V

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v3, v4, v0}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v28

    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v3, v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getShouldStripWhitespace()Z

    move-result v25

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->pushShouldStripWhitespace(Z)V

    :cond_c
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

    :cond_d
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v3, v0, :cond_e

    const/16 v25, 0x1

    goto :goto_6

    :cond_e
    const/16 v25, 0x0

    goto :goto_6
.end method
