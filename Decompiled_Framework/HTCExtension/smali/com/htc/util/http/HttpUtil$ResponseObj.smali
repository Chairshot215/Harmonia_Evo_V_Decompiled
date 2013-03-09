.class public Lcom/htc/util/http/HttpUtil$ResponseObj;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/http/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseObj"
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private content:[B

.field private headers:[Lorg/apache/http/Header;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lorg/apache/http/Header;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->charset:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->content:[B

    iput-object v0, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->headers:[Lorg/apache/http/Header;

    iput-object p1, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->charset:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->content:[B

    iput-object p3, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->headers:[Lorg/apache/http/Header;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->content:[B

    return-object v0
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->headers:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->content:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->content:[B

    iget-object v2, p0, Lcom/htc/util/http/HttpUtil$ResponseObj;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method
