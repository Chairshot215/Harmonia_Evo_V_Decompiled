.class Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase$1;
.super Landroid/os/Handler;
.source "ActivityMainExpandBrowserBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase$1;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowserBase;->onMessageHandler(Landroid/os/Message;)V

    .line 54
    return-void
.end method
