.class Lcom/htc/home/personalize/olrespicker/UIHandler$4;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/UIHandler;->alertLimitReached()V
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
    .line 258
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$4;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/UIHandler$4;->this$0:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 262
    return-void
.end method
