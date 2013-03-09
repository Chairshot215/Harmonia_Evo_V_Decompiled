.class public abstract Lcom/htc/opensense/plugin/TabPlugin;
.super Ljava/lang/Object;
.source "TabPlugin.java"


# instance fields
.field private mHostContext:Landroid/content/Context;

.field private mPluginContext:Landroid/content/Context;

.field mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/opensense/plugin/TabPlugin;->mHostContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/opensense/plugin/TabPlugin;->mPluginContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getActivityIntent()Landroid/content/Intent;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/TabPlugin;->getHostContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDrawableSet()[Landroid/graphics/drawable/Drawable;
.end method

.method public getHostContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPlugin;->mHostContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPlugin;->mPluginContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPlugin;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPluginContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPlugin;->mPluginContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getTabName()Ljava/lang/String;
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/plugin/TabPlugin;->mTag:Ljava/lang/String;

    return-object v0
.end method
