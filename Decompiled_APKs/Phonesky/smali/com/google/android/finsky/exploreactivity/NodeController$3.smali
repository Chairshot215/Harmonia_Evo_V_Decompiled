.class Lcom/google/android/finsky/exploreactivity/NodeController$3;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;->createRoot(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/google/android/finsky/exploreactivity/DrawingUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$3;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 294
    return-void
.end method
