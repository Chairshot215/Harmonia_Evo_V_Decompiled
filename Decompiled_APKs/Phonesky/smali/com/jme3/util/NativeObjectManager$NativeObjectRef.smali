.class Lcom/jme3/util/NativeObjectManager$NativeObjectRef;
.super Ljava/lang/ref/PhantomReference;
.source "NativeObjectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/NativeObjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeObjectRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private objClone:Lcom/jme3/util/NativeObject;

.field private realObj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jme3/util/NativeObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jme3/util/NativeObjectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/jme3/util/NativeObjectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/jme3/util/NativeObjectManager;Lcom/jme3/util/NativeObject;)V
    .locals 2
    .parameter
    .parameter "obj"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->this$0:Lcom/jme3/util/NativeObjectManager;

    .line 72
    iget-object v0, p2, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    #getter for: Lcom/jme3/util/NativeObjectManager;->refQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {p1}, Lcom/jme3/util/NativeObjectManager;->access$000(Lcom/jme3/util/NativeObjectManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 73
    sget-boolean v0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/jme3/util/NativeObject;->handleRef:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->realObj:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {p2}, Lcom/jme3/util/NativeObject;->createDestructableClone()Lcom/jme3/util/NativeObject;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->objClone:Lcom/jme3/util/NativeObject;

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Lcom/jme3/util/NativeObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->objClone:Lcom/jme3/util/NativeObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jme3/util/NativeObjectManager$NativeObjectRef;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jme3/util/NativeObjectManager$NativeObjectRef;->realObj:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
