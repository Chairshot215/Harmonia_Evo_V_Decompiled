.class Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "AbstractSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/apache/harmony/xnet/provider/jsse/ByteArray;",
        "Ljavax/net/ssl/SSLSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iget v1, v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
