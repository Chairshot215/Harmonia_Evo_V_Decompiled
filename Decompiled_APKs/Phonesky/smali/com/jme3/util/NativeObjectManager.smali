.class public Lcom/jme3/util/NativeObjectManager;
.super Ljava/lang/Object;
.source "NativeObjectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private refList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/util/NativeObjectManager$NativeObjectRef;",
            ">;"
        }
    .end annotation
.end field

.field private refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refList:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/jme3/util/NativeObjectManager;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public deleteAllObjects(Ljava/lang/Object;)V
    .locals 4
    .parameter "rendererObject"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/jme3/util/NativeObjectManager;->deleteUnused(Ljava/lang/Object;)V

    .line 111
    iget-object v3, p0, Lcom/jme3/util/NativeObjectManager;->refList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    .line 112
    .local v2, ref:Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    #getter for: Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->objClone:Lcom/jme3/util/NativeObject;
    invoke-static {v2}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$100(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Lcom/jme3/util/NativeObject;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jme3/util/NativeObject;->deleteObject(Ljava/lang/Object;)V

    .line 113
    #getter for: Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->realObj:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$200(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/NativeObject;

    .line 114
    .local v1, realObj:Lcom/jme3/util/NativeObject;
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->resetObject()V

    goto :goto_0

    .line 120
    .end local v1           #realObj:Lcom/jme3/util/NativeObject;
    .end local v2           #ref:Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    :cond_1
    iget-object v3, p0, Lcom/jme3/util/NativeObjectManager;->refList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 121
    return-void
.end method

.method public deleteUnused(Ljava/lang/Object;)V
    .locals 5
    .parameter "rendererObject"

    .prologue
    .line 95
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    .line 96
    .local v0, ref:Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    if-nez v0, :cond_1

    .line 97
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/jme3/util/NativeObjectManager;->refList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    #getter for: Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->objClone:Lcom/jme3/util/NativeObject;
    invoke-static {v0}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$100(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Lcom/jme3/util/NativeObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/util/NativeObject;->deleteObject(Ljava/lang/Object;)V

    .line 101
    sget-object v1, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Deleted: {0}"

    #getter for: Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->objClone:Lcom/jme3/util/NativeObject;
    invoke-static {v0}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$100(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Lcom/jme3/util/NativeObject;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerForCleanup(Lcom/jme3/util/NativeObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 84
    new-instance v0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    invoke-direct {v0, p0, p1}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;-><init>(Lcom/jme3/util/NativeObjectManager;Lcom/jme3/util/NativeObject;)V

    .line 85
    .local v0, ref:Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    iget-object v1, p0, Lcom/jme3/util/NativeObjectManager;->refList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "Registered: {0}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    return-void
.end method

.method public resetObjects()V
    .locals 6

    .prologue
    .line 127
    iget-object v3, p0, Lcom/jme3/util/NativeObjectManager;->refList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;

    .line 130
    .local v2, ref:Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    #getter for: Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->realObj:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->access$200(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/NativeObject;

    .line 131
    .local v1, realObj:Lcom/jme3/util/NativeObject;
    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->resetObject()V

    .line 135
    sget-object v3, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    sget-object v3, Lcom/jme3/util/NativeObjectManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "Reset: {0}"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v1           #realObj:Lcom/jme3/util/NativeObject;
    .end local v2           #ref:Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
    :cond_1
    iget-object v3, p0, Lcom/jme3/util/NativeObjectManager;->refList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 139
    return-void
.end method
