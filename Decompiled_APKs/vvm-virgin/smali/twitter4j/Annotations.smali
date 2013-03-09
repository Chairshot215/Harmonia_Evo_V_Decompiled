.class public Ltwitter4j/Annotations;
.super Ljava/lang/Object;
.source "Annotations.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final lengthLimit:I = 0x200

.field private static final serialVersionUID:J = 0x6e08dab641ae27cdL


# instance fields
.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 43
    invoke-virtual {p0, v0}, Ltwitter4j/Annotations;->setAnnotations(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, annotations:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 52
    invoke-virtual {p0, p1}, Ltwitter4j/Annotations;->setAnnotations(Ljava/util/List;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lorg/json/JSONArray;)V
    .locals 4
    .parameter "jsonArray"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 62
    invoke-virtual {p0, v2}, Ltwitter4j/Annotations;->setAnnotations(Ljava/util/List;)V

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 65
    new-instance v2, Ltwitter4j/Annotation;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Ltwitter4j/Annotation;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v2}, Ltwitter4j/Annotations;->addAnnotation(Ltwitter4j/Annotation;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 69
    .local v1, jsone:Lorg/json/JSONException;
    iget-object v2, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 71
    .end local v1           #jsone:Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private getSortedAnnotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ltwitter4j/Annotations;->size()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v0, sortedAnnotations:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Annotation;>;"
    iget-object v1, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 203
    return-object v0
.end method

.method public static isExceedingLengthLimit(Ltwitter4j/Annotations;)Z
    .locals 2
    .parameter "annotations"

    .prologue
    .line 130
    invoke-virtual {p0}, Ltwitter4j/Annotations;->asParameterValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAnnotation(Ltwitter4j/Annotation;)V
    .locals 1
    .parameter "annotation"

    .prologue
    .line 97
    iget-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public annotation(Ltwitter4j/Annotation;)Ltwitter4j/Annotations;
    .locals 0
    .parameter "annotation"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Ltwitter4j/Annotations;->addAnnotation(Ltwitter4j/Annotation;)V

    .line 108
    return-object p0
.end method

.method asParameterValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 147
    .local v2, jsonArray:Lorg/json/JSONArray;
    iget-object v3, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Annotation;

    .line 148
    .local v0, annotation:Ltwitter4j/Annotation;
    invoke-virtual {v0}, Ltwitter4j/Annotation;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 150
    .end local v0           #annotation:Ltwitter4j/Annotation;
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    if-nez p1, :cond_1

    move v0, v1

    .line 166
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 161
    .restart local p1
    :cond_1
    if-eq p0, p1, :cond_0

    .line 166
    instance-of v2, p1, Ltwitter4j/Annotations;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Annotations;

    .end local p1
    invoke-direct {p1}, Ltwitter4j/Annotations;->getSortedAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Ltwitter4j/Annotations;->getSortedAnnotations()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Ltwitter4j/Annotations;->getSortedAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isExceedingLengthLimit()Z
    .locals 1

    .prologue
    .line 137
    invoke-static {p0}, Ltwitter4j/Annotations;->isExceedingLengthLimit(Ltwitter4j/Annotations;)Z

    move-result v0

    return v0
.end method

.method public setAnnotations(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, annotations:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Annotation;>;"
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1           #annotations:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/Annotation;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    .line 89
    return-void
.end method

.method public size()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Annotations{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/Annotations;->size()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 185
    if-lez v0, :cond_0

    .line 186
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_0
    iget-object v2, p0, Ltwitter4j/Annotations;->annotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/Annotation;

    invoke-virtual {v2}, Ltwitter4j/Annotation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
