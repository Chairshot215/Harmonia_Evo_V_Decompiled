.class Lcom/google/android/finsky/exploreactivity/NodeController$5$1;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Lcom/android/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/exploreactivity/NodeController$5;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController$5;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$5$1;->this$1:Lcom/google/android/finsky/exploreactivity/NodeController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/volley/Request;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 907
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 908
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
