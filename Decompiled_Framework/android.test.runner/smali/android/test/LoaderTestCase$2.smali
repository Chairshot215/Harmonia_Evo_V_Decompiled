.class Landroid/test/LoaderTestCase$2;
.super Ljava/lang/Object;
.source "LoaderTestCase.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/LoaderTestCase;->getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/LoaderTestCase;

.field final synthetic val$queue:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Landroid/test/LoaderTestCase;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0

    iput-object p1, p0, Landroid/test/LoaderTestCase$2;->this$0:Landroid/test/LoaderTestCase;

    iput-object p2, p0, Landroid/test/LoaderTestCase$2;->val$queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    invoke-virtual {p1}, Landroid/content/Loader;->reset()V

    iget-object v0, p0, Landroid/test/LoaderTestCase$2;->val$queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
