.class public Lorg/apache/xalan/transformer/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.java"


# instance fields
.field private transient m_key_tables:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v10, p5

    check-cast v10, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    :cond_0
    :goto_0
    if-nez v9, :cond_1

    if-nez v6, :cond_1

    new-instance v0, Lorg/apache/xalan/transformer/KeyTable;

    invoke-virtual {v10}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getKeysComposed()Ljava/util/Vector;

    move-result-object v4

    move v1, p2

    move-object/from16 v2, p5

    move-object v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/xalan/transformer/KeyTable;-><init>(ILorg/apache/xml/utils/PrefixResolver;Lorg/apache/xml/utils/QName;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    move-result v1

    if-ne p2, v1, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, p3, p4}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v9

    :cond_1
    return-object v9

    :cond_2
    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    iget-object v1, p0, Lorg/apache/xalan/transformer/KeyManager;->m_key_tables:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/KeyTable;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyTable;->getKeyTableName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/KeyTable;->getDocKey()I

    move-result v1

    if-ne p2, v1, :cond_3

    invoke-virtual {v0, p3, p4}, Lorg/apache/xalan/transformer/KeyTable;->getNodeSetDTMByKey(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
