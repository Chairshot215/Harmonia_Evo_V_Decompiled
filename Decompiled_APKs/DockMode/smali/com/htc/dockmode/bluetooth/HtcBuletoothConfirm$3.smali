.class Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$3;
.super Ljava/lang/Object;
.source "HtcBuletoothConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$3;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm.3;"
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$3;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 80
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$3;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm.3;"
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$3;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->finish()V

    .line 81
    return-void
.end method
