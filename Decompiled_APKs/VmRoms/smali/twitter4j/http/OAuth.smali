.class public Ltwitter4j/http/OAuth;
.super Ljava/lang/Object;
.source "OAuth.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final OAUTH_SIGNATURE_METHOD:Ltwitter4j/http/PostParameter; = null

.field private static RAND:Ljava/util/Random; = null

.field static final serialVersionUID:J = -0x3c9fc4eaff57b01aL


# instance fields
.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ltwitter4j/http/PostParameter;

    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-direct {v0, v1, v2}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/http/OAuth;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/http/PostParameter;

    .line 51
    invoke-static {}, Ltwitter4j/Configuration;->getDebug()Z

    move-result v0

    sput-boolean v0, Ltwitter4j/http/OAuth;->DEBUG:Z

    .line 115
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ltwitter4j/http/OAuth;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Ltwitter4j/http/OAuth;->setConsumerKey(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p2}, Ltwitter4j/http/OAuth;->setConsumerSecret(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 287
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 288
    .local v2, index:I
    if-eq v6, v2, :cond_0

    .line 289
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 291
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 292
    .local v3, slashIndex:I
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, baseURL:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 294
    .local v1, colonIndex:I
    if-eq v6, v1, :cond_1

    .line 296
    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ":80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 306
    return-object p0

    .line 299
    :cond_2
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ":443"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, encoded:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 254
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 255
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 256
    .local v2, focus:C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_0

    .line 257
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :cond_0
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_1

    .line 259
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 260
    :cond_1
    const/16 v4, 0x25

    if-ne v2, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    .line 262
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 265
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 268
    .end local v2           #focus:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 250
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static encodeParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, postParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    const-string v0, "&"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltwitter4j/http/OAuth;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "splitter"
    .parameter "quot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, postParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/http/PostParameter;

    .line 218
    .local v2, param:Ltwitter4j/http/PostParameter;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    if-eqz p2, :cond_0

    .line 220
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_1
    iget-object v3, v2, Ltwitter4j/http/PostParameter;->name:Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/http/OAuth;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    if-eqz p2, :cond_2

    .line 226
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_2
    iget-object v3, v2, Ltwitter4j/http/PostParameter;->value:Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/http/OAuth;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    .end local v2           #param:Ltwitter4j/http/PostParameter;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    if-eqz p2, :cond_4

    .line 233
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 318
    sget-boolean v0, Ltwitter4j/http/OAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "message2"

    .prologue
    .line 324
    sget-boolean v0, Ltwitter4j/http/OAuth;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/http/OAuth;->log(Ljava/lang/String;)V

    .line 327
    :cond_0
    return-void
.end method

.method public static normalizeAuthorizationHeaders(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 196
    invoke-static {p0}, Ltwitter4j/http/OAuth;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 191
    invoke-static {p0}, Ltwitter4j/http/OAuth;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeRequestParameters([Ltwitter4j/http/PostParameter;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 186
    invoke-static {p0}, Ltwitter4j/http/OAuth;->toParamList([Ltwitter4j/http/PostParameter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/http/OAuth;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseGetParameters(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, signatureBaseParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 92
    .local v4, queryStart:I
    const/4 v7, -0x1

    if-eq v7, v4, :cond_1

    .line 93
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, queryStrs:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    :try_start_0
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 96
    .local v3, query:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, split:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 98
    new-instance v7, Ltwitter4j/http/PostParameter;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance v7, Ltwitter4j/http/PostParameter;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 108
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #query:Ljava/lang/String;
    .end local v6           #split:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 113
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v5           #queryStrs:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static toParamList([Ltwitter4j/http/PostParameter;)Ljava/util/List;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ltwitter4j/http/PostParameter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/http/PostParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v0, paramList:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 331
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 341
    :goto_0
    return v2

    .line 332
    :cond_0
    instance-of v2, p1, Ltwitter4j/http/OAuth;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 334
    :cond_1
    move-object v0, p1

    check-cast v0, Ltwitter4j/http/OAuth;

    move-object v1, v0

    .line 336
    .local v1, oAuth:Ltwitter4j/http/OAuth;
    iget-object v2, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    move v2, v4

    .line 337
    goto :goto_0

    .line 336
    :cond_3
    iget-object v2, v1, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 338
    :cond_4
    iget-object v2, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v4

    .line 339
    goto :goto_0

    .line 338
    :cond_6
    iget-object v2, v1, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_7
    move v2, v5

    .line 341
    goto :goto_0
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;
    .locals 8
    .parameter "method"
    .parameter "url"
    .parameter "params"
    .parameter "nonce"
    .parameter "timestamp"
    .parameter "otoken"

    .prologue
    .line 62
    if-nez p3, :cond_0

    .line 63
    const/4 v5, 0x0

    new-array p3, v5, [Ltwitter4j/http/PostParameter;

    .line 65
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v2, oauthHeaderParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_consumer_key"

    iget-object v7, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v5, Ltwitter4j/http/OAuth;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/http/PostParameter;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_timestamp"

    invoke-direct {v5, v6, p5}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_nonce"

    invoke-direct {v5, v6, p4}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_version"

    const-string v7, "1.0"

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    if-eqz p6, :cond_1

    .line 72
    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_token"

    invoke-virtual {p6}, Ltwitter4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, p3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v4, signatureBaseParams:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/http/PostParameter;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-static {p3}, Ltwitter4j/http/OAuth;->toParamList([Ltwitter4j/http/PostParameter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-direct {p0, p2, v4}, Ltwitter4j/http/OAuth;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 78
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p2}, Ltwitter4j/http/OAuth;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/http/OAuth;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 80
    .local v0, base:Ljava/lang/StringBuffer;
    invoke-static {v4}, Ltwitter4j/http/OAuth;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/http/OAuth;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, oauthBaseString:Ljava/lang/String;
    const-string v5, "OAuth base string:"

    invoke-direct {p0, v5, v1}, Ltwitter4j/http/OAuth;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1, p6}, Ltwitter4j/http/OAuth;->generateSignature(Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, signature:Ljava/lang/String;
    const-string v5, "OAuth signature:"

    invoke-direct {p0, v5, v3}, Ltwitter4j/http/OAuth;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v5, Ltwitter4j/http/PostParameter;

    const-string v6, "oauth_signature"

    invoke-direct {v5, v6, v3}, Ltwitter4j/http/PostParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "OAuth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Ltwitter4j/http/OAuth;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;
    .locals 11
    .parameter "method"
    .parameter "url"
    .parameter "params"
    .parameter "token"

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 123
    .local v9, timestamp:J
    sget-object v0, Ltwitter4j/http/OAuth;->RAND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    add-long v7, v9, v0

    .line 124
    .local v7, nonce:J
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/http/OAuth;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/http/PostParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method generateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/http/OAuth;->generateSignature(Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method generateSignature(Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "token"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, byteHMAC:[B
    :try_start_0
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 140
    .local v2, mac:Ljavax/crypto/Mac;
    if-nez p2, :cond_0

    .line 141
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    invoke-static {v6}, Ltwitter4j/http/OAuth;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, oauthSignature:Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 151
    .end local v3           #oauthSignature:Ljava/lang/String;
    .local v4, spec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 158
    .end local v2           #mac:Ljavax/crypto/Mac;
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :goto_1
    new-instance v5, Ltwitter4j/http/BASE64Encoder;

    invoke-direct {v5}, Ltwitter4j/http/BASE64Encoder;-><init>()V

    invoke-virtual {v5, v0}, Ltwitter4j/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 144
    .restart local v2       #mac:Ljavax/crypto/Mac;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ltwitter4j/http/OAuthToken;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v5

    if-nez v5, :cond_1

    .line 145
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    invoke-static {v6}, Ltwitter4j/http/OAuth;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Ltwitter4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/http/OAuth;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .restart local v3       #oauthSignature:Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 147
    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {p2, v4}, Ltwitter4j/http/OAuthToken;->setSecretKeySpec(Ljavax/crypto/spec/SecretKeySpec;)V

    .line 149
    .end local v3           #oauthSignature:Ljava/lang/String;
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    invoke-virtual {p2}, Ltwitter4j/http/OAuthToken;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4       #spec:Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0

    .line 153
    .end local v2           #mac:Ljavax/crypto/Mac;
    .end local v4           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 154
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v0, v1

    .line 347
    .local v0, result:I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 348
    return v0

    .end local v0           #result:I
    :cond_0
    move v0, v3

    .line 346
    goto :goto_0

    .restart local v0       #result:I
    :cond_1
    move v2, v3

    .line 347
    goto :goto_1
.end method

.method public setConsumerKey(Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"

    .prologue
    .line 310
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    .line 311
    return-void

    .line 310
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 1
    .parameter "consumerSecret"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

    .line 315
    return-void

    .line 314
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 353
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OAuth{consumerKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/OAuth;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", consumerSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/OAuth;->consumerSecret:Ljava/lang/String;

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
