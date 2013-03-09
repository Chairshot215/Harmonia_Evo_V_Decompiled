.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    iget-object v1, v1, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    #getter for: Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;
    invoke-static {v1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->access$300(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    iget-object v0, v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
