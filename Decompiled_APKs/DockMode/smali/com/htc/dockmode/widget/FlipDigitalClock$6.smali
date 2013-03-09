.class Lcom/htc/dockmode/widget/FlipDigitalClock$6;
.super Ljava/lang/Object;
.source "FlipDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/widget/FlipDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/widget/FlipDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$6;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/htc/dockmode/widget/FlipDigitalClock$6;->this$0:Lcom/htc/dockmode/widget/FlipDigitalClock;

    invoke-virtual {v0}, Lcom/htc/dockmode/widget/FlipDigitalClock;->startAnimation()V

    .line 605
    return-void
.end method
