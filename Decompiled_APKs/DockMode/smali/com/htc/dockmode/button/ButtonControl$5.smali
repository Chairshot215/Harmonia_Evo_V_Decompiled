.class Lcom/htc/dockmode/button/ButtonControl$5;
.super Ljava/lang/Object;
.source "ButtonControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/button/ButtonControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/button/ButtonControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/button/ButtonControl;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/htc/dockmode/button/ButtonControl$5;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl$5;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #calls: Lcom/htc/dockmode/button/ButtonControl;->gotoPhotoFrame()V
    invoke-static {v0}, Lcom/htc/dockmode/button/ButtonControl;->access$700(Lcom/htc/dockmode/button/ButtonControl;)V

    .line 420
    return-void
.end method
