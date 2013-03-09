.class Lcom/google/android/finsky/library/Libraries$1;
.super Ljava/lang/Object;
.source "Libraries.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/Libraries;->blockingLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/Libraries;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/Libraries;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/finsky/library/Libraries$1;->this$0:Lcom/google/android/finsky/library/Libraries;

    iput-object p2, p0, Lcom/google/android/finsky/library/Libraries$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/library/Libraries$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 111
    return-void
.end method
