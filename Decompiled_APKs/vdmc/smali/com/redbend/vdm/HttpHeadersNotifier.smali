.class Lcom/redbend/vdm/HttpHeadersNotifier;
.super Ljava/lang/Object;
.source "HttpHeadersNotifier.java"


# instance fields
.field private observers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbend/vdm/HttpHeadersObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/redbend/vdm/HttpHeadersNotifier;->initIDs()V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/redbend/vdm/HttpHeadersNotifier;->initInstance()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbend/vdm/HttpHeadersNotifier;->observers:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method


# virtual methods
.method protected notify(Ljava/util/HashMap;)V
    .locals 3
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
    .line 58
    .local p1, headersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/redbend/vdm/HttpHeadersNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbend/vdm/HttpHeadersObserver;

    .line 59
    .local v1, observer:Lcom/redbend/vdm/HttpHeadersObserver;
    invoke-interface {v1, p1}, Lcom/redbend/vdm/HttpHeadersObserver;->notify(Ljava/util/HashMap;)V

    goto :goto_0

    .line 61
    .end local v1           #observer:Lcom/redbend/vdm/HttpHeadersObserver;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/redbend/vdm/HttpHeadersNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public native terminate()V
.end method

.method public unregisterObserver(Lcom/redbend/vdm/HttpHeadersObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/redbend/vdm/HttpHeadersNotifier;->observers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
