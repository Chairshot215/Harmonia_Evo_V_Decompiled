.class Lcom/htc/home/personalize/olrespicker/UIHandler$1;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/UIHandler;->alertNoEnoughStorage()V
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
    .line 221
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$1;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$1;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    #getter for: Lcom/htc/home/personalize/olrespicker/UIHandler;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/home/personalize/olrespicker/UIHandler;->access$000(Lcom/htc/home/personalize/olrespicker/UIHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 227
    return-void
.end method
