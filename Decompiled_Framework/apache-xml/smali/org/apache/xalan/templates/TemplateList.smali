.class public Lorg/apache/xalan/templates/TemplateList;
.super Ljava/lang/Object;
.source "TemplateList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/TemplateList$1;,
        Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x508acbed134bd097L


# instance fields
.field private m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_namedTemplates:Ljava/util/Hashtable;

.field private m_patternTable:Ljava/util/Hashtable;

.field private m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x59

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object v0
.end method

.method private addObjectIfNotFound(Ljava/lang/Object;Ljava/util/Vector;)V
    .locals 4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    .locals 0

    return-void
.end method

.method private getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object v0
.end method

.method private getNamedTemplates()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object v0
.end method

.method private getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplate;->getPriority()D

    move-result-wide v1

    const-wide/high16 v3, -0x10

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getStepPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/xpath/patterns/NodeTest;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/apache/xpath/patterns/NodeTest;

    invoke-virtual {v0}, Lorg/apache/xpath/patterns/NodeTest;->getDefaultScore()D

    move-result-wide v1

    :cond_0
    return-wide v1
.end method

.method private insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 11

    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v6

    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v0

    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    if-eqz v5, :cond_1

    if-ne v3, p1, :cond_a

    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v8

    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-le v1, v10, :cond_5

    const/4 v2, 0x1

    :goto_1
    if-eqz p3, :cond_c

    if-eqz v2, :cond_b

    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setTargetString(Ljava/lang/String;)V

    invoke-direct {p0, v4, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    :goto_2
    return-object p2

    :cond_2
    invoke-direct {p0, v5}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v8

    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-gt v1, v10, :cond_0

    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-ge v1, v10, :cond_3

    move-object v3, v5

    goto :goto_0

    :cond_3
    cmpl-double v10, v6, v8

    if-gtz v10, :cond_0

    cmpg-double v10, v6, v8

    if-gez v10, :cond_4

    move-object v3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v10

    if-ge v0, v10, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-ge v1, v10, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    cmpl-double v10, v6, v8

    if-lez v10, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    cmpg-double v10, v6, v8

    if-gez v10, :cond_8

    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v10

    if-lt v0, v10, :cond_9

    const/4 v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    move-object p2, p1

    goto :goto_2

    :cond_c
    if-eqz v2, :cond_f

    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_2

    :cond_e
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    goto :goto_2

    :cond_f
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    move-object p2, p1

    goto :goto_2
.end method

.method private insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-direct {v0, p2, p1, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;-><init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_0
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lorg/apache/xalan/templates/TemplateList;->getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4, v0}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v1, v0, v5}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_1
.end method

.method private putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .locals 1

    const-string v0, "#text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :cond_2
    const-string v0, "#comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0
.end method

.method private setNamedTemplates(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5

    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_0
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method dumpAssociationTables()V
    .locals 5

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_1
    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n....."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "wild card list: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n....."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 4

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :cond_0
    return-object v0

    :pswitch_1
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p7}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    :cond_0
    const/4 v3, -0x1

    if-le p4, v3, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v3

    if-le v3, p4, :cond_3

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    :cond_2
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    sub-int v4, p4, p5

    if-gt v3, v4, :cond_4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    move-object v1, v2

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    iget-object v3, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p6, :cond_5

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p5}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    iget-object v2, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p4, :cond_1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    :goto_0
    return-object v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2
.end method

.method public getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_1
    return-object v1

    :pswitch_1
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p3}, Lorg/apache/xml/dtm/DTM;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    :cond_1
    const/4 v3, -0x1

    if-le p5, v3, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v3

    if-le v3, p5, :cond_3

    :cond_2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    move-object v1, v2

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    iget-object v3, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p1, p2, p7, p3}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, p4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p6, :cond_4

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getWalker()Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    .locals 2

    new-instance v0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList$1;)V

    return-object v0
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    if-nez v9, :cond_0

    if-nez v4, :cond_0

    const-string v9, "ER_NEED_NAME_OR_MATCH_ATTRIB"

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, "xsl:template"

    aput-object v11, v10, v12

    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v1, :cond_3

    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    instance-of v9, v3, Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v9, :cond_5

    check-cast v3, Lorg/apache/xpath/patterns/StepPattern;

    invoke-direct {p0, v3, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v6

    if-le v6, v0, :cond_4

    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-ne v6, v0, :cond_1

    const-string v9, "ER_DUPLICATE_NAMED_TEMPLATE"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    instance-of v9, v3, Lorg/apache/xpath/patterns/UnionPattern;

    if-eqz v9, :cond_2

    move-object v8, v3

    check-cast v8, Lorg/apache/xpath/patterns/UnionPattern;

    invoke-virtual {v8}, Lorg/apache/xpath/patterns/UnionPattern;->getPatterns()[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v7

    array-length v5, v7

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v9, v7, v2

    invoke-direct {p0, v9, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
