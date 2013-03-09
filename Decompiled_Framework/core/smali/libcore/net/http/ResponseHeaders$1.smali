.class Llibcore/net/http/ResponseHeaders$1;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"

# interfaces
.implements Llibcore/net/http/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/ResponseHeaders;


# direct methods
.method constructor <init>(Llibcore/net/http/ResponseHeaders;)V
    .locals 0

    iput-object p1, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->noCache:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$002(Llibcore/net/http/ResponseHeaders;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "no-store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->noStore:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$102(Llibcore/net/http/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_2
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    invoke-static {p2}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$202(Llibcore/net/http/ResponseHeaders;I)I

    goto :goto_0

    :cond_3
    const-string v0, "s-maxage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    invoke-static {p2}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    #setter for: Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$302(Llibcore/net/http/ResponseHeaders;I)I

    goto :goto_0

    :cond_4
    const-string v0, "public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->isPublic:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$402(Llibcore/net/http/ResponseHeaders;Z)Z

    goto :goto_0

    :cond_5
    const-string v0, "must-revalidate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders$1;->this$0:Llibcore/net/http/ResponseHeaders;

    #setter for: Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z
    invoke-static {v0, v1}, Llibcore/net/http/ResponseHeaders;->access$502(Llibcore/net/http/ResponseHeaders;Z)Z

    goto :goto_0
.end method
