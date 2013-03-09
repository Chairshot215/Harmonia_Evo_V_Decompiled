.class Lcom/htc/dmc/DmrListActivity$3;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dmc/DmrListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$3;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 751
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v0, intent_tmp:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 753
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 754
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$3;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v1, v0}, Lcom/htc/dmc/DmrListActivity;->startActivity(Landroid/content/Intent;)V

    .line 756
    return-void
.end method
