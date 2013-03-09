.class public final Ltwitter4j/internal/http/HttpParameter;
.super Ljava/lang/Object;
.source "HttpParameter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final GIF:Ljava/lang/String; = "image/gif"

.field private static final JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final OCTET:Ljava/lang/String; = "application/octet-stream"

.field private static final PNG:Ljava/lang/String; = "image/png"

.field private static final serialVersionUID:J = -0x78d96ac49142488cL


# instance fields
.field private file:Ljava/io/File;

.field private fileBody:Ljava/io/InputStream;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 34
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 64
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 65
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 34
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 54
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 34
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 59
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 60
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "name"
    .parameter "file"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 34
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 43
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 34
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 38
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter "name"
    .parameter "fileName"
    .parameter "fileBody"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 34
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 48
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 50
    iput-object p3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    .line 34
    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    .line 69
    iput-object p1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    .line 70
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static containsFile(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const/4 v0, 0x0

    .line 175
    .local v0, containsFile:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/internal/http/HttpParameter;

    .line 176
    .local v2, param:Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 181
    .end local v2           #param:Ltwitter4j/internal/http/HttpParameter;
    :cond_1
    return v0
.end method

.method public static containsFile([Ltwitter4j/internal/http/HttpParameter;)Z
    .locals 6
    .parameter "params"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, containsFile:Z
    if-nez p0, :cond_0

    .line 161
    const/4 v5, 0x0

    .line 169
    :goto_0
    return v5

    .line 163
    :cond_0
    move-object v0, p0

    .local v0, arr$:[Ltwitter4j/internal/http/HttpParameter;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 164
    .local v4, param:Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v4}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    const/4 v1, 0x1

    .end local v4           #param:Ltwitter4j/internal/http/HttpParameter;
    :cond_1
    move v5, v1

    .line 169
    goto :goto_0

    .line 163
    .restart local v4       #param:Ltwitter4j/internal/http/HttpParameter;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, encoded:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 263
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 265
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 267
    .local v2, focus:C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_0

    .line 268
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    :cond_0
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_1

    .line 270
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 271
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

    .line 273
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 276
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 279
    .end local v2           #focus:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 261
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v3           #i:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
    .locals 5
    .parameter "httpParams"

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    const-string v2, ""

    .line 247
    :goto_0
    return-object v2

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 238
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "parameter ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p0, v1

    iget-object v4, v4, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]should be text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_1
    if-eqz v1, :cond_2

    .line 242
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :cond_2
    aget-object v2, p0, v1

    iget-object v2, v2, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-static {v2}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    iget-object v3, v3, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-static {v3}, Ltwitter4j/internal/http/HttpParameter;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getParameterArray(Ljava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;ILjava/lang/String;I)[Ltwitter4j/internal/http/HttpParameter;
    .locals 2
    .parameter "name1"
    .parameter "value1"
    .parameter "name2"
    .parameter "value2"

    .prologue
    .line 200
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p2, v1}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .parameter "name1"
    .parameter "value1"
    .parameter "name2"
    .parameter "value2"

    .prologue
    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p0, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v2, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 224
    move-object v1, p1

    check-cast v1, Ltwitter4j/internal/http/HttpParameter;

    .line 225
    .local v1, that:Ltwitter4j/internal/http/HttpParameter;
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, compared:I
    if-nez v0, :cond_0

    .line 227
    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    iget-object v3, v1, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 229
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 143
    :cond_1
    instance-of v3, p1, Ltwitter4j/internal/http/HttpParameter;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 145
    check-cast v0, Ltwitter4j/internal/http/HttpParameter;

    .line 147
    .local v0, that:Ltwitter4j/internal/http/HttpParameter;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 148
    goto :goto_0

    .line 147
    :cond_4
    iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-nez v3, :cond_3

    .line 149
    :cond_5
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 150
    goto :goto_0

    .line 149
    :cond_7
    iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-nez v3, :cond_6

    .line 151
    :cond_8
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 152
    :cond_9
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 153
    goto :goto_0

    .line 152
    :cond_a
    iget-object v3, v0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not a file"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :cond_0
    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, extensions:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, index:I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_1

    .line 114
    const-string v0, "application/octet-stream"

    .line 137
    .local v0, contentType:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 116
    .end local v0           #contentType:Ljava/lang/String;
    :cond_1
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 118
    const-string v3, "gif"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    const-string v0, "image/gif"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v0           #contentType:Ljava/lang/String;
    :cond_2
    const-string v3, "png"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    const-string v0, "image/png"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v0           #contentType:Ljava/lang/String;
    :cond_3
    const-string v3, "jpg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    const-string v0, "image/jpeg"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v0           #contentType:Ljava/lang/String;
    :cond_4
    const-string v0, "application/octet-stream"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v0           #contentType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 128
    const-string v3, "jpeg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    const-string v0, "image/jpeg"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0           #contentType:Ljava/lang/String;
    :cond_6
    const-string v0, "application/octet-stream"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0           #contentType:Ljava/lang/String;
    :cond_7
    const-string v0, "application/octet-stream"

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasFileBody()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 206
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 207
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 209
    return v0

    :cond_1
    move v1, v2

    .line 206
    goto :goto_0

    :cond_2
    move v1, v2

    .line 207
    goto :goto_1
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PostParameter{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fileBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpParameter;->fileBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
