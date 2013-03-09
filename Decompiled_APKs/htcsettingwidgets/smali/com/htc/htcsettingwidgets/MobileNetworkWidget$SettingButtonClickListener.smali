.class Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MobileNetworkWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/MobileNetworkWidget;
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
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 137
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "On Click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPhoneService()Z
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$400(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z

    move-result v0

    .line 139
    .local v0, bInService:Z
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 140
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mSettingOn:Z
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$600(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->setMobileNetworkOn(Z)V
    invoke-static {v2, v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$700(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V

    .line 145
    :goto_1
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "This control is disabled, please wait state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$800(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$800(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_1
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
