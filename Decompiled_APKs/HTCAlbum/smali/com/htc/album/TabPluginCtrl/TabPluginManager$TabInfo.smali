.class public Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;
.super Ljava/lang/Object;
.source "TabPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginCtrl/TabPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabInfo"
.end annotation


# instance fields
.field public mDisplay:Ljava/lang/String;

.field public mDrawable:[Landroid/graphics/drawable/Drawable;

.field public mIdentifier:Ljava/lang/String;

.field public mIntent:Landroid/content/Intent;

.field public mIsEnabled:Z

.field public mIsFixed:Z

.field public mIsOn:Z

.field public mOrder:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/htc/album/TabPluginCtrl/TabPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginCtrl/TabPluginManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    iput-object p1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->this$0:Lcom/htc/album/TabPluginCtrl/TabPluginManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsEnabled:Z

    .line 49
    iput-boolean v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsOn:Z

    .line 50
    iput-boolean v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIsFixed:Z

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mOrder:Ljava/lang/Integer;

    .line 52
    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDisplay:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIdentifier:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mDrawable:[Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabPluginManager$TabInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method
