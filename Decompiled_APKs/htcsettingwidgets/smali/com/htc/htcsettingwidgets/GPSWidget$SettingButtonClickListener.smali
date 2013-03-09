.class Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "GPSWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/GPSWidget;
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
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/GPSWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/GPSWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/GPSWidget;Lcom/htc/htcsettingwidgets/GPSWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/GPSWidget;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 131
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mUiHandler:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$200(Lcom/htc/htcsettingwidgets/GPSWidget;)Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->sendEmptyMessage(I)Z

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->setGPSOn(Z)V
    invoke-static {v1, v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$400(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/htcsettingwidgets/GPSWidget$SettingButtonClickListener;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
