.class Lcom/htc/dmc/DmrListActivity$5;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 768
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$5;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 770
    packed-switch p2, :pswitch_data_0

    .line 775
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 772
    :pswitch_0
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$5;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v0}, Lcom/htc/dmc/DmrListActivity;->finish()V

    .line 773
    const/4 v0, 0x1

    goto :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
