.class public Ltwitter4j/Trend;
.super Ljava/lang/Object;
.source "Trend.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1aba5f6b262a250aL


# instance fields
.field private name:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltwitter4j/org/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/org/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    .line 45
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Trend;->name:Ljava/lang/String;

    .line 46
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    .line 49
    :cond_0
    const-string v0, "query"

    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "query"

    invoke-virtual {p1, v0}, Ltwitter4j/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 79
    :goto_0
    return v2

    .line 69
    :cond_0
    instance-of v2, p1, Ltwitter4j/Trend;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 71
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/Trend;

    move-object v1, v0

    .line 73
    .local v1, trend:Ltwitter4j/Trend;
    iget-object v2, p0, Ltwitter4j/Trend;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Trend;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Trend;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    move v2, v4

    .line 75
    goto :goto_0

    .line 74
    :cond_4
    iget-object v2, v1, Ltwitter4j/Trend;->query:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 76
    :cond_5
    iget-object v2, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/Trend;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v2, v4

    .line 77
    goto :goto_0

    .line 76
    :cond_7
    iget-object v2, v1, Ltwitter4j/Trend;->url:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_8
    move v2, v5

    .line 79
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltwitter4j/Trend;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Ltwitter4j/Trend;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 85
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 86
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 87
    return v0

    :cond_0
    move v2, v3

    .line 85
    goto :goto_0

    :cond_1
    move v2, v3

    .line 86
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Trend{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Trend;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Trend;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Trend;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
