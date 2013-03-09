.class Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WidgetBaseClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;
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
.field final synthetic this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass$1;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 40
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "Btn is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass$1;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass;->pressIcon()V

    .line 42
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/rosiewidgets/screentimeout/WidgetBaseClass$1;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
