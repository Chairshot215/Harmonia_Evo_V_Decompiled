.class public Lcom/google/android/finsky/utils/DenyAllNetwork;
.super Ljava/lang/Object;
.source "DenyAllNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/NoConnectionError;
        }
    .end annotation

    .prologue
    .line 18
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    new-instance v0, Lcom/google/android/finsky/utils/BgDataDisabledError;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/BgDataDisabledError;-><init>()V

    throw v0
.end method
