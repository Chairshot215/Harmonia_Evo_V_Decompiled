.class Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "HotspotWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/HotspotWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingButtonClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/HotspotWidget;Lcom/htc/htcsettingwidgets/HotspotWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 3
    .parameter "message"

    .prologue
    const/16 v2, 0x22b9

    .line 155
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$200(Lcom/htc/htcsettingwidgets/HotspotWidget;)Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$200(Lcom/htc/htcsettingwidgets/HotspotWidget;)Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$200(Lcom/htc/htcsettingwidgets/HotspotWidget;)Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;->removeMessages(I)V

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$200(Lcom/htc/htcsettingwidgets/HotspotWidget;)Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$200(Lcom/htc/htcsettingwidgets/HotspotWidget;)Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/htcsettingwidgets/HotspotWidget$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcsettingwidgets/HotspotWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
