.class Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$1;
.super Ljava/lang/Object;
.source "MusicPreviewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->deleteAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$1;->this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 195
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager$1;->this$0:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    #getter for: Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->mCacheDir:Ljava/io/File;
    invoke-static {v4}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->access$100(Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 196
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v1           #f:Ljava/io/File;
    :cond_0
    return-void
.end method
