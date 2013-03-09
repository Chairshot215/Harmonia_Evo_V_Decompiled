.class Lcom/htc/dmc/DmrListActivity$8;
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
    .line 1118
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$8;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 1120
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$8;->this$0:Lcom/htc/dmc/DmrListActivity;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/htc/dmc/DmrListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1121
    .local v0, wifiMan:Landroid/net/wifi/WifiManager;
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$8;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$400(Lcom/htc/dmc/DmrListActivity;)I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1122
    return-void

    .line 1121
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
