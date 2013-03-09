.class Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper$MyHandler;
.super Landroid/os/Handler;
.source "IdleScreenEngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper$MyHandler;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper$MyHandler;->this$0:Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngineWrapper;->executeMessage(Landroid/os/Message;)V

    return-void
.end method
