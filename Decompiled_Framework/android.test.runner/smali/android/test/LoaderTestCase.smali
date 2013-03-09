.class public Landroid/test/LoaderTestCase;
.super Landroid/test/AndroidTestCase;
.source "LoaderTestCase.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/test/LoaderTestCase$1;

    invoke-direct {v0}, Landroid/test/LoaderTestCase$1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Loader",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v1, Landroid/test/LoaderTestCase$2;

    invoke-direct {v1, p0, v3}, Landroid/test/LoaderTestCase$2;-><init>(Landroid/test/LoaderTestCase;Ljava/util/concurrent/ArrayBlockingQueue;)V

    new-instance v2, Landroid/test/LoaderTestCase$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5, p1, v1}, Landroid/test/LoaderTestCase$3;-><init>(Landroid/test/LoaderTestCase;Landroid/os/Looper;Landroid/content/Loader;Landroid/content/Loader$OnLoadCompleteListener;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "waiting thread interrupted"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
