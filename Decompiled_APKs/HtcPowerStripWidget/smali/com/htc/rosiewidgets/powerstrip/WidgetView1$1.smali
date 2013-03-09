.class Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;
.super Ljava/lang/Object;
.source "WidgetView1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Screen_Brightness:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenBrightness;->deinit()V

    .line 224
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetScreenTimeout;->deinit()V

    .line 225
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Wifi:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->deinit()V

    .line 226
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Background_Data:Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBackgroundData;->deinit()V

    .line 227
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->Widget_Bluetooth:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->deinit()V

    .line 228
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetView1;

    #calls: Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->getFxControls()V
    invoke-static {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetView1;->access$000(Lcom/htc/rosiewidgets/powerstrip/WidgetView1;)V

    .line 229
    return-void
.end method
