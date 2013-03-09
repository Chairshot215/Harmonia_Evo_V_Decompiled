.class Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMainBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/widget/ActivityMainBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sceneBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/ActivityMainBase;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;->this$0:Lcom/htc/opensense2/widget/ActivityMainBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/widget/ActivityMainBase;Lcom/htc/opensense2/widget/ActivityMainBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;->this$0:Lcom/htc/opensense2/widget/ActivityMainBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    return-void
.end method
