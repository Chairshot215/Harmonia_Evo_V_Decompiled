.class Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<[B>;"
    }
.end annotation


# instance fields
.field private next:Ljavax/net/ssl/SSLSession;

.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->nextElement()[B

    move-result-object v0

    return-object v0
.end method

.method public nextElement()[B
    .locals 2

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
