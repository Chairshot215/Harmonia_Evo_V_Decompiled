.class Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "BTWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/BTWidget;
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
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/BTWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/BTWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/BTWidget;Lcom/htc/htcsettingwidgets/BTWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/BTWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    #calls: Lcom/htc/htcsettingwidgets/BTWidget;->isToggleable()Z
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/BTWidget;->access$100(Lcom/htc/htcsettingwidgets/BTWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    #getter for: Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/BTWidget;->access$200(Lcom/htc/htcsettingwidgets/BTWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/htc/htcsettingwidgets/BTWidget;->setBTOn(Z)V
    invoke-static {v1, v0}, Lcom/htc/htcsettingwidgets/BTWidget;->access$300(Lcom/htc/htcsettingwidgets/BTWidget;Z)V

    .line 120
    :goto_1
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    #getter for: Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/BTWidget;->access$400(Lcom/htc/htcsettingwidgets/BTWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/BTWidget;

    #getter for: Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/BTWidget;->access$400(Lcom/htc/htcsettingwidgets/BTWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_1
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
