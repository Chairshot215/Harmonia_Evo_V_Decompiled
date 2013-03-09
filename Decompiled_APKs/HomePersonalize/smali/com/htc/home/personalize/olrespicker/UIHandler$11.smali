.class Lcom/htc/home/personalize/olrespicker/UIHandler$11;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/UIHandler;->alertUnknownError()V
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
    .line 330
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$11;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$11;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    #getter for: Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->access$000(Lcom/htc/home/personalize/olrespicker/UIHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 334
    return-void
.end method
