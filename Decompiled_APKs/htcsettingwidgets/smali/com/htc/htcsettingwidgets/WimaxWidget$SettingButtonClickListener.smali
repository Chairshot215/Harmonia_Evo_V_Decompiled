.class Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WimaxWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/WimaxWidget;
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
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/WimaxWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/WimaxWidget;Lcom/htc/htcsettingwidgets/WimaxWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/WimaxWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WimaxWidget;->mSettingOn:Z
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->access$100(Lcom/htc/htcsettingwidgets/WimaxWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/htc/htcsettingwidgets/WimaxWidget;->setWimaxOn(Z)V
    invoke-static {v1, v0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->access$200(Lcom/htc/htcsettingwidgets/WimaxWidget;Z)V

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcsettingwidgets/WimaxWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
