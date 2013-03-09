.class Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WidgetWifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;
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
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 65
    const-string v0, "HtcDataRoamingWidget"

    const-string v1, "Btn is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$1;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->pressIcon()V

    .line 67
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$1;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
