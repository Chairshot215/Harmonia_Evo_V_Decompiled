.class public Ljava/lang/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# instance fields
.field protected inCheck:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAccept(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public checkAccess(Ljava/lang/Thread;)V
    .locals 0

    return-void
.end method

.method public checkAccess(Ljava/lang/ThreadGroup;)V
    .locals 0

    return-void
.end method

.method public checkAwtEventQueueAccess()V
    .locals 0

    return-void
.end method

.method public checkConnect(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public checkConnect(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public checkCreateClassLoader()V
    .locals 0

    return-void
.end method

.method public checkDelete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkExec(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkExit(I)V
    .locals 0

    return-void
.end method

.method public checkLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkListen(I)V
    .locals 0

    return-void
.end method

.method public checkMemberAccess(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;)V
    .locals 0

    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public checkPackageAccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkPackageDefinition(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .locals 0

    return-void
.end method

.method public checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public checkPrintJobAccess()V
    .locals 0

    return-void
.end method

.method public checkPropertiesAccess()V
    .locals 0

    return-void
.end method

.method public checkPropertyAccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkRead(Ljava/io/FileDescriptor;)V
    .locals 0

    return-void
.end method

.method public checkRead(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkRead(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public checkSecurityAccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkSetFactory()V
    .locals 0

    return-void
.end method

.method public checkSystemClipboardAccess()V
    .locals 0

    return-void
.end method

.method public checkTopLevelWindow(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkWrite(Ljava/io/FileDescriptor;)V
    .locals 0

    return-void
.end method

.method public checkWrite(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected classDepth(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method protected classLoaderDepth()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method protected currentClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected currentLoadedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getClassContext()[Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInCheck()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    return v0
.end method

.method public getSecurityContext()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method protected inClass(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected inClassLoader()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
