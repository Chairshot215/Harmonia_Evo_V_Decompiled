.class public abstract Lorg/ccil/cowan/tagsoup/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# static fields
.field public static final F_CDATA:I = 0x2

.field public static final F_NOFORCE:I = 0x4

.field public static final F_RESTART:I = 0x1

.field public static final M_ANY:I = -0x1

.field public static final M_EMPTY:I = 0x0

.field public static final M_PCDATA:I = 0x40000000

.field public static final M_ROOT:I = -0x80000000


# instance fields
.field private theElementTypes:Ljava/util/HashMap;

.field private theEntities:Ljava/util/HashMap;

.field private thePrefix:Ljava/lang/String;

.field private theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

.field private theURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified for unknown element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/ccil/cowan/tagsoup/ElementType;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public elementType(Ljava/lang/String;III)V
    .locals 6

    new-instance v0, Lorg/ccil/cowan/tagsoup/ElementType;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/ccil/cowan/tagsoup/ElementType;-><init>(Ljava/lang/String;IIILorg/ccil/cowan/tagsoup/Schema;)V

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, -0x8000

    if-ne p3, v1, :cond_0

    iput-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    :cond_0
    return-void
.end method

.method public entity(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 2

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theElementTypes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ccil/cowan/tagsoup/ElementType;

    check-cast v0, Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public getEntity(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theEntities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    return-object v0
.end method

.method public parent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lorg/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v0, v1}, Lorg/ccil/cowan/tagsoup/ElementType;->setParent(Lorg/ccil/cowan/tagsoup/ElementType;)V

    return-void
.end method

.method public rootElementType()Lorg/ccil/cowan/tagsoup/ElementType;
    .locals 1

    iget-object v0, p0, Lorg/ccil/cowan/tagsoup/Schema;->theRoot:Lorg/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->thePrefix:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Schema;->theURI:Ljava/lang/String;

    return-void
.end method
