.class Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;
.super Ljava/lang/Object;
.source "WriteThroughKeyValueStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->fetchAllFromBackingStoreAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    #getter for: Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mBackingStore:Lcom/google/android/finsky/utils/persistence/KeyValueStore;
    invoke-static {v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->access$000(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Lcom/google/android/finsky/utils/persistence/KeyValueStore;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/utils/persistence/KeyValueStore;->fetchAll()Ljava/util/Map;

    move-result-object v0

    .line 165
    .local v0, backingData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;->this$0:Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;

    #getter for: Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;->access$200(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3$1;-><init>(Lcom/google/android/finsky/utils/persistence/WriteThroughKeyValueStore$3;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method
