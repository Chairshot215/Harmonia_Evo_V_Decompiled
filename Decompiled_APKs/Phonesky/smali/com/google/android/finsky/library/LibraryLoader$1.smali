.class Lcom/google/android/finsky/library/LibraryLoader$1;
.super Ljava/lang/Object;
.source "LibraryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryLoader;->load(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/LibraryLoader;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryLoader$1;->this$0:Lcom/google/android/finsky/library/LibraryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader$1;->this$0:Lcom/google/android/finsky/library/LibraryLoader;

    invoke-virtual {v0}, Lcom/google/android/finsky/library/LibraryLoader;->loadBlocking()V

    .line 57
    return-void
.end method
