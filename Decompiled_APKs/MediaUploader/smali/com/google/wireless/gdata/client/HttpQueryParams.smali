.class public Lcom/google/wireless/gdata/client/HttpQueryParams;
.super Lcom/google/wireless/gdata/client/QueryParams;
.source "HttpQueryParams.java"


# instance fields
.field private client:Lcom/google/wireless/gdata/client/GDataClient;

.field private names:Ljava/util/Vector;

.field private params:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/wireless/gdata/client/QueryParams;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->client:Lcom/google/wireless/gdata/client/GDataClient;

    .line 33
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->names:Ljava/util/Vector;

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->params:Ljava/util/Hashtable;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 73
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->params:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 74
    return-void
.end method

.method public generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0x3f

    const/16 v5, 0x26

    .line 38
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->names:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 42
    if-lez v2, :cond_0

    .line 43
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->names:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/HttpQueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    if-nez v3, :cond_2

    .line 41
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 39
    goto :goto_0

    .line 48
    :cond_2
    iget-object v4, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->client:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v4, v0}, Lcom/google/wireless/gdata/client/GDataClient;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->client:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v0, v3}, Lcom/google/wireless/gdata/client/GDataClient;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p2, :cond_2

    .line 60
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/wireless/gdata/client/HttpQueryParams;->names:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto :goto_0
.end method
