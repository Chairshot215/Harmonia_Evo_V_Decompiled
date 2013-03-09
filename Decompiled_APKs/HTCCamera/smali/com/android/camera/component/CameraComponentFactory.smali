.class public abstract Lcom/android/camera/component/CameraComponentFactory;
.super Lcom/android/camera/ThreadDependencyObject;
.source "CameraComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;
    }
.end annotation


# static fields
.field private static final STATIC_TAG:Ljava/lang/String; = "CameraComponentFactory"

.field private static final m_ComponentInfos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_ComponentOwner:Lcom/android/camera/component/IComponentOwner;

.field private final m_ConstructorParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/component/CameraComponentFactory;->m_ComponentInfos:Ljava/util/Hashtable;

    return-void
.end method

.method public varargs constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/component/IComponentOwner;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            "Lcom/android/camera/component/IComponentOwner;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "owner"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/camera/component/CameraComponentFactory;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/component/CameraComponentFactory;->m_ComponentOwner:Lcom/android/camera/component/IComponentOwner;

    iput-object p3, p0, Lcom/android/camera/component/CameraComponentFactory;->m_ConstructorParamTypes:[Ljava/lang/Class;

    return-void
.end method

.method private getComponentInfo(Ljava/lang/Class;)Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;

    invoke-direct {v0, p1}, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;-><init>(Ljava/lang/Class;)V

    :try_start_0
    const-string v2, "isSupported"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/android/camera/HTCCamera;

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->isSupportedMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/component/CameraComponentFactory;->m_ConstructorParamTypes:[Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CameraComponentFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checker method for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not defined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "CameraComponentFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find proper constructor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public createAllSupportedComponents()V
    .locals 14

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "createAllSupportedComponents() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/camera/component/CameraComponentFactory;->getComponentClasses()[Ljava/lang/Class;

    move-result-object v0

    iget-object v8, p0, Lcom/android/camera/component/CameraComponentFactory;->m_ComponentOwner:Lcom/android/camera/component/IComponentOwner;

    invoke-interface {v8}, Lcom/android/camera/component/IComponentOwner;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v5

    sget-object v9, Lcom/android/camera/component/CameraComponentFactory;->m_ComponentInfos:Ljava/util/Hashtable;

    monitor-enter v9

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    array-length v8, v0

    if-ge v4, v8, :cond_3

    aget-object v1, v0, v4

    sget-object v8, Lcom/android/camera/component/CameraComponentFactory;->m_ComponentInfos:Ljava/util/Hashtable;

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/component/CameraComponentFactory;->getComponentInfo(Ljava/lang/Class;)Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;

    move-result-object v2

    sget-object v8, Lcom/android/camera/component/CameraComponentFactory;->m_ComponentInfos:Ljava/util/Hashtable;

    invoke-virtual {v8, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v8, v2, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->isSupportedMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    :try_start_1
    iget-object v8, v2, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->isSupportedMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/camera/component/CameraComponentFactory;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-nez v8, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occurred while calling checker method for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_1
    :try_start_3
    iget-object v8, v2, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No constructor for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    iget-object v8, v2, Lcom/android/camera/component/CameraComponentFactory$ComponentInfo;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/component/CameraComponentFactory;->m_ComponentOwner:Lcom/android/camera/component/IComponentOwner;

    aput-object v12, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/component/Component;

    invoke-virtual {v5, v8}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    :cond_3
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createAllSupportedComponents() - end : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract getComponentClasses()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
