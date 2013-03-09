.class Ljava/util/concurrent/Executors$PrivilegedCallable$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedCallable;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executors$PrivilegedCallable;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedCallable$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedCallable;

    #getter for: Ljava/util/concurrent/Executors$PrivilegedCallable;->task:Ljava/util/concurrent/Callable;
    invoke-static {v0}, Ljava/util/concurrent/Executors$PrivilegedCallable;->access$000(Ljava/util/concurrent/Executors$PrivilegedCallable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
