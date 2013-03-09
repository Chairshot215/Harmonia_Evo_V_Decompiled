.class public Ltwitter4j/Query;
.super Ljava/lang/Object;
.source "Query.java"


# static fields
.field public static final KILOMETERS:Ljava/lang/String; = "km"

.field public static final MILES:Ljava/lang/String; = "mi"


# instance fields
.field private geocode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private page:I

.field private query:Ljava/lang/String;

.field private rpp:I

.field private sinceId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 43
    iput v0, p0, Ltwitter4j/Query;->rpp:I

    .line 44
    iput v0, p0, Ltwitter4j/Query;->page:I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    .line 46
    iput-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "query"

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 43
    iput v0, p0, Ltwitter4j/Query;->rpp:I

    .line 44
    iput v0, p0, Ltwitter4j/Query;->page:I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    .line 46
    iput-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 154
    new-instance v0, Ltwitter4j/http/PostParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
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
            "Ltwitter4j/http/PostParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    if-eqz p2, :cond_0

    .line 148
    new-instance v0, Ltwitter4j/http/PostParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public asPostParameters()[Ltwitter4j/http/PostParameter;
    .locals 5

    .prologue
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/http/PostParameter;>;"
    const-string v2, "q"

    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 137
    const-string v2, "lang"

    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 138
    const-string v2, "rpp"

    iget v3, p0, Ltwitter4j/Query;->rpp:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 139
    const-string v2, "page"

    iget v3, p0, Ltwitter4j/Query;->page:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 140
    const-string v2, "since_id"

    iget-wide v3, p0, Ltwitter4j/Query;->sinceId:J

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 141
    const-string v2, "geocode"

    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/http/PostParameter;

    .line 143
    .local v0, paramArray:[Ltwitter4j/http/PostParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ltwitter4j/http/PostParameter;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    if-ne p0, p1, :cond_0

    move v2, v7

    .line 175
    :goto_0
    return v2

    .line 161
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v6

    goto :goto_0

    .line 163
    :cond_2
    move-object v0, p1

    check-cast v0, Ltwitter4j/Query;

    move-object v1, v0

    .line 165
    .local v1, query1:Ltwitter4j/Query;
    iget v2, p0, Ltwitter4j/Query;->page:I

    iget v3, v1, Ltwitter4j/Query;->page:I

    if-eq v2, v3, :cond_3

    move v2, v6

    goto :goto_0

    .line 166
    :cond_3
    iget v2, p0, Ltwitter4j/Query;->rpp:I

    iget v3, v1, Ltwitter4j/Query;->rpp:I

    if-eq v2, v3, :cond_4

    move v2, v6

    goto :goto_0

    .line 167
    :cond_4
    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v4, v1, Ltwitter4j/Query;->sinceId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_0

    .line 168
    :cond_5
    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v6

    .line 169
    goto :goto_0

    .line 168
    :cond_7
    iget-object v2, v1, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 170
    :cond_8
    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v2, v6

    .line 171
    goto :goto_0

    .line 170
    :cond_a
    iget-object v2, v1, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 172
    :cond_b
    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v2, v6

    .line 173
    goto :goto_0

    .line 172
    :cond_d
    iget-object v2, v1, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_e
    move v2, v7

    .line 175
    goto :goto_0
.end method

.method public getGeocode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Ltwitter4j/Query;->page:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRpp()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Ltwitter4j/Query;->rpp:I

    return v0
.end method

.method public getSinceId()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 180
    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 181
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 182
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Query;->rpp:I

    add-int v0, v1, v2

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/Query;->page:I

    add-int v0, v1, v2

    .line 184
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v4, p0, Ltwitter4j/Query;->sinceId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 185
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 186
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v7

    .line 180
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v7

    .line 181
    goto :goto_1

    :cond_2
    move v2, v7

    .line 185
    goto :goto_2
.end method

.method public setGeoCode(DDDLjava/lang/String;)V
    .locals 2
    .parameter "latitude"
    .parameter "longtitude"
    .parameter "radius"
    .parameter "unit"

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 77
    iput-object p1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 101
    iput p1, p0, Ltwitter4j/Query;->page:I

    .line 102
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .parameter "query"

    .prologue
    .line 65
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRpp(I)V
    .locals 0
    .parameter "rpp"

    .prologue
    .line 89
    iput p1, p0, Ltwitter4j/Query;->rpp:I

    .line 90
    return-void
.end method

.method public setSinceId(J)V
    .locals 0
    .parameter "sinceId"

    .prologue
    .line 113
    iput-wide p1, p0, Ltwitter4j/Query;->sinceId:J

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 191
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Query{query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->rpp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/Query;->sinceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", geocode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
