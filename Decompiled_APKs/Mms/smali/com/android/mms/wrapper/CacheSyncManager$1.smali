.class Lcom/android/mms/wrapper/CacheSyncManager$1;
.super Ljava/lang/Object;
.source "CacheSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/wrapper/CacheSyncManager;->removeAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/wrapper/CacheSyncManager;


# direct methods
.method constructor <init>(Lcom/android/mms/wrapper/CacheSyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/mms/wrapper/CacheSyncManager$1;->this$0:Lcom/android/mms/wrapper/CacheSyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 188
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/mms/wrapper/CacheSyncManager$1;->this$0:Lcom/android/mms/wrapper/CacheSyncManager;

    #getter for: Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/wrapper/CacheSyncManager;->access$000(Lcom/android/mms/wrapper/CacheSyncManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, files:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 191
    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    const-string v3, "websync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete failed, file name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/android/mms/wrapper/CacheSyncManager$1;->this$0:Lcom/android/mms/wrapper/CacheSyncManager;

    iget-object v3, v3, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    return-void
.end method
