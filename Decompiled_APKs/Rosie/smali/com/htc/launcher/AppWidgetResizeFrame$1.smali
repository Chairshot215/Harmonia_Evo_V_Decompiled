.class Lcom/htc/launcher/AppWidgetResizeFrame$1;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/AppWidgetResizeFrame;->commitResizeForDelta(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/htc/launcher/AppWidgetResizeFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/htc/launcher/AppWidgetResizeFrame$1;->this$0:Lcom/htc/launcher/AppWidgetResizeFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame$1;->this$0:Lcom/htc/launcher/AppWidgetResizeFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/launcher/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 315
    return-void
.end method
