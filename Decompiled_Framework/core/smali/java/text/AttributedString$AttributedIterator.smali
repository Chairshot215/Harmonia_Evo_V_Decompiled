.class Ljava/text/AttributedString$AttributedIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributedIterator"
.end annotation


# instance fields
.field private attrString:Ljava/text/AttributedString;

.field private attributesAllowed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private begin:I

.field private end:I

.field private offset:I


# direct methods
.method constructor <init>(Ljava/text/AttributedString;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iget-object v0, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    return-void
.end method

.method constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_0

    iget-object v2, p1, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p4, v2, :cond_0

    if-le p3, p4, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iput p4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iput p3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iput-object p1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    if-eqz p2, :cond_3

    new-instance v1, Ljava/util/HashSet;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    array-length v0, p2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    :cond_3
    return-void
.end method

.method private currentValue(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_0

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_0

    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method private inRange(Ljava/text/AttributedString$Range;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/text/Annotation;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Ljava/text/AttributedString$Range;->start:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v1, v2, :cond_2

    iget v1, p1, Ljava/text/AttributedString$Range;->start:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Ljava/text/AttributedString$Range;->end:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v1, v2, :cond_2

    iget v1, p1, Ljava/text/AttributedString$Range;->end:I

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-le v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inRange(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v4, v5, :cond_3

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v4, v5, :cond_3

    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/text/Annotation;

    if-eqz v4, :cond_1

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v4, v5, :cond_2

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-gt v4, v5, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-le v4, v5, :cond_0

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-gt v4, v5, :cond_0

    iget-object v4, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    instance-of v4, v4, Ljava/text/Annotation;

    if-eqz v4, :cond_4

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt v4, v5, :cond_2

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    iget v5, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ge v4, v5, :cond_2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method private runLimit(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    iget v3, v1, Ljava/text/AttributedString$Range;->end:I

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-gt v3, v4, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_2

    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    goto :goto_1

    :cond_2
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_0

    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    goto :goto_0
.end method

.method private runStart(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;)I"
        }
    .end annotation

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$Range;

    iget v3, v1, Ljava/text/AttributedString$Range;->start:I

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-lt v3, v4, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->end:I

    if-ge v3, v4, :cond_2

    invoke-direct {p0, v1}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/text/AttributedString$Range;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, v1, Ljava/text/AttributedString$Range;->start:I

    goto :goto_1

    :cond_2
    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v4, v1, Ljava/text/AttributedString$Range;->start:I

    if-lt v3, v4, :cond_0

    iget v2, v1, Ljava/text/AttributedString$Range;->end:I

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedString$AttributedIterator;

    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, v0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public current()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public first()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-nez v4, :cond_1

    iget v4, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iget-object v5, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-nez v4, :cond_1

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    :cond_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Ljava/text/AttributedString$AttributedIterator;->inRange(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v4, v4, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Ljava/text/AttributedString$AttributedIterator;->currentValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getBeginIndex()I
    .locals 1

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    return v0
.end method

.method public getRunLimit()I
    .locals 1

    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 2

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runLimit(Ljava/util/List;)I

    move-result v1

    goto :goto_0
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    iget v2, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v3

    if-ge v3, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getRunStart()I
    .locals 1

    invoke-virtual {p0}, Ljava/text/AttributedString$AttributedIterator;->getAllAttributeKeys()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 2

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attributesAllowed:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->runStart(Ljava/util/List;)I

    move-result v1

    goto :goto_0
.end method

.method public getRunStart(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    iget v3, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-virtual {p0, v0}, Ljava/text/AttributedString$AttributedIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    if-le v2, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_1
    return v3
.end method

.method public last()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public next()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    iput v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public previous()C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-ne v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public setIndex(I)C
    .locals 2

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->begin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v0, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->end:I

    if-ne v0, v1, :cond_2

    const v0, 0xffff

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Ljava/text/AttributedString$AttributedIterator;->attrString:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    iget v1, p0, Ljava/text/AttributedString$AttributedIterator;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method
