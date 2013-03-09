.class public Lgnu/bytecode/AnnotationEntry;
.super Ljava/lang/Object;
.source "AnnotationEntry.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# instance fields
.field annotationType:Lgnu/bytecode/ClassType;

.field elementsValue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/bytecode/AnnotationEntry;->annotationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .parameter "obj"

    .prologue
    const/4 v9, 0x0

    .line 47
    instance-of v7, p1, Lgnu/bytecode/AnnotationEntry;

    if-nez v7, :cond_0

    move v7, v9

    .line 76
    :goto_0
    return v7

    .line 49
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/AnnotationEntry;

    move-object v4, v0

    .line 50
    .local v4, other:Lgnu/bytecode/AnnotationEntry;
    invoke-virtual {p0}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v9

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v7, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .local v2, it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 56
    .local v5, value1:Ljava/lang/Object;
    iget-object v7, v4, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 57
    .local v6, value2:Ljava/lang/Object;
    if-eq v5, v6, :cond_2

    .line 59
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    move v7, v9

    .line 61
    goto :goto_0

    .line 64
    .end local v2           #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #value1:Ljava/lang/Object;
    .end local v6           #value2:Ljava/lang/Object;
    :cond_4
    iget-object v7, v4, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .restart local v2       #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .restart local v3       #key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 68
    .restart local v6       #value2:Ljava/lang/Object;
    iget-object v7, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 69
    .restart local v5       #value1:Ljava/lang/Object;
    if-eq v5, v6, :cond_5

    .line 71
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_6
    move v7, v9

    .line 73
    goto/16 :goto_0

    .line 76
    .end local v2           #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #value1:Ljava/lang/Object;
    .end local v6           #value2:Ljava/lang/Object;
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public getAnnotationType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lgnu/bytecode/AnnotationEntry;->annotationType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, hash:I
    iget-object v5, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    .local v2, it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 87
    .local v3, khash:I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 88
    .local v4, vhash:I
    mul-int/lit8 v5, v3, 0x7f

    xor-int/2addr v5, v4

    add-int/2addr v0, v5

    .line 89
    goto :goto_0

    .line 90
    .end local v2           #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #khash:I
    .end local v4           #vhash:I
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v3, sbuf:Ljava/lang/StringBuilder;
    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, count:I
    iget-object v4, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    .local v2, it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-lez v0, :cond_0

    .line 103
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v2           #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
