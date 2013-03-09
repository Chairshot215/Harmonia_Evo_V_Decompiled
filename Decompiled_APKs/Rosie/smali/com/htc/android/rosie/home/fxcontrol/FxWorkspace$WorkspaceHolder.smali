.class final Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;
.super Ljava/lang/Object;
.source "FxWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkspaceHolder"
.end annotation


# instance fields
.field private mLandClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

.field private mPortClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;


# direct methods
.method constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Z)V
    .locals 3
    .parameter "fxworkspace"
    .parameter "twoOrientation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    if-eqz p2, :cond_0

    .line 1313
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct {v0, p1, v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;ZLcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mPortClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 1314
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct {v0, p1, v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;ZLcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mLandClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 1325
    :goto_0
    return-void

    .line 1318
    :cond_0
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct {v0, p1, v2, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;ZLcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mPortClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    goto :goto_0

    .line 1322
    :cond_1
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    invoke-direct {v0, p1, v1, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;ZLcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mLandClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    goto :goto_0
.end method


# virtual methods
.method getAnother()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    .locals 1

    .prologue
    .line 1337
    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mLandClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 1341
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mPortClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    goto :goto_0
.end method

.method getCurrent()Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;
    .locals 1

    .prologue
    .line 1328
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isSupportLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    :cond_0
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mPortClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    .line 1332
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace$WorkspaceHolder;->mLandClient:Lcom/htc/android/rosie/home/fxcontrol/FxWorkspaceClient;

    goto :goto_0
.end method
