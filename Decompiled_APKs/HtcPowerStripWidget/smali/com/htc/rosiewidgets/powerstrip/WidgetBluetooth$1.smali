.class Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WidgetBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 72
    const-string v0, "HtcDataRoamingWidget"

    const-string v1, "Btn is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->pressIcon()V

    .line 74
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$1;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
