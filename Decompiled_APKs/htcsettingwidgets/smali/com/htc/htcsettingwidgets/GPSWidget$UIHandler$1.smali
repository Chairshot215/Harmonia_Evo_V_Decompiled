.class Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$1;
.super Ljava/lang/Object;
.source "GPSWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$1;->this$1:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$1;->this$1:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    iget-object v0, v0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$1100(Lcom/htc/htcsettingwidgets/GPSWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 228
    return-void
.end method
