.class Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass$1;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WidgetBaseClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;
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
.field final synthetic this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass$1;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/Integer;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass$1;->this$0:Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass;->pressIcon()V

    .line 31
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/rosiewidgets/backgrounddata/WidgetBaseClass$1;->onMessageReceived(Ljava/lang/Integer;)V

    return-void
.end method
