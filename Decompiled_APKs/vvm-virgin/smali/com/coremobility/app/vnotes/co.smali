.class final Lcom/coremobility/app/vnotes/co;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/cf;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/coremobility/app/vnotes/cf;I)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/co;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p2, p0, Lcom/coremobility/app/vnotes/co;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x87

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/coremobility/app/vnotes/co;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
