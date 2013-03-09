.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory;
.super Ljava/util/concurrent/Executors$DefaultThreadFactory;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrivilegedThreadFactory"
.end annotation


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private final ccl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;-><init>()V

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "setContextClassLoader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic access$300(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;)Ljava/security/AccessControlContext;
    .locals 1

    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->acc:Ljava/security/AccessControlContext;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;-><init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/Executors$DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
