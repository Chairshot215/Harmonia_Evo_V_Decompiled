.class Lorg/apache/xalan/transformer/NodeSortKey;
.super Ljava/lang/Object;
.source "NodeSortKey.java"


# instance fields
.field m_caseOrderUpper:Z

.field m_col:Ljava/text/Collator;

.field m_descending:Z

.field m_locale:Ljava/util/Locale;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

.field m_selectPat:Lorg/apache/xpath/XPath;

.field m_treatAsNumbers:Z


# direct methods
.method constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xpath/XPath;ZZLjava/lang/String;ZLorg/apache/xml/utils/PrefixResolver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    iput-object p7, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    iput-boolean p3, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    iput-boolean p4, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    iput-boolean p6, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    if-eqz p5, :cond_2

    iget-boolean v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_processor:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WG_CANNOT_FIND_COLLATOR"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/transformer/NodeSortKey;->m_locale:Ljava/util/Locale;

    goto :goto_0
.end method
