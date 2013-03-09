.class Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$2;
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
    .line 220
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$2;->this$1:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$2;->this$1:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    iget-object v1, v0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler$2;->this$1:Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;

    iget-object v0, v0, Lcom/htc/htcsettingwidgets/GPSWidget$UIHandler;->this$0:Lcom/htc/htcsettingwidgets/GPSWidget;

    #getter for: Lcom/htc/htcsettingwidgets/GPSWidget;->mSettingOn:Z
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$300(Lcom/htc/htcsettingwidgets/GPSWidget;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/htc/htcsettingwidgets/GPSWidget;->setGPSOn(Z)V
    invoke-static {v1, v0}, Lcom/htc/htcsettingwidgets/GPSWidget;->access$400(Lcom/htc/htcsettingwidgets/GPSWidget;Z)V

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
