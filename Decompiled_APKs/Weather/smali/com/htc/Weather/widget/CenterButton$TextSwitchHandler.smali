.class Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;
.super Landroid/os/Handler;
.source "CenterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/CenterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextSwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/CenterButton;


# direct methods
.method private constructor <init>(Lcom/htc/Weather/widget/CenterButton;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->this$0:Lcom/htc/Weather/widget/CenterButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/Weather/widget/CenterButton;Lcom/htc/Weather/widget/CenterButton$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;-><init>(Lcom/htc/Weather/widget/CenterButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->this$0:Lcom/htc/Weather/widget/CenterButton;

    #getter for: Lcom/htc/Weather/widget/CenterButton;->mDownText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/Weather/widget/CenterButton;->access$000(Lcom/htc/Weather/widget/CenterButton;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->this$0:Lcom/htc/Weather/widget/CenterButton;

    iget-object v1, p0, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->this$0:Lcom/htc/Weather/widget/CenterButton;

    #getter for: Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z
    invoke-static {v1}, Lcom/htc/Weather/widget/CenterButton;->access$100(Lcom/htc/Weather/widget/CenterButton;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/CenterButton;->showText(Z)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch -0xffffff
        :pswitch_0
    .end packed-switch
.end method
