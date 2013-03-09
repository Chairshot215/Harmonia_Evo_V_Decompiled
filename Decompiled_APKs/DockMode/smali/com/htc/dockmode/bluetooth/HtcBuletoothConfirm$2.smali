.class Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$2;
.super Ljava/lang/Object;
.source "HtcBuletoothConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 72
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$2;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm.2;"
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$2;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 74
    .local p0, this:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$2;,"Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm.2;"
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$2;->this$0:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;->finish()V

    .line 75
    return-void
.end method
