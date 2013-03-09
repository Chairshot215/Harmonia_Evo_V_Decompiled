.class Lcom/google/android/gm/UiHandler$1;
.super Ljava/lang/Object;
.source "UiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/UiHandler;->post(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/UiHandler;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gm/UiHandler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/gm/UiHandler$1;->this$0:Lcom/google/android/gm/UiHandler;

    iput-object p2, p0, Lcom/google/android/gm/UiHandler$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/UiHandler$1;->this$0:Lcom/google/android/gm/UiHandler;

    #getter for: Lcom/google/android/gm/UiHandler;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/gm/UiHandler;->access$000(Lcom/google/android/gm/UiHandler;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 36
    iget-object v0, p0, Lcom/google/android/gm/UiHandler$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 37
    return-void
.end method
