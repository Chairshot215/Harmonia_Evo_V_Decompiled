.class public Lcom/htc/launcher/HandleView;
.super Landroid/widget/ImageView;
.source "HandleView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ORIENTATION_HORIZONTAL:I = 0x1


# instance fields
.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/launcher/HandleView;->mOrientation:I

    .line 38
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v3, p0, Lcom/htc/launcher/HandleView;->mOrientation:I

    .line 49
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 51
    sget-object v1, Lcom/htc/launcher/R$styleable;->HandleView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/HandleView;->mOrientation:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method

.method private static isDirectionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 93
    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public focusSearch(I)Landroid/view/View;
    .locals 4
    .parameter "direction"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, newFocus:Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/launcher/HandleView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/htc/launcher/HandleView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v2}, Lcom/htc/launcher/Launcher;->getWorkspace()Lcom/htc/launcher/Workspace;

    move-result-object v1

    .line 61
    .local v1, workspace:Lcom/htc/launcher/Workspace;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/htc/launcher/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 62
    iget v2, p0, Lcom/htc/launcher/HandleView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 65
    .end local v1           #workspace:Lcom/htc/launcher/Workspace;
    .end local p0
    :goto_0
    return-object p0

    .restart local v1       #workspace:Lcom/htc/launcher/Workspace;
    .restart local p0
    :cond_0
    move-object p0, v1

    .line 62
    goto :goto_0

    .end local v1           #workspace:Lcom/htc/launcher/Workspace;
    :cond_1
    move-object p0, v0

    .line 65
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 73
    .local v0, handled:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/HandleView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/htc/launcher/HandleView;->isDirectionKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/htc/launcher/HandleView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getApplicationsGrid()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 77
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 85
    .local v0, handled:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/HandleView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->isDrawerDown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/htc/launcher/HandleView;->isDirectionKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/htc/launcher/HandleView;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getApplicationsGrid()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 89
    .end local v0           #handled:Z
    :cond_0
    return v0
.end method

.method setLauncher(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/launcher/HandleView;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 99
    return-void
.end method
