.class Lcom/htc/rosiewidgets/screentimeout/WidgetView1$1;
.super Ljava/lang/Object;
.source "WidgetView1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/screentimeout/WidgetView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    iget-object v0, v0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->Widget_ScreenTimeout:Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;

    invoke-virtual {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetScreenTimeout;->deinit()V

    .line 149
    iget-object v0, p0, Lcom/htc/rosiewidgets/screentimeout/WidgetView1$1;->this$0:Lcom/htc/rosiewidgets/screentimeout/WidgetView1;

    #calls: Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->getFxControls()V
    invoke-static {v0}, Lcom/htc/rosiewidgets/screentimeout/WidgetView1;->access$000(Lcom/htc/rosiewidgets/screentimeout/WidgetView1;)V

    .line 150
    return-void
.end method
