.class public Ltwitter4j/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/Annotation;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a6b432bcab3c752L


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    .line 46
    invoke-virtual {p0, p1}, Ltwitter4j/Annotation;->setType(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Ltwitter4j/Annotation;->setAttributes(Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    .line 57
    invoke-virtual {p0, p1}, Ltwitter4j/Annotation;->setType(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Ltwitter4j/Annotation;->setAttributes(Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .parameter "jsonObject"

    .prologue
    const/4 v9, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v9, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    .line 38
    iput-object v9, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    .line 68
    const/4 v6, 0x0

    .line 69
    .local v6, typ:Ljava/lang/String;
    const/4 v0, 0x0

    .line 70
    .local v0, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 71
    .local v2, it:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #typ:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 74
    .restart local v6       #typ:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 75
    iput-object v9, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Ltwitter4j/Annotation;->setType(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v0}, Ltwitter4j/Annotation;->setAttributes(Ljava/util/Map;)V

    .line 95
    return-void

    .line 78
    :cond_1
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 79
    .local v3, jo:Lorg/json/JSONObject;
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .end local v0           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 83
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, value:Ljava/lang/String;
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 86
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 88
    .end local v1           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #jo:Lorg/json/JSONObject;
    .restart local v0       #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, jsone:Lorg/json/JSONException;
    :goto_2
    const/4 v6, 0x0

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .end local v0           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #jsone:Lorg/json/JSONException;
    .restart local v1       #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #jo:Lorg/json/JSONObject;
    :cond_2
    move-object v0, v1

    .line 90
    .end local v1           #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0       #attrs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 86
    .end local v3           #jo:Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private sortedNames()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 310
    .local v0, names:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ltwitter4j/Annotation;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 311
    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 163
    iget-object v0, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method asJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    .local v0, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    iget-object v1, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    iget-object v2, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method asParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Ltwitter4j/Annotation;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Annotation;
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Ltwitter4j/Annotation;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object p0
.end method

.method public attributes(Ljava/util/Map;)Ltwitter4j/Annotation;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ltwitter4j/Annotation;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ltwitter4j/Annotation;->setAttributes(Ljava/util/Map;)V

    .line 153
    return-object p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ltwitter4j/Annotation;

    .end local p1
    invoke-virtual {p0, p1}, Ltwitter4j/Annotation;->compareTo(Ltwitter4j/Annotation;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Annotation;)I
    .locals 10
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 224
    if-nez p1, :cond_1

    .line 225
    const/4 v3, 0x1

    .line 256
    :cond_0
    :goto_0
    return v3

    .line 227
    :cond_1
    if-ne p0, p1, :cond_2

    move v3, v7

    .line 228
    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Ltwitter4j/Annotation;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ltwitter4j/Annotation;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 231
    .local v3, result:I
    if-nez v3, :cond_0

    .line 234
    invoke-virtual {p0}, Ltwitter4j/Annotation;->size()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Ltwitter4j/Annotation;->size()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    .line 235
    if-nez v3, :cond_0

    .line 239
    invoke-direct {p0}, Ltwitter4j/Annotation;->sortedNames()Ljava/util/SortedSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 240
    .local v5, thisNamesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {p1}, Ltwitter4j/Annotation;->sortedNames()Ljava/util/SortedSet;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    .local v1, otherNamesIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 243
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    .local v4, thisName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    .local v0, otherName:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 246
    if-nez v3, :cond_0

    .line 249
    invoke-virtual {p0}, Ltwitter4j/Annotation;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 250
    .local v6, thisValue:Ljava/lang/String;
    invoke-virtual {p1}, Ltwitter4j/Annotation;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, otherValue:Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 252
    if-eqz v3, :cond_3

    goto :goto_0

    .end local v0           #otherName:Ljava/lang/String;
    .end local v2           #otherValue:Ljava/lang/String;
    .end local v4           #thisName:Ljava/lang/String;
    .end local v6           #thisValue:Ljava/lang/String;
    :cond_4
    move v3, v7

    .line 256
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    if-nez p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v2

    .line 267
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 268
    goto :goto_0

    .line 270
    :cond_2
    instance-of v3, p1, Ltwitter4j/Annotation;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 273
    check-cast v0, Ltwitter4j/Annotation;

    .line 276
    .local v0, other:Ltwitter4j/Annotation;
    invoke-virtual {p0}, Ltwitter4j/Annotation;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/Annotation;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ltwitter4j/Annotation;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/Annotation;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedHashMap;

    .end local p1           #attributes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    iput-object p1, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    .line 142
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 111
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public size()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x27

    .line 290
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Annotation{type=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, sb:Ljava/lang/StringBuffer;
    iget-object v4, p0, Ltwitter4j/Annotation;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\', attributes={"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    iget-object v4, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, nameIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    .local v0, name:Ljava/lang/String;
    iget-object v4, p0, Ltwitter4j/Annotation;->attributes:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 296
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 301
    .end local v0           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    const-string v4, "}}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public type(Ljava/lang/String;)Ltwitter4j/Annotation;
    .locals 0
    .parameter "type"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Ltwitter4j/Annotation;->setType(Ljava/lang/String;)V

    .line 123
    return-object p0
.end method
