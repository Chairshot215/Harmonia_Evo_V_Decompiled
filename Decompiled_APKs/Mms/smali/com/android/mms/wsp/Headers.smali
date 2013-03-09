.class public final Lcom/android/mms/wsp/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "accept"

.field public static final ACCEPT_CHARSET:Ljava/lang/String; = "accept-charset"

.field public static final ACCEPT_LANGUAGE:Ljava/lang/String; = "accept-language"

.field public static final AGE:Ljava/lang/String; = "age"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field private static final COLON:Ljava/lang/String; = ":"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "content-language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "content-location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_INT_VALUE:I = -0x1

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final FIELD_SEPARATOR:Ljava/lang/String; = "\r\n"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final USER_AGENT:Ljava/lang/String; = "user-agent"

.field public static final X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"


# instance fields
.field private mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/wsp/Headers;->mHeaders:Ljava/util/HashMap;

    return-void
.end method

.method private getIntHeader(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "def"

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/mms/wsp/Headers;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 97
    .end local p2
    :goto_0
    return p2

    .line 95
    .restart local p2
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/wsp/Headers;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public getAge()I
    .locals 2

    .prologue
    .line 144
    const-string v0, "age"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/wsp/Headers;->getIntHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 108
    const-string v0, "content-length"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/wsp/Headers;->getIntHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDate()I
    .locals 2

    .prologue
    .line 135
    const-string v0, "date"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/wsp/Headers;->getIntHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExpires()I
    .locals 2

    .prologue
    .line 126
    const-string v0, "expires"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/wsp/Headers;->getIntHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mms/wsp/Headers;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 117
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/wsp/Headers;->getIntHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v1, header:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/wsp/Headers;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 154
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 162
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
