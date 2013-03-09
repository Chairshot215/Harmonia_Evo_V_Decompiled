.class public Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;
.super Ljava/lang/Object;
.source "PluginHostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/PluginHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostComponent"
.end annotation


# instance fields
.field private accountType:Ljava/lang/String;

.field public componentName:Landroid/content/ComponentName;

.field public pluginName:Landroid/content/ComponentName;

.field public serviceTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "comp"
    .parameter "plugin"
    .parameter "type"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->serviceTitle:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->componentName:Landroid/content/ComponentName;

    .line 102
    iput-object p3, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->pluginName:Landroid/content/ComponentName;

    .line 103
    iput-object p4, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->accountType:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "comp"
    .parameter "accountType"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/opensense/plugin/PluginHostAdapter$HostComponent;->accountType:Ljava/lang/String;

    return-object v0
.end method
