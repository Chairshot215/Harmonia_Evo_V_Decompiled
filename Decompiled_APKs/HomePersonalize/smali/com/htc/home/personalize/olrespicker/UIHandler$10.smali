.class Lcom/htc/home/personalize/olrespicker/UIHandler$10;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 324
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$10;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$10;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    #getter for: Lcom/htc/home/personalize/olrespicker/UIHandler;->onlineList:Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;
    invoke-static {v0}, Lcom/htc/home/personalize/olrespicker/UIHandler;->access$100(Lcom/htc/home/personalize/olrespicker/UIHandler;)Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/home/personalize/olrespicker/UIHandler$OnlineResourcePicker;->reloadList()V

    .line 328
    return-void
.end method
