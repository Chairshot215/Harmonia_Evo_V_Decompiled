.class Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;
.super Ljava/lang/Object;
.source "WifiOffloadAutoOnSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 116
    if-nez p3, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    #calls: Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->setupTimer()V
    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->access$000(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->finish()V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    if-ne p3, v2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    #getter for: Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->access$100(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiOffloadManager;->persistNeverAutoTurnOn(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    #getter for: Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->access$100(Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 122
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    sput-boolean v2, Lcom/android/settings/wifi/WifiOffloadManager;->mDontReset:Z

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings$1;->this$0:Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->finish()V

    goto :goto_0
.end method
