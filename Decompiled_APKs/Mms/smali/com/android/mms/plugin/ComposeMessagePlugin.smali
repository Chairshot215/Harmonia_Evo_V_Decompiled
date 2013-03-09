.class public Lcom/android/mms/plugin/ComposeMessagePlugin;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "ComposeMessagePlugin.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/plugin/ComposeMessagePlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/mms/plugin/ComposeMessagePlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
