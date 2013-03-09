.class Lcom/htc/launcher/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/AppWidgetResizeFrame;->snapToWidget(Z)V
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
    .line 366
    iput-object p1, p0, Lcom/htc/launcher/AppWidgetResizeFrame$2;->this$0:Lcom/htc/launcher/AppWidgetResizeFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame$2;->this$0:Lcom/htc/launcher/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 369
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame$2;->this$0:Lcom/htc/launcher/AppWidgetResizeFrame;

    const/4 v1, 0x1

    #calls: Lcom/htc/launcher/AppWidgetResizeFrame;->setBackgroundOutline(Z)V
    invoke-static {v0, v1}, Lcom/htc/launcher/AppWidgetResizeFrame;->access$000(Lcom/htc/launcher/AppWidgetResizeFrame;Z)V

    .line 370
    return-void
.end method
