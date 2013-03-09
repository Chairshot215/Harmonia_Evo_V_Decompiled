.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$AttributedIterator;,
        Ljava/text/AttributedString$Range;
    }
.end annotation


# instance fields
.field attributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;>;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot add attributes to empty string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/text/AttributedString$Range;

    const/4 v4, 0x0

    iget-object v5, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v8

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-le v8, v9, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Invalid substring range"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v8

    if-ge v3, v8, :cond_1

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v8

    const v9, 0xffff

    if-eq v8, v9, :cond_4

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v6

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v5

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v0, v7, v6, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_5
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_1
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    return-void
.end method

.method private constructor <init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/AttributedCharacterIterator;",
            "II",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v6

    if-lt p2, v6, :cond_0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v6

    if-gt p3, v6, :cond_0

    if-le p2, p3, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_1
    if-nez p4, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_4

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    div-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    :goto_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    move-result v6

    if-ge v6, p3, :cond_5

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v4

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    instance-of v6, v5, Ljava/text/Annotation;

    if-eqz v6, :cond_6

    if-lt v4, p2, :cond_6

    if-le v3, p3, :cond_7

    :cond_6
    if-eqz v5, :cond_9

    instance-of v6, v5, Ljava/text/Annotation;

    if-nez v6, :cond_9

    :cond_7
    if-ge v4, p2, :cond_8

    move v4, p2

    :cond_8
    sub-int v7, v4, p2

    if-le v3, p3, :cond_a

    move v6, p3

    :goto_2
    sub-int/2addr v6, p2

    invoke-virtual {p0, v0, v5, v7, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    :cond_9
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    goto :goto_1

    :cond_a
    move v6, v3

    goto :goto_2
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .locals 2

    if-nez p4, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v1, Ljava/text/AttributedString$Range;

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    if-ltz p3, :cond_1

    iget-object v5, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt p4, v5, :cond_1

    if-lt p3, p4, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_2
    if-nez p2, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedString$Range;

    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-gt p4, v5, :cond_8

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_7
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-lt p3, v5, :cond_9

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-ne p3, v5, :cond_6

    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_9
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    new-instance v1, Ljava/text/AttributedString$Range;

    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v1, v5, p3, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    new-instance v2, Ljava/text/AttributedString$Range;

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    :cond_a
    :goto_1
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-le p4, v5, :cond_c

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/AttributedString$Range;

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    if-gt p4, v5, :cond_f

    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-gt p4, v5, :cond_b

    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    if-ne p4, v5, :cond_a

    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_b
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    new-instance v2, Ljava/text/AttributedString$Range;

    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    :cond_c
    iget-object v5, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    if-ge v6, p3, :cond_d

    iget p3, v1, Ljava/text/AttributedString$Range;->start:I

    :cond_d
    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-le v6, p4, :cond_e

    iget p4, v2, Ljava/text/AttributedString$Range;->end:I

    :cond_e
    iget-object v6, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_10
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    if-ge v6, p3, :cond_11

    iget p3, v1, Ljava/text/AttributedString$Range;->start:I

    :cond_11
    iget-object v6, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_3

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_13

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_13
    new-instance v5, Ljava/text/AttributedString$Range;

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-le v6, p4, :cond_14

    iget p4, v2, Ljava/text/AttributedString$Range;->end:I

    :cond_14
    iget-object v6, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_16

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :cond_16
    new-instance v5, Ljava/text/AttributedString$Range;

    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    if-ge v5, v6, :cond_3

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 1

    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    invoke-direct {v0, p0}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;)V

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .locals 3

    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 1

    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    return-object v0
.end method
