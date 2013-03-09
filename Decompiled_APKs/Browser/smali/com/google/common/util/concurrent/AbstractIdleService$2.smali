.class Lcom/google/common/util/concurrent/AbstractIdleService$2;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractIdleService;->executor(Lcom/google/common/base/Service$State;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

.field final synthetic val$state:Lcom/google/common/base/Service$State;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;Lcom/google/common/base/Service$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->val$state:Lcom/google/common/base/Service$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractIdleService;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->val$state:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 91
    return-void
.end method
