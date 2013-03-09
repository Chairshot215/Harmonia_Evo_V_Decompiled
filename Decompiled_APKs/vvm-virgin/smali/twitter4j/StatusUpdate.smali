.class public final Ltwitter4j/StatusUpdate;
.super Ljava/lang/Object;
.source "StatusUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x31e5caa537ab7fbcL


# instance fields
.field private annotations:Ltwitter4j/Annotations;

.field private displayCoordinates:Z

.field private inReplyToStatusId:J

.field private location:Ltwitter4j/GeoLocation;

.field private placeId:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 32
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 33
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 35
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    .line 39
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    .line 40
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
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p4, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
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
    .line 146
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 147
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnotation(Ltwitter4j/Annotation;)V
    .locals 1
    .parameter "annotation"

    .prologue
    .line 112
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ltwitter4j/Annotations;

    invoke-direct {v0}, Ltwitter4j/Annotations;-><init>()V

    iput-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    .line 115
    :cond_0
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, p1}, Ltwitter4j/Annotations;->addAnnotation(Ltwitter4j/Annotation;)V

    .line 116
    return-void
.end method

.method public annotation(Ltwitter4j/Annotation;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "annotation"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->addAnnotation(Ltwitter4j/Annotation;)V

    .line 120
    return-object p0
.end method

.method public annotations(Ltwitter4j/Annotations;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "annotations"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setAnnotations(Ltwitter4j/Annotations;)V

    .line 108
    return-object p0
.end method

.method asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 6

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v2, "status"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 126
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "in_reply_to_status_id"

    iget-wide v3, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 129
    :cond_0
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    .line 130
    const-string v2, "lat"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 131
    const-string v2, "long"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 134
    :cond_1
    const-string v2, "place_id"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 135
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-nez v2, :cond_2

    .line 136
    const-string v2, "display_coordinates"

    const-string v3, "false"

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 138
    :cond_2
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v2}, Ltwitter4j/Annotations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    const-string v2, "annotations"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v3}, Ltwitter4j/Annotations;->asParameterValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 141
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 142
    .local v0, paramArray:[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2
.end method

.method public displayCoordinates(Z)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "displayCoordinates"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setDisplayCoordinates(Z)V

    .line 95
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    if-ne p0, p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 162
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

    .line 164
    check-cast v0, Ltwitter4j/StatusUpdate;

    .line 166
    .local v0, that:Ltwitter4j/StatusUpdate;
    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    iget-boolean v4, v0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 167
    :cond_4
    iget-wide v3, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v5, v0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 168
    :cond_5
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3, v4}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 169
    goto :goto_0

    .line 168
    :cond_7
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-nez v3, :cond_6

    .line 170
    :cond_8
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 171
    goto :goto_0

    .line 170
    :cond_a
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 172
    :cond_b
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-eqz v3, :cond_d

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v3, v4}, Ltwitter4j/Annotations;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 173
    goto :goto_0

    .line 172
    :cond_d
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-nez v3, :cond_c

    .line 174
    :cond_e
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAnnotations()Ltwitter4j/Annotations;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 182
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v5, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 183
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v1}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 184
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 185
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    add-int v0, v3, v1

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v2}, Ltwitter4j/Annotations;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 187
    return v0

    :cond_1
    move v1, v2

    .line 183
    goto :goto_0

    :cond_2
    move v1, v2

    .line 184
    goto :goto_1

    :cond_3
    move v1, v2

    .line 185
    goto :goto_2
.end method

.method public inReplyToStatusId(J)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "inReplyToStatusId"

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setInReplyToStatusId(J)V

    .line 56
    return-object p0
.end method

.method public isDisplayCoordinates()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return v0
.end method

.method public location(Ltwitter4j/GeoLocation;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "location"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setLocation(Ltwitter4j/GeoLocation;)V

    .line 69
    return-object p0
.end method

.method public placeId(Ljava/lang/String;)Ltwitter4j/StatusUpdate;
    .locals 0
    .parameter "placeId"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Ltwitter4j/StatusUpdate;->setPlaceId(Ljava/lang/String;)V

    .line 82
    return-object p0
.end method

.method public setAnnotations(Ltwitter4j/Annotations;)V
    .locals 0
    .parameter "annotations"

    .prologue
    .line 103
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    .line 104
    return-void
.end method

.method public setDisplayCoordinates(Z)V
    .locals 0
    .parameter "displayCoordinates"

    .prologue
    .line 90
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 91
    return-void
.end method

.method public setInReplyToStatusId(J)V
    .locals 0
    .parameter "inReplyToStatusId"

    .prologue
    .line 51
    iput-wide p1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 52
    return-void
.end method

.method public setLocation(Ltwitter4j/GeoLocation;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 64
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 65
    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0
    .parameter "placeId"

    .prologue
    .line 77
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "StatusUpdate{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", placeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", displayCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->annotations:Ltwitter4j/Annotations;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
