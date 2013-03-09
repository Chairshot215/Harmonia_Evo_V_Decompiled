.class Lcom/android/systemui/statusbar/preference/HotSpot$3$1;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/HotSpot$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/preference/HotSpot$3;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot$3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->this$1:Lcom/android/systemui/statusbar/preference/HotSpot$3;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->val$enable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->this$1:Lcom/android/systemui/statusbar/preference/HotSpot$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #getter for: Lcom/android/systemui/statusbar/preference/HotSpot;->remindDialog:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$600(Lcom/android/systemui/statusbar/preference/HotSpot;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->this$1:Lcom/android/systemui/statusbar/preference/HotSpot$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->val$enable:Z

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->showRemindDialog(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$500(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->this$1:Lcom/android/systemui/statusbar/preference/HotSpot$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #getter for: Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$800(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->this$1:Lcom/android/systemui/statusbar/preference/HotSpot$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #getter for: Lcom/android/systemui/statusbar/preference/HotSpot;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$800(Lcom/android/systemui/statusbar/preference/HotSpot;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->this$1:Lcom/android/systemui/statusbar/preference/HotSpot$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3$1;->val$enable:Z

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->switchHotspotOnOff(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$900(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    goto :goto_0
.end method
