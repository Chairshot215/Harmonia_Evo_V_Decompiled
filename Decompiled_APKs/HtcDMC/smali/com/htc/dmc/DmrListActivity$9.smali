.class Lcom/htc/dmc/DmrListActivity$9;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
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
    .line 1125
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$9;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$9;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$500(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1134
    :goto_0
    return-void

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$9;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->getBTEnabled()I
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$600(Lcom/htc/dmc/DmrListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$9;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$500(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 1132
    :cond_1
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$9;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$500(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method
