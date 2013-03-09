.class Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost$1;
.super Ljava/lang/Object;
.source "PluginHostAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;


# direct methods
.method constructor <init>(Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost$1;->this$0:Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 161
    iget-object v0, p1, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->serviceTitle:Ljava/lang/String;

    iget-object v1, p2, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->serviceTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    check-cast p1, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;

    .end local p1
    check-cast p2, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense/plugin/PluginHostAdapter$FriendStreamHost$1;->compare(Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;)I

    move-result v0

    return v0
.end method
