.class Lcom/htc/widget/TabSwitchWidget$3;
.super Landroid/os/Handler;
.source "TabSwitchWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchWidget;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1771
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget$3;->this$0:Lcom/htc/widget/TabSwitchWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1774
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1775
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1781
    :goto_0
    return-void

    .line 1778
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget$3;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #calls: Lcom/htc/widget/TabSwitchWidget;->setOnKey()V
    invoke-static {v0}, Lcom/htc/widget/TabSwitchWidget;->access$500(Lcom/htc/widget/TabSwitchWidget;)V

    goto :goto_0

    .line 1775
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
