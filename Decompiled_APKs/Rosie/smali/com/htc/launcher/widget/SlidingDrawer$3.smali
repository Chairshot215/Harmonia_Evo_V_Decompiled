.class Lcom/htc/launcher/widget/SlidingDrawer$3;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/widget/SlidingDrawer;->openDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/SlidingDrawer;


# direct methods
.method constructor <init>(Lcom/htc/launcher/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/htc/launcher/widget/SlidingDrawer$3;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 916
    const/4 v0, 0x0

    .line 918
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$3;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    #getter for: Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;
    invoke-static {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->access$400(Lcom/htc/launcher/widget/SlidingDrawer;)Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$3;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    #getter for: Lcom/htc/launcher/widget/SlidingDrawer;->mOnDrawerOpenListener:Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;
    invoke-static {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->access$400(Lcom/htc/launcher/widget/SlidingDrawer;)Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 921
    :cond_0
    return-void
.end method
