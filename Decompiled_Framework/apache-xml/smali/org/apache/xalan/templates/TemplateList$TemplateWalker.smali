.class public Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
.super Ljava/lang/Object;
.source "TemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/TemplateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TemplateWalker"
.end annotation


# instance fields
.field private curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private hashIterator:Ljava/util/Enumeration;

.field private inPatterns:Z

.field private m_compilerCache:Ljava/util/Hashtable;

.field final synthetic this$0:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method private constructor <init>(Lorg/apache/xalan/templates/TemplateList;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    #getter for: Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;
    invoke-static {p1}, Lorg/apache/xalan/templates/TemplateList;->access$100(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;)V

    return-void
.end method


# virtual methods
.method public next()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :cond_1
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    :cond_3
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    :goto_1
    return-object v2

    :cond_4
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    #getter for: Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;
    invoke-static {v2}, Lorg/apache/xalan/templates/TemplateList;->access$200(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method
