.class Lcom/htc/dmc/HtcDMC$24;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 4099
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$24;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 4101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4102
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/dmc/HtcDMC;->access$800()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4103
    const-string v1, "cookie"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$24;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurCookie:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$500(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4104
    const-string v1, "filter"

    iget-object v2, p0, Lcom/htc/dmc/HtcDMC$24;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mCurFCap:I
    invoke-static {v2}, Lcom/htc/dmc/HtcDMC;->access$6500(Lcom/htc/dmc/HtcDMC;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4108
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$24;->this$0:Lcom/htc/dmc/HtcDMC;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/htc/dmc/HtcDMC;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4109
    return-void
.end method
