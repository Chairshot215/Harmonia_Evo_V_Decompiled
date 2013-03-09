.class Lcom/htc/htcsettingwidgets/HotspotWidget$3;
.super Ljava/lang/Object;
.source "HotspotWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcsettingwidgets/HotspotWidget;->showRemindDialog()V
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
    .line 259
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$3;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/HotspotWidget$3;->this$0:Lcom/htc/htcsettingwidgets/HotspotWidget;

    #calls: Lcom/htc/htcsettingwidgets/HotspotWidget;->doShowRemindDialog()V
    invoke-static {v1}, Lcom/htc/htcsettingwidgets/HotspotWidget;->access$600(Lcom/htc/htcsettingwidgets/HotspotWidget;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
