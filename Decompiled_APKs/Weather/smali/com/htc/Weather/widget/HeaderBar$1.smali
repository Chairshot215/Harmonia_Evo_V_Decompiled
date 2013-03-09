.class Lcom/htc/Weather/widget/HeaderBar$1;
.super Ljava/lang/Object;
.source "HeaderBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/HeaderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/widget/HeaderBar;


# direct methods
.method constructor <init>(Lcom/htc/Weather/widget/HeaderBar;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/Weather/widget/HeaderBar$1;->this$0:Lcom/htc/Weather/widget/HeaderBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar$1;->this$0:Lcom/htc/Weather/widget/HeaderBar;

    #getter for: Lcom/htc/Weather/widget/HeaderBar;->switchTwoPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/Weather/widget/HeaderBar;->access$000(Lcom/htc/Weather/widget/HeaderBar;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar$1;->this$0:Lcom/htc/Weather/widget/HeaderBar;

    #getter for: Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/Weather/widget/HeaderBar;->access$100(Lcom/htc/Weather/widget/HeaderBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    :cond_0
    return-void
.end method
