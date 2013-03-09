.class public Lcom/htc/opensense/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# instance fields
.field public component_name:Landroid/content/ComponentName;

.field public description:Ljava/lang/String;

.field public feature:Lcom/htc/opensense/plugin/Feature;

.field public id:I

.field public pluginMeta:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 41
    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "feature"
    .parameter "componentName"
    .parameter "version"
    .parameter "description"
    .parameter "pluginMeta"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 50
    iput p1, p0, Lcom/htc/opensense/plugin/Plugin;->id:I

    .line 51
    iput-object p2, p0, Lcom/htc/opensense/plugin/Plugin;->feature:Lcom/htc/opensense/plugin/Feature;

    .line 52
    iput-object p3, p0, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    .line 53
    iput p4, p0, Lcom/htc/opensense/plugin/Plugin;->version:I

    .line 54
    iput-object p5, p0, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/plugin/Feature;)V
    .locals 7
    .parameter "feature"

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
