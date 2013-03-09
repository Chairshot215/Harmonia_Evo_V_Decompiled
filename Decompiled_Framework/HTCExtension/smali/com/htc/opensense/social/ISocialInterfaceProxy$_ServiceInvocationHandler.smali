.class public Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;
.super Ljava/lang/Object;
.source "ISocialInterfaceProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/ISocialInterfaceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_ServiceInvocationHandler"
.end annotation


# instance fields
.field mService:Lcom/htc/opensense/social/ISocialService;

.field serviceClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/social/ISocialService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    iput-object v0, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->serviceClass:Ljava/lang/Class;

    iput-object p1, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    iget-object v0, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->serviceClass:Ljava/lang/Class;

    return-void
.end method

.method public static getProxy(Lcom/htc/opensense/social/ISocialService;)Lcom/htc/opensense/social/ISocialInterfaceProxy;
    .locals 6

    new-instance v1, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;

    invoke-direct {v1, p0}, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;-><init>(Lcom/htc/opensense/social/ISocialService;)V

    const-class v2, Lcom/htc/opensense/social/ISocialInterfaceProxy;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/htc/opensense/social/ISocialInterfaceProxy;

    aput-object v5, v3, v4

    invoke-static {v2, v3, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/ISocialInterfaceProxy;

    return-object v0
.end method

.method public static unwrap(Lcom/htc/opensense/social/ISocialInterfaceProxy;)Lcom/htc/opensense/social/ISocialService;
    .locals 1

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;

    iget-object v0, v0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v4, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v4}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x1

    new-array v8, v11, [Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    array-length v14, v14

    invoke-static {v11, v12, v8, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    const-class v12, Lcom/htc/opensense/social/RemoteError;

    aput-object v12, v8, v11

    iget-object v11, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->serviceClass:Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget-object v11, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/htc/opensense/social/ISocialService;->supports(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    sget-object v11, Lcom/htc/opensense/social/ErrorCode;->API_NOTSUPPORTED:Lcom/htc/opensense/social/ErrorCode;

    iput-object v11, v4, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/htc/opensense/social/RemoteError;->failed:Z

    const-string v11, "API not supported"

    iput-object v11, v4, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    :cond_0
    move-object/from16 v0, p3

    array-length v11, v0

    add-int/lit8 v11, v11, 0x1

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    aput-object v4, v7, v11

    iget-object v11, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-virtual {v9, v11, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    if-eqz v10, :cond_1

    instance-of v11, v10, Lcom/htc/opensense/social/Core;

    if-eqz v11, :cond_3

    move-object v2, v10

    check-cast v2, Lcom/htc/opensense/social/Core;

    iget-object v11, v2, Lcom/htc/opensense/social/Core;->mService:Lcom/htc/opensense/social/ISocialService;

    if-nez v11, :cond_1

    if-nez p1, :cond_2

    iget-object v11, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    invoke-virtual {v2, v11}, Lcom/htc/opensense/social/Core;->setService(Lcom/htc/opensense/social/ISocialService;)V

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    iget-object v11, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    iput-object v11, v2, Lcom/htc/opensense/social/Core;->mService:Lcom/htc/opensense/social/ISocialService;

    check-cast p1, Lcom/htc/opensense/social/ISocialInterfaceProxy;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/htc/opensense/social/Core;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v10

    check-cast v11, [Lcom/htc/opensense/social/Core;

    move-object v3, v11

    check-cast v3, [Lcom/htc/opensense/social/Core;

    move-object v1, v3

    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    if-eqz v2, :cond_4

    iget-object v11, p0, Lcom/htc/opensense/social/ISocialInterfaceProxy$_ServiceInvocationHandler;->mService:Lcom/htc/opensense/social/ISocialService;

    iput-object v11, v2, Lcom/htc/opensense/social/Core;->mService:Lcom/htc/opensense/social/ISocialService;

    move-object/from16 v11, p1

    check-cast v11, Lcom/htc/opensense/social/ISocialInterfaceProxy;

    iput-object v11, v2, Lcom/htc/opensense/social/Core;->_service:Lcom/htc/opensense/social/ISocialInterfaceProxy;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
