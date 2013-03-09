.class final Lorg/apache/xml/utils/Context2;
.super Ljava/lang/Object;
.source "NamespaceSupport2.java"


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;


# instance fields
.field attributeNameTable:Ljava/util/Hashtable;

.field private child:Lorg/apache/xml/utils/Context2;

.field private declarations:Ljava/util/Vector;

.field defaultNS:Ljava/lang/String;

.field elementNameTable:Ljava/util/Hashtable;

.field private parent:Lorg/apache/xml/utils/Context2;

.field prefixTable:Ljava/util/Hashtable;

.field private tablesDirty:Z

.field uriTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method constructor <init>(Lorg/apache/xml/utils/Context2;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    goto :goto_0
.end method

.method private copyTables()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    return-void
.end method


# virtual methods
.method declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/utils/Context2;->copyTables()V

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-object p2, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method getChild()Lorg/apache/xml/utils/Context2;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    return-object v0
.end method

.method getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method getParent()Lorg/apache/xml/utils/Context2;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    return-object v0
.end method

.method getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method getPrefixes()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_1

    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    :cond_0
    iget-object v4, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    :goto_0
    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v6, v2

    :goto_1
    return-object v6

    :cond_1
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    :cond_2
    iget-object v4, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_6

    if-nez p2, :cond_4

    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    if-nez v6, :cond_5

    :cond_4
    const-string v6, ""

    aput-object v6, v2, v7

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    aget-object v6, v2, v8

    aput-object v6, v2, v9

    :goto_3
    aget-object v6, v2, v9

    invoke-virtual {v4, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    move-object v6, v2

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    aput-object v6, v2, v7

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v5, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    :goto_4
    if-nez v5, :cond_8

    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_4

    :cond_8
    aput-object v5, v2, v7

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    goto :goto_3
.end method

.method setParent(Lorg/apache/xml/utils/Context2;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    iput-object p0, p1, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    return-void
.end method
