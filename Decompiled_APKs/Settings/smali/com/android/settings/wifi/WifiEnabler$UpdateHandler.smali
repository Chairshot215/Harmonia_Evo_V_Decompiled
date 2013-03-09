.class Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;
.super Landroid/os/Handler;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/wifi/WifiEnabler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #calls: Lcom/android/settings/wifi/WifiEnabler;->checkWifiPolicy()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$000(Lcom/android/settings/wifi/WifiEnabler;)V

    .line 73
    :cond_0
    return-void
.end method
