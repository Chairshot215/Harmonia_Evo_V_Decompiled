.class Lcom/htc/shutdown/AnimationView$1;
.super Landroid/os/Handler;
.source "AnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/shutdown/AnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/shutdown/AnimationView;


# direct methods
.method constructor <init>(Lcom/htc/shutdown/AnimationView;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/htc/shutdown/AnimationView$1;->this$0:Lcom/htc/shutdown/AnimationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 304
    return-void

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/htc/shutdown/AnimationView$1;->this$0:Lcom/htc/shutdown/AnimationView;

    #calls: Lcom/htc/shutdown/AnimationView;->prepareDraw()V
    invoke-static {v0}, Lcom/htc/shutdown/AnimationView;->access$000(Lcom/htc/shutdown/AnimationView;)V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
