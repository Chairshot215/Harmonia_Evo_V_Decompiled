.class Lcom/android/providers/downloads/StorageManager$1;
.super Ljava/lang/Thread;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/StorageManager;->startThreadToCleanupDatabaseAndPurgeFileSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/StorageManager;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/StorageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/providers/downloads/StorageManager$1;->this$0:Lcom/android/providers/downloads/StorageManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager$1;->this$0:Lcom/android/providers/downloads/StorageManager;

    #calls: Lcom/android/providers/downloads/StorageManager;->removeSpuriousFiles()V
    invoke-static {v0}, Lcom/android/providers/downloads/StorageManager;->access$000(Lcom/android/providers/downloads/StorageManager;)V

    .line 145
    iget-object v0, p0, Lcom/android/providers/downloads/StorageManager$1;->this$0:Lcom/android/providers/downloads/StorageManager;

    #calls: Lcom/android/providers/downloads/StorageManager;->trimDatabase()V
    invoke-static {v0}, Lcom/android/providers/downloads/StorageManager;->access$100(Lcom/android/providers/downloads/StorageManager;)V

    .line 146
    return-void
.end method
