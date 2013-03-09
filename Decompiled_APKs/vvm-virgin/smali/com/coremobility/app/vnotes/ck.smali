.class final Lcom/coremobility/app/vnotes/ck;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/cf;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ck;->a:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ck;->a:Lcom/coremobility/app/vnotes/cf;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/cf;I)V

    return-void
.end method
