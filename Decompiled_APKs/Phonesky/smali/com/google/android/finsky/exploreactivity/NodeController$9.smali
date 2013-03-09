.class Lcom/google/android/finsky/exploreactivity/NodeController$9;
.super Lcom/google/android/finsky/api/DfeRequest;
.source "NodeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;->queueRequest(Ljava/lang/String;Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Ljava/lang/Class;Lcom/android/volley/Response$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

.field final synthetic val$priority:Lcom/android/volley/Request$Priority;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/android/volley/Request$Priority;)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$9;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    iput-object p7, p0, Lcom/google/android/finsky/exploreactivity/NodeController$9;->val$priority:Lcom/android/volley/Request$Priority;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/NodeController$9;->val$priority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method
