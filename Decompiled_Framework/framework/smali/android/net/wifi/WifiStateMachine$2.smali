.class Landroid/net/wifi/WifiStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v2, "availableArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "activeArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v3, 0x2001d

    new-instance v4, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$2;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v4, v5, v1, v0}, Landroid/net/wifi/WifiStateMachine$TetherStateChange;-><init>(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    return-void
.end method
