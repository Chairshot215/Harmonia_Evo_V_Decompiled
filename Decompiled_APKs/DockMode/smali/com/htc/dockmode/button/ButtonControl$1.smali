.class Lcom/htc/dockmode/button/ButtonControl$1;
.super Ljava/lang/Object;
.source "ButtonControl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 164
    iput-object p1, p0, Lcom/htc/dockmode/button/ButtonControl$1;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl$1;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #getter for: Lcom/htc/dockmode/button/ButtonControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;
    invoke-static {v0}, Lcom/htc/dockmode/button/ButtonControl;->access$100(Lcom/htc/dockmode/button/ButtonControl;)Lcom/htc/dockmode/utils/AutoResume;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/button/ButtonControl$1;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #getter for: Lcom/htc/dockmode/button/ButtonControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/dockmode/button/ButtonControl;->access$000(Lcom/htc/dockmode/button/ButtonControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/dockmode/utils/AutoResume;->gotoRecentApp(Landroid/content/Context;)V

    .line 167
    return-void
.end method
