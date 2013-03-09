.class public Lcom/htc/util/phone/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# instance fields
.field private mDockHelper:Lcom/htc/util/phone/DockHelper;

.field private sHardKeyboardHidden:I

.field private sOrientation:I

.field public sPopupHeight:I

.field public sPopupWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    .line 31
    iput v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sHardKeyboardHidden:I

    return-void
.end method

.method public static isQWERTY(Landroid/content/res/Resources;)Z
    .locals 3
    .parameter "res"

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, keyboardEnabled:Z
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->keyboard:I

    .line 102
    .local v0, keyboard:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    .line 105
    .end local v0           #keyboard:I
    :cond_0
    :goto_0
    return v1

    .line 102
    .restart local v0       #keyboard:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static supportLandscape(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/htc/util/phone/ConfigurationHelper;->isQWERTY(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/util/phone/DockHelper;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    return v0
.end method

.method public initConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 78
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 79
    iput v1, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    .line 88
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    .line 89
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sHardKeyboardHidden:I

    .line 90
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->mDockHelper:Lcom/htc/util/phone/DockHelper;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->mDockHelper:Lcom/htc/util/phone/DockHelper;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/htc/util/phone/DockHelper;->getOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    goto :goto_0
.end method

.method public isDockEnabled()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->mDockHelper:Lcom/htc/util/phone/DockHelper;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->mDockHelper:Lcom/htc/util/phone/DockHelper;

    invoke-virtual {v0}, Lcom/htc/util/phone/DockHelper;->isDockMode()Z

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardKeyboardHidden()Z
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sHardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    iget v1, p0, Lcom/htc/util/phone/ConfigurationHelper;->sOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDockUtil(Lcom/htc/util/phone/DockHelper;)V
    .locals 0
    .parameter "util"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/util/phone/ConfigurationHelper;->mDockHelper:Lcom/htc/util/phone/DockHelper;

    .line 43
    return-void
.end method
