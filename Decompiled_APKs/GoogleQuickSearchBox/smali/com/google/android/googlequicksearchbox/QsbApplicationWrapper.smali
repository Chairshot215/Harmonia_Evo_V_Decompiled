.class public Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;
.super Landroid/app/Application;
.source "QsbApplicationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    }
.end annotation


# instance fields
.field private final mApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApps:Ljava/util/HashMap;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mNextId:I

    .line 90
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addTestApp(Lcom/google/android/googlequicksearchbox/QsbApplication;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getContext()Lcom/google/android/googlequicksearchbox/QsbContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbContext;->getId()I

    move-result v0

    .line 52
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Test error: Cannot add default QsbApplication"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 55
    .restart local v0       #id:I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;

    invoke-direct {v3, p0, p1}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;-><init>(Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;Lcom/google/android/googlequicksearchbox/QsbApplication;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized get(I)Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, -0x1

    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;

    .line 69
    .local v1, appRef:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    if-nez v1, :cond_0

    .line 70
    if-ne p1, v4, :cond_1

    .line 71
    new-instance v1, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;

    .end local v1           #appRef:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    new-instance v2, Lcom/google/android/googlequicksearchbox/QsbApplication;

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/google/android/googlequicksearchbox/QsbApplication;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;-><init>(Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;Lcom/google/android/googlequicksearchbox/QsbApplication;)V

    .line 72
    .restart local v1       #appRef:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApps:Ljava/util/HashMap;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;->get()Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    .line 78
    .local v0, app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    if-nez v0, :cond_2

    .line 79
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test error: App with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v0           #app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    .end local v1           #appRef:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 74
    .restart local v1       #appRef:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test error: No app registered with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .restart local v0       #app:Lcom/google/android/googlequicksearchbox/QsbApplication;
    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized nextId()I
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mNextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mNextId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCreate()V
    .locals 0

    .prologue
    .line 42
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->get(I)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->close()V

    .line 87
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 88
    return-void
.end method

.method public declared-synchronized removeTestApp(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;

    .line 61
    .local v0, ref:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    if-nez v0, :cond_0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Test error: No app registered with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0           #ref:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 64
    .restart local v0       #ref:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;->makeWeak()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit p0

    return-void
.end method
