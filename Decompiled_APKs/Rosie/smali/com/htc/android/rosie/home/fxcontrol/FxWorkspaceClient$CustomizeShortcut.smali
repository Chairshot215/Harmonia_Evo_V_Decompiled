.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;
.super Ljava/lang/Object;
.source "FxWorkspaceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomizeShortcut"
.end annotation


# instance fields
.field private mDragControlCenter:Lcom/htc/fusion/fx/controls/FxDragControl;

.field private mDragControlLeft:Lcom/htc/fusion/fx/controls/FxDragControl;

.field private mDragControlRight:Lcom/htc/fusion/fx/controls/FxDragControl;

.field private mDynamicImage:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private mTextLabel:[Lcom/htc/fusion/fx/controls/FxTextLabel;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1484
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    new-array v1, v6, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "di.navbar_appicon_left"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v0, v1, v3

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "di.navbar_appicon_center"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v0, v1, v4

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "di.navbar_appicon_right"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDynamicImage:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1490
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "drag.navbar_appicon_left"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDragControl;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDragControlLeft:Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 1491
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "drag.navbar_appicon_center"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDragControl;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDragControlCenter:Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 1492
    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "drag.navbar_appicon_right"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDragControl;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDragControlRight:Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 1493
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDragControlLeft:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 1494
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDragControlCenter:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 1495
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDragControlRight:Lcom/htc/fusion/fx/controls/FxDragControl;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 1497
    new-array v1, v6, [Lcom/htc/fusion/fx/controls/FxTextLabel;

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "text.navbar_app_left"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v0, v1, v3

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "text.navbar_app_center"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v0, v1, v4

    #getter for: Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->mNavFxObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;->access$1000(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "text.navbar_app_right"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mTextLabel:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1502
    return-void
.end method


# virtual methods
.method public set(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 1505
    instance-of v0, p2, Lcom/htc/launcher/FastBitmapDrawable;

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDynamicImage:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v0, v0, p1

    check-cast p2, Lcom/htc/launcher/FastBitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/launcher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1509
    :goto_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mTextLabel:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v0, v0, p1

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1510
    return-void

    .line 1508
    .restart local p2
    .restart local p3
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDynamicImage:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public show(IZ)V
    .locals 1
    .parameter "index"
    .parameter "show"

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mDynamicImage:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1514
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient$CustomizeShortcut;->mTextLabel:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1515
    return-void
.end method
