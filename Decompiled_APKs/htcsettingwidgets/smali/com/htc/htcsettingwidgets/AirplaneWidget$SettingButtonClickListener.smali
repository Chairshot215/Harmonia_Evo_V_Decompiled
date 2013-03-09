.class Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "AirplaneWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/AirplaneWidget;
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
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/AirplaneWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/AirplaneWidget;Lcom/htc/htcsettingwidgets/AirplaneWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/AirplaneWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 105
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #calls: Lcom/htc/htcsettingwidgets/AirplaneWidget;->startActivityForResult(Landroid/content/Intent;I)V
    invoke-static {v1, v2, v0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->access$100(Lcom/htc/htcsettingwidgets/AirplaneWidget;Landroid/content/Intent;I)V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    #calls: Lcom/htc/htcsettingwidgets/AirplaneWidget;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->access$300(Lcom/htc/htcsettingwidgets/AirplaneWidget;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    #setter for: Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z
    invoke-static {v1, v2}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->access$202(Lcom/htc/htcsettingwidgets/AirplaneWidget;Z)Z

    .line 112
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/AirplaneWidget;

    #getter for: Lcom/htc/htcsettingwidgets/AirplaneWidget;->mSettingOn:Z
    invoke-static {v2}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->access$200(Lcom/htc/htcsettingwidgets/AirplaneWidget;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    #calls: Lcom/htc/htcsettingwidgets/AirplaneWidget;->setAirplaneModeOn(Z)V
    invoke-static {v1, v0}, Lcom/htc/htcsettingwidgets/AirplaneWidget;->access$400(Lcom/htc/htcsettingwidgets/AirplaneWidget;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcsettingwidgets/AirplaneWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
