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

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    iput p1, p0, Lcom/htc/opensense/plugin/Plugin;->id:I

    iput-object p2, p0, Lcom/htc/opensense/plugin/Plugin;->feature:Lcom/htc/opensense/plugin/Feature;

    iput-object p3, p0, Lcom/htc/opensense/plugin/Plugin;->component_name:Landroid/content/ComponentName;

    iput p4, p0, Lcom/htc/opensense/plugin/Plugin;->version:I

    iput-object p5, p0, Lcom/htc/opensense/plugin/Plugin;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/opensense/plugin/Plugin;->pluginMeta:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/plugin/Feature;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense/plugin/Plugin;-><init>(ILcom/htc/opensense/plugin/Feature;Landroid/content/ComponentName;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
