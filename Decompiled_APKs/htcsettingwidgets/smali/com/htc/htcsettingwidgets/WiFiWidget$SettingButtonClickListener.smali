.class Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WiFiWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/WiFiWidget;
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
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/WiFiWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/WiFiWidget;Lcom/htc/htcsettingwidgets/WiFiWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/WiFiWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 101
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 102
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #calls: Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$100(Lcom/htc/htcsettingwidgets/WiFiWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$200(Lcom/htc/htcsettingwidgets/WiFiWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$200(Lcom/htc/htcsettingwidgets/WiFiWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 109
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WiFiWidget;

    #calls: Lcom/htc/htcsettingwidgets/WiFiWidget;->setWiFiOn()V
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/WiFiWidget;->access$300(Lcom/htc/htcsettingwidgets/WiFiWidget;)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
