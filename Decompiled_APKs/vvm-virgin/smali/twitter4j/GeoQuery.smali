.class public final Ltwitter4j/GeoQuery;
.super Ljava/lang/Object;
.source "GeoQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final NEIGHBORHOOD:Ljava/lang/String; = "neighborhood"

.field private static final serialVersionUID:J = 0xcdda7bca2db6d4aL


# instance fields
.field private accuracy:Ljava/lang/String;

.field private granularity:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private location:Ltwitter4j/GeoLocation;

.field private maxResults:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "ip"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    .line 57
    return-void
.end method

.method public constructor <init>(Ltwitter4j/GeoLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private appendParameter(Ljava/lang/String;DLjava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private appendParameter(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-lez p2, :cond_0

    .line 147
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 141
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public accuracy(Ljava/lang/String;)Ltwitter4j/GeoQuery;
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Ltwitter4j/GeoQuery;->setAccuracy(Ljava/lang/String;)V

    .line 82
    return-object p0
.end method

.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 5

    .prologue
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "lat"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 125
    const-string v2, "long"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 128
    :cond_0
    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "ip"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 132
    :cond_1
    const-string v2, "accuracy"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 133
    const-string v2, "granularity"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 134
    const-string v2, "max_results"

    iget v3, p0, Ltwitter4j/GeoQuery;->maxResults:I

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;ILjava/util/List;)V

    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 136
    .local v0, paramArray:[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    if-ne p0, p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 160
    check-cast v0, Ltwitter4j/GeoQuery;

    .line 162
    .local v0, geoQuery:Ltwitter4j/GeoQuery;
    iget v3, p0, Ltwitter4j/GeoQuery;->maxResults:I

    iget v4, v0, Ltwitter4j/GeoQuery;->maxResults:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 163
    :cond_4
    iget-object v3, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 164
    goto :goto_0

    .line 163
    :cond_6
    iget-object v3, v0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 165
    :cond_7
    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    .line 166
    goto :goto_0

    .line 165
    :cond_9
    iget-object v3, v0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 167
    :cond_a
    iget-object v3, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 168
    goto :goto_0

    .line 167
    :cond_c
    iget-object v3, v0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 169
    :cond_d
    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3, v4}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 170
    goto :goto_0

    .line 169
    :cond_e
    iget-object v3, v0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAccuracy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    return-object v0
.end method

.method public getGranularity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Ltwitter4j/GeoQuery;->maxResults:I

    return v0
.end method

.method public granularity(Ljava/lang/String;)Ltwitter4j/GeoQuery;
    .locals 0
    .parameter "granularity"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Ltwitter4j/GeoQuery;->setGranularity(Ljava/lang/String;)V

    .line 100
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v0

    .line 178
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 179
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 181
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/GeoQuery;->maxResults:I

    add-int v0, v1, v2

    .line 182
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 177
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 178
    goto :goto_1

    :cond_3
    move v2, v1

    .line 179
    goto :goto_2
.end method

.method public maxResults(I)Ltwitter4j/GeoQuery;
    .locals 0
    .parameter "maxResults"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Ltwitter4j/GeoQuery;->setMaxResults(I)V

    .line 118
    return-object p0
.end method

.method public setAccuracy(Ljava/lang/String;)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 77
    iput-object p1, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setGranularity(Ljava/lang/String;)V
    .locals 0
    .parameter "granularity"

    .prologue
    .line 95
    iput-object p1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setMaxResults(I)V
    .locals 0
    .parameter "maxResults"

    .prologue
    .line 113
    iput p1, p0, Ltwitter4j/GeoQuery;->maxResults:I

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "GeoQuery{location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", accuracy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", granularity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", maxResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/GeoQuery;->maxResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
