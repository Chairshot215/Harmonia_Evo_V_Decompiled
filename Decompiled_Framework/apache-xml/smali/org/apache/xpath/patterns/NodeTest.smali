.class public Lorg/apache/xpath/patterns/NodeTest;
.super Lorg/apache/xpath/Expression;
.source "NodeTest.java"


# static fields
.field public static final SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber; = null

.field public static final SCORE_NONE:Lorg/apache/xpath/objects/XNumber; = null

.field public static final SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber; = null

.field public static final SCORE_OTHER:Lorg/apache/xpath/objects/XNumber; = null

.field public static final SCORE_QNAME:Lorg/apache/xpath/objects/XNumber; = null

.field public static final SHOW_BYFUNCTION:I = 0x10000

.field public static final SUPPORTS_PRE_STRIPPING:Ljava/lang/String; = "http://xml.apache.org/xpath/features/whitespace-pre-stripping"

.field public static final WILD:Ljava/lang/String; = "*"

.field static final serialVersionUID:J = -0x4f9cee24b2b98886L


# instance fields
.field private m_isTotallyWild:Z

.field protected m_name:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_score:Lorg/apache/xpath/objects/XNumber;

.field protected m_whatToShow:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, -0x4020

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, -0x4030

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, 0x3fe0

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, -0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debugWhatToShow(I)V
    .locals 6

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_0

    const-string v3, "SHOW_ATTRIBUTE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    and-int/lit16 v3, p0, 0x1000

    if-eqz v3, :cond_1

    const-string v3, "SHOW_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v3, p0, 0x8

    if-eqz v3, :cond_2

    const-string v3, "SHOW_CDATA_SECTION"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_3

    const-string v3, "SHOW_COMMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    and-int/lit16 v3, p0, 0x100

    if-eqz v3, :cond_4

    const-string v3, "SHOW_DOCUMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_5

    const-string v3, "SHOW_DOCUMENT_FRAGMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    and-int/lit16 v3, p0, 0x200

    if-eqz v3, :cond_6

    const-string v3, "SHOW_DOCUMENT_TYPE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_7

    const-string v3, "SHOW_ELEMENT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    and-int/lit8 v3, p0, 0x20

    if-eqz v3, :cond_8

    const-string v3, "SHOW_ENTITY"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_8
    and-int/lit8 v3, p0, 0x10

    if-eqz v3, :cond_9

    const-string v3, "SHOW_ENTITY_REFERENCE"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    and-int/lit16 v3, p0, 0x800

    if-eqz v3, :cond_a

    const-string v3, "SHOW_NOTATION"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    and-int/lit8 v3, p0, 0x40

    if-eqz v3, :cond_b

    const-string v3, "SHOW_PROCESSING_INSTRUCTION"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_c

    const-string v3, "SHOW_TEXT"

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_e

    if-lez v0, :cond_d

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_e
    if-nez v1, :cond_f

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "empty whatToShow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static getNodeTypeTest(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    goto :goto_0

    :cond_3
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto :goto_0

    :cond_4
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_5

    const/16 v0, 0xd

    goto :goto_0

    :cond_5
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto :goto_0

    :cond_8
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    goto :goto_0

    :cond_9
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_0

    :cond_a
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    goto :goto_0

    :cond_b
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    const-string v0, "*"

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static final subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "*"

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calcScore()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    const-string v1, "*"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    const-string v1, "*"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/patterns/NodeTest;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/patterns/NodeTest;

    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    iget v3, v0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    iget-boolean v3, v0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v2

    iget v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    :goto_0
    return-object v4

    :cond_0
    iget v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v5, 0x1

    add-int/lit8 v6, v2, -0x1

    shl-int/2addr v5, v6

    and-int v1, v4, v5

    sparse-switch v1, :sswitch_data_0

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_0
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_3
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_4
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_5
    iget-boolean v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez v4, :cond_3

    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_4
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    :goto_0
    return-object v2

    :cond_0
    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v3, 0x1

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v4

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    and-int v0, v2, v3

    sparse-switch v0, :sswitch_data_0

    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_0
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_3
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_4
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :sswitch_5
    iget-boolean v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez v2, :cond_3

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    :cond_4
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    return-void
.end method

.method public getDefaultScore()D
    .locals 2

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNumber;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticScore()Lorg/apache/xpath/objects/XNumber;
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    iget v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    return v0
.end method

.method public initNodeTest(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    return-void
.end method

.method public initNodeTest(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    iput-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    return-void
.end method

.method public setStaticScore(Lorg/apache/xpath/objects/XNumber;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-void
.end method

.method public setWhatToShow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    return-void
.end method
