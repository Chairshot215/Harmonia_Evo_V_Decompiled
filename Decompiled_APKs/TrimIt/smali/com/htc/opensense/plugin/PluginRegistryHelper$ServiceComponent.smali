.class public Lcom/htc/opensense/plugin/PluginRegistryHelper$ServiceComponent;
.super Ljava/lang/Object;
.source "PluginRegistryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/PluginRegistryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceComponent"
.end annotation


# instance fields
.field public accountType:Ljava/lang/String;

.field public cName:Landroid/content/ComponentName;

.field extra:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method
