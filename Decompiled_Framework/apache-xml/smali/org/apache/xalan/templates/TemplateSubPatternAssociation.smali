.class Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
.super Ljava/lang/Object;
.source "TemplateSubPatternAssociation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x7b8c69ad0478a9f6L


# instance fields
.field private m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_pattern:Ljava/lang/String;

.field m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

.field private m_targetString:Ljava/lang/String;

.field private m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_wild:Z


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iput-object p3, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v0}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_wild:Z

    return-void
.end method

.method private matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z
    .locals 1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object v0
.end method

.method public getDocOrderPos()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    move-result v0

    return v0
.end method

.method public final getImportLevel()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    return v0
.end method

.method public final getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object v0
.end method

.method public final getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getStepPattern()Lorg/apache/xpath/patterns/StepPattern;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public final getTargetString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public final isWild()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_wild:Z

    return v0
.end method

.method matchMode(Lorg/apache/xml/utils/QName;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplate;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z

    move-result v0

    return v0
.end method

.method public matches(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v0

    const-wide/high16 v2, -0x10

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplate;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method public setTargetString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    return-void
.end method
