.class Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;
.super Landroid/os/Handler;
.source "HotspotWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/HotspotWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/HotspotWidget;Lcom/htc/htcsettingwidgets/HotspotWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 483
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 491
    :goto_0
    return-void

    .line 486
    :pswitch_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotOn()V
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$900(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x22b9
        :pswitch_0
    .end packed-switch
.end method
