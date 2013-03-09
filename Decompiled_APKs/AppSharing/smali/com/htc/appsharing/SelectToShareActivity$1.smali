.class Lcom/htc/appsharing/SelectToShareActivity$1;
.super Landroid/os/Handler;
.source "SelectToShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/appsharing/SelectToShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/appsharing/SelectToShareActivity;


# direct methods
.method constructor <init>(Lcom/htc/appsharing/SelectToShareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/appsharing/SelectToShareActivity$1;->this$0:Lcom/htc/appsharing/SelectToShareActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v1, p0, Lcom/htc/appsharing/SelectToShareActivity$1;->this$0:Lcom/htc/appsharing/SelectToShareActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    #calls: Lcom/htc/appsharing/SelectToShareActivity;->onAppInfoLoaded(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/htc/appsharing/SelectToShareActivity;->access$000(Lcom/htc/appsharing/SelectToShareActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
