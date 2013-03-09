.class Lcom/android/settings/wifi/WifiApEnabler$7;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;

.field final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$7;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiApEnabler$7;->val$isEnable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 266
    const-string v1, "WifiApEnabler"

    const-string v2, "MMS is downloading, user still wanna turn on WifiRouter!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$7;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$7;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    #getter for: Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 269
    .local v0, currentstate:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler$7;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApEnabler$7;->val$isEnable:Z

    #calls: Lcom/android/settings/wifi/WifiApEnabler;->setWifiAPEnable(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->access$600(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    .line 274
    .end local v0           #currentstate:I
    :cond_0
    return-void
.end method
