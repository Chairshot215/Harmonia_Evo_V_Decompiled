.class public Lcom/jme3/asset/ImplHandler$ImplThreadLocal;
.super Ljava/lang/ThreadLocal;
.source "ImplHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/asset/ImplHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImplThreadLocal"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/jme3/asset/ImplHandler;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jme3/asset/ImplHandler;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->this$0:Lcom/jme3/asset/ImplHandler;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->type:Ljava/lang/Class;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->path:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/ImplHandler;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->this$0:Lcom/jme3/asset/ImplHandler;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->type:Ljava/lang/Class;

    .line 79
    iput-object p3, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->path:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, ex:Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/jme3/asset/ImplHandler;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Cannot create locator of type {0}, does the class have an empty and publically accessible constructor?"

    iget-object v4, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Lcom/jme3/asset/ImplHandler;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, ex:Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/jme3/asset/ImplHandler;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Cannot create locator of type {0}, does the class have an empty and publically accessible constructor?"

    iget-object v4, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/jme3/asset/ImplHandler;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/asset/ImplHandler$ImplThreadLocal;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->throwing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
