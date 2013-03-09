.class final Ljava/util/concurrent/Executors$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors;->callable(Ljava/security/PrivilegedAction;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>(Ljava/security/PrivilegedAction;)V
    .locals 0

    iput-object p1, p0, Ljava/util/concurrent/Executors$1;->val$action:Ljava/security/PrivilegedAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Executors$1;->val$action:Ljava/security/PrivilegedAction;

    invoke-interface {v0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
