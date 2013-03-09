.class Lcom/htc/xps/pomelo/log/HttpSender$1;
.super Ljava/lang/Object;
.source "HttpSender.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/xps/pomelo/log/HttpSender;->connect(Lorg/apache/http/client/methods/HttpRequestBase;[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/xps/pomelo/log/HttpSender;

.field final synthetic val$headers:[Lorg/apache/http/Header;


# direct methods
.method constructor <init>(Lcom/htc/xps/pomelo/log/HttpSender;[Lorg/apache/http/Header;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/HttpSender$1;->this$0:Lcom/htc/xps/pomelo/log/HttpSender;

    iput-object p2, p0, Lcom/htc/xps/pomelo/log/HttpSender$1;->val$headers:[Lorg/apache/http/Header;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/HttpSender$1;->val$headers:[Lorg/apache/http/Header;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/HttpSender$1;->val$headers:[Lorg/apache/http/Header;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    const-string v1, "Accept-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/htc/xps/pomelo/log/HttpSender$1;->this$0:Lcom/htc/xps/pomelo/log/HttpSender;

    iget-object v2, p0, Lcom/htc/xps/pomelo/log/HttpSender$1;->this$0:Lcom/htc/xps/pomelo/log/HttpSender;

    #calls: Lcom/htc/xps/pomelo/log/HttpSender;->getRequestHeaderSize(Lorg/apache/http/HttpRequest;)I
    invoke-static {v2, p1}, Lcom/htc/xps/pomelo/log/HttpSender;->access$000(Lcom/htc/xps/pomelo/log/HttpSender;Lorg/apache/http/HttpRequest;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/xps/pomelo/log/HttpSender$1;->this$0:Lcom/htc/xps/pomelo/log/HttpSender;

    #calls: Lcom/htc/xps/pomelo/log/HttpSender;->getPacketHeaderSize(Lorg/apache/http/HttpRequest;)I
    invoke-static {v3, p1}, Lcom/htc/xps/pomelo/log/HttpSender;->access$100(Lcom/htc/xps/pomelo/log/HttpSender;Lorg/apache/http/HttpRequest;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    .line 166
    return-void

    .line 162
    :cond_1
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
