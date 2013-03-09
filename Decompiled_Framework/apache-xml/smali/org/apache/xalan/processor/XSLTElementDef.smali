.class public Lorg/apache/xalan/processor/XSLTElementDef;
.super Ljava/lang/Object;
.source "XSLTElementDef.java"


# static fields
.field static final T_ANY:I = 0x3

.field static final T_ELEMENT:I = 0x1

.field static final T_PCDATA:I = 0x2


# instance fields
.field private m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

.field private m_classObject:Ljava/lang/Class;

.field private m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

.field private m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

.field private m_has_required:Z

.field m_isOrdered:Z

.field private m_lastOrder:I

.field private m_multiAllowed:Z

.field private m_name:Ljava/lang/String;

.field private m_nameAlias:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_order:I

.field private m_required:Z

.field m_requiredFound:Ljava/util/Hashtable;

.field private m_type:I


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lorg/apache/xalan/processor/XSLTElementProcessor;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    iput p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    invoke-virtual {p0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .locals 8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    if-eqz p2, :cond_1

    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.apache.org/xalan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://xml.apache.org/xslt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p2, p3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    if-eqz p4, :cond_1

    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p2, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    iput p9, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V
    .locals 9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    if-eqz p2, :cond_1

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://xml.apache.org/xalan"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http://xml.apache.org/xslt"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p2, p3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    if-eqz p4, :cond_1

    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p2, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V
    .locals 12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V

    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    iput p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    iput-boolean p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    iput p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    iput-boolean p13, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    iput-boolean p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    return-void
.end method

.method private QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equalsMayBeNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v2

    :goto_0
    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_2

    :goto_2
    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2
.end method


# virtual methods
.method build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .locals 7

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    iput-object p5, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    invoke-virtual {p0, p6}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    iput-object p7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->hasRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xsl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p1, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v6, :cond_1

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    move-object v2, v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string v7, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, v7}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    return-object v0
.end method

.method getClassObject()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    return-object v0
.end method

.method public getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object v0
.end method

.method public getElements()[Lorg/apache/xalan/processor/XSLTElementDef;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    return-object v0
.end method

.method getLastOrder()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    return v0
.end method

.method getMultiAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method getNameAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method getOrder()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    return v0
.end method

.method getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    iget-object v8, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    array-length v5, v8

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v0, v8, v2

    iget-object v8, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, v8}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v1, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {v0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lorg/apache/xalan/processor/XSLTElementDef;->setRequiredFound(Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    move-result v6

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v4

    iget-object v1, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->isOrdered()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getLastOrder()I

    move-result v3

    if-le v6, v3, :cond_7

    invoke-virtual {p0, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    :cond_6
    move-object v7, v1

    goto :goto_0

    :cond_7
    if-ne v6, v3, :cond_8

    if-eqz v4, :cond_0

    :cond_8
    if-ge v6, v3, :cond_6

    if-lez v6, :cond_6

    goto :goto_0
.end method

.method getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    array-length v2, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v0, v4, v1

    iget-object v4, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v3, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    return v0
.end method

.method getRequiredElem()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const-string v2, ""

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method getRequiredFound()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    return v0
.end method

.method hasRequired()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    return v0
.end method

.method isOrdered()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    return v0
.end method

.method public setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setElemDef(Lorg/apache/xalan/processor/XSLTElementDef;)V

    :cond_0
    return-void
.end method

.method setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    return-void
.end method

.method setLastOrder(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    return-void
.end method

.method setRequiredFound(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    return-void
.end method
