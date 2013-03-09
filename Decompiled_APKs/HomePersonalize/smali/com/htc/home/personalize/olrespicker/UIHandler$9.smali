.class Lcom/htc/home/personalize/olrespicker/UIHandler$9;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/UIHandler;->alertNetworkProblem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/UIHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$9;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$9;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    #getter for: Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->access$000(Lcom/htc/home/personalize/olrespicker/UIHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 313
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$9;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/home/personalize/olrespicker/UIHandler;->showNetworkSetting:Z

    .line 314
    return-void
.end method
