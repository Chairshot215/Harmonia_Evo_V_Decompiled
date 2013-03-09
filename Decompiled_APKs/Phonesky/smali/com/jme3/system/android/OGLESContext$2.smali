.class final Lcom/jme3/system/android/OGLESContext$2;
.super Ljava/lang/Object;
.source "OGLESContext.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jme3/system/android/OGLESContext;->initInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/system/android/OGLESContext;


# direct methods
.method constructor <init>(Lcom/jme3/system/android/OGLESContext;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/jme3/system/android/OGLESContext$2;->this$0:Lcom/jme3/system/android/OGLESContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "thread"
    .parameter "thrown"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/jme3/system/android/OGLESContext$2;->this$0:Lcom/jme3/system/android/OGLESContext;

    iget-object v0, v0, Lcom/jme3/system/android/OGLESContext;->listener:Lcom/jme3/system/SystemListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/jme3/system/SystemListener;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    return-void
.end method
