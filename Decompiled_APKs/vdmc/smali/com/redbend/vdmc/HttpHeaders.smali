.class public Lcom/redbend/vdmc/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Lcom/redbend/vdm/HttpHeadersObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HttpHeaders"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, headersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "User-Agent"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 17
    .local v2, userAgent:Ljava/lang/String;
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v1

    .line 18
    .local v1, mCommonIPL:Lcom/htc/ipl/common;
    invoke-virtual {v1}, Lcom/htc/ipl/common;->UserAgentName()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, UserAgentName:Ljava/lang/String;
    const-string v3, "HttpHeaders"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userAgent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v3, "User-Agent"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
