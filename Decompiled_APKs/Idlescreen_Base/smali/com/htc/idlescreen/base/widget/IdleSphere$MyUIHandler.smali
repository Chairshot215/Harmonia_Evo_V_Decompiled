.class Lcom/htc/idlescreen/base/widget/IdleSphere$MyUIHandler;
.super Landroid/os/Handler;
.source "IdleSphere.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/widget/IdleSphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/widget/IdleSphere;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/widget/IdleSphere;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/IdleSphere$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleSphere;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 50
    .local v0, isVisible:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/IdleSphere$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/widget/IdleSphere;

    #calls: Lcom/htc/idlescreen/base/widget/IdleSphere;->handleNameVisible(Z)V
    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/widget/IdleSphere;->access$000(Lcom/htc/idlescreen/base/widget/IdleSphere;Z)V

    goto :goto_0

    .line 49
    .end local v0           #isVisible:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
