.class Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;
.super Ljava/lang/Object;
.source "DcbApi.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestQueueErrorListener"
.end annotation


# instance fields
.field private final mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .parameter
    .parameter "errorListener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    .line 144
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->this$0:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->access$000(Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi$RequestQueueErrorListener;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 150
    return-void
.end method
