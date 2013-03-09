.class Lcom/htc/launcher/LegacyLayout$AttachScene;
.super Ljava/lang/Object;
.source "LegacyLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LegacyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachScene"
.end annotation


# instance fields
.field private mLL:Lcom/htc/launcher/LegacyLayout;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/LegacyLayout;)V
    .locals 0
    .parameter "ll"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/LegacyLayout;Lcom/htc/launcher/LegacyLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/htc/launcher/LegacyLayout$AttachScene;-><init>(Lcom/htc/launcher/LegacyLayout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/launcher/LegacyLayout$AttachScene;)Lcom/htc/launcher/LegacyLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/launcher/LegacyLayout$AttachScene;Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/LegacyLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 60
    iget-object v4, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    #getter for: Lcom/htc/launcher/LegacyLayout;->mFxSceneControl:Lcom/htc/launcher/LegacyLayout$FxSceneControl;
    invoke-static {v4}, Lcom/htc/launcher/LegacyLayout;->access$000(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/LegacyLayout$FxSceneControl;

    move-result-object v2

    .line 61
    .local v2, sc:Lcom/htc/launcher/LegacyLayout$FxSceneControl;
    iget-object v4, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    #getter for: Lcom/htc/launcher/LegacyLayout;->mWorkspace:Lcom/htc/launcher/Workspace;
    invoke-static {v4}, Lcom/htc/launcher/LegacyLayout;->access$100(Lcom/htc/launcher/LegacyLayout;)Lcom/htc/launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v1

    .line 62
    .local v1, isPortrait:Z
    if-eqz v1, :cond_1

    .line 63
    iget-boolean v4, v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedP:Z

    if-nez v4, :cond_0

    .line 64
    #calls: Lcom/htc/launcher/LegacyLayout$FxSceneControl;->attachInner()Z
    invoke-static {v2}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->access$200(Lcom/htc/launcher/LegacyLayout$FxSceneControl;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedP:Z

    .line 65
    iput-boolean v5, v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedP:Z

    .line 73
    :cond_0
    :goto_0
    const-string v4, "LegacyLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " scene attached"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/htc/launcher/LegacyLayout$AttachScene$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LegacyLayout$AttachScene$1;-><init>(Lcom/htc/launcher/LegacyLayout$AttachScene;)V

    .line 79
    .local v0, draw:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v4}, Lcom/htc/launcher/LegacyLayout;->getTheView()Landroid/view/View;

    move-result-object v3

    .line 80
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 84
    :goto_1
    return-void

    .line 68
    .end local v0           #draw:Ljava/lang/Runnable;
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-boolean v4, v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedL:Z

    if-nez v4, :cond_0

    .line 69
    #calls: Lcom/htc/launcher/LegacyLayout$FxSceneControl;->attachInner()Z
    invoke-static {v2}, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->access$200(Lcom/htc/launcher/LegacyLayout$FxSceneControl;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedL:Z

    .line 70
    iput-boolean v5, v2, Lcom/htc/launcher/LegacyLayout$FxSceneControl;->mAttachedL:Z

    goto :goto_0

    .line 83
    .restart local v0       #draw:Ljava/lang/Runnable;
    .restart local v3       #v:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/htc/launcher/LegacyLayout$AttachScene;->mLL:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v4, v0}, Lcom/htc/launcher/LegacyLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
