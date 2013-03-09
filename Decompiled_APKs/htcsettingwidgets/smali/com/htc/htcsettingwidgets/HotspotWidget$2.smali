.class Lcom/htc/htcsettingwidgets/HotspotWidget$2;
.super Ljava/lang/Object;
.source "HotspotWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$2;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$2;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #getter for: Lcom/htc/htcsettingwidgets/HotspotWidget;->remindDialog:I
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$300(Lcom/htc/htcsettingwidgets/HotspotWidget;)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$2;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->showRemindDialog()V
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$400(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$2;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->setHotspotState()V
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$500(Lcom/htc/htcsettingwidgets/HotspotWidget;)V

    goto :goto_0
.end method
