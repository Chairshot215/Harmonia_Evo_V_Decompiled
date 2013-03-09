.class Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/library/LibraryReplicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryUpdateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOriginalTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryReplicator;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator;)V
    .locals 6
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->mOriginalTokens:Ljava/util/Map;

    .line 415
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_IDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 416
    .local v3, libraryId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->mOriginalTokens:Ljava/util/Map;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-static {p1}, Lcom/google/android/finsky/library/LibraryReplicator;->access$800(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v3           #libraryId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->mOriginalTokens:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "volleyError"

    .prologue
    const/4 v3, 0x0

    .line 476
    const-string v0, "Library replication failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$200(Lcom/google/android/finsky/library/LibraryReplicator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v1, 0x3

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    invoke-static {v0, v1, v3, p1, v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$300(Lcom/google/android/finsky/library/LibraryReplicator;ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1300(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;-><init>(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)V
    .locals 2
    .parameter "libraryReplicationResponse"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1300(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;-><init>(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 408
    check-cast p1, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->onResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)V

    return-void
.end method
