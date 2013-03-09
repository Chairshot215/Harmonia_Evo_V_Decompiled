.class public Lcom/htc/opensense/album/PresentationManager;
.super Lcom/htc/opensense/album/DisplayManager;
.source "PresentationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/PresentationManager$PresentationListener;
    }
.end annotation


# static fields
.field public static KEY_CHECK_FILTEROUT:Ljava/lang/String;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mEnabled:Z

.field private mLandscapeTemplate:I

.field private mListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

.field private mLockOrientation:Z

.field private mPortraitTemplate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "check_filterout"

    sput-object v0, Lcom/htc/opensense/album/PresentationManager;->KEY_CHECK_FILTEROUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/DisplayManager;-><init>(Landroid/app/Activity;)V

    .line 19
    const-class v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->LOG_TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->mListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    .line 39
    return-void
.end method

.method private doFilterOut(I)Z
    .locals 1
    .parameter "filterId"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->mListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->mListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    invoke-interface {v0, p1}, Lcom/htc/opensense/album/PresentationManager$PresentationListener;->shouldFilterOut(I)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disablePresentation()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    .line 122
    return-void
.end method

.method public enablePresentation(II)V
    .locals 1
    .parameter "landscape"
    .parameter "portrait"

    .prologue
    .line 48
    iput p1, p0, Lcom/htc/opensense/album/PresentationManager;->mLandscapeTemplate:I

    .line 49
    iput p2, p0, Lcom/htc/opensense/album/PresentationManager;->mPortraitTemplate:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    .line 51
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPresentationEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    return v0
.end method

.method public lockOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mLockOrientation:Z

    .line 127
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public pausePresentation()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    .line 101
    return-void
.end method

.method public resumePresentation()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    .line 106
    iget-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mLockOrientation:Z

    if-eqz v0, :cond_0

    .line 108
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/PresentationManager;->mLockOrientation:Z

    .line 117
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationManager;->mContext:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setPresentationListener(Lcom/htc/opensense/album/PresentationManager$PresentationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/opensense/album/PresentationManager;->mListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    .line 44
    return-void
.end method

.method public switchTemplate(ILandroid/os/Bundle;Z)V
    .locals 9
    .parameter "templateId"
    .parameter "bundle"
    .parameter "bDoTransition"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    move v0, p1

    .line 69
    .local v0, destId:I
    const/4 v7, 0x5

    if-ne v0, v7, :cond_6

    .line 71
    if-eqz p2, :cond_2

    sget-object v7, Lcom/htc/opensense/album/PresentationManager;->KEY_CHECK_FILTEROUT:Ljava/lang/String;

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v6

    .line 72
    .local v3, goFilter:Z
    :goto_0
    if-eqz v3, :cond_3

    iget v7, p0, Lcom/htc/opensense/album/PresentationManager;->mFocusTemplateId:I

    invoke-direct {p0, v7}, Lcom/htc/opensense/album/PresentationManager;->doFilterOut(I)Z

    move-result v2

    .line 73
    .local v2, filterOut:Z
    :goto_1
    if-eqz v3, :cond_0

    iget-boolean v7, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    if-eqz v7, :cond_4

    :cond_0
    move v1, v6

    .line 75
    .local v1, enable:Z
    :goto_2
    iget v7, p0, Lcom/htc/opensense/album/PresentationManager;->mFocusTemplateId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    if-eqz v1, :cond_1

    if-eqz v2, :cond_5

    .line 77
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/album/PresentationManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[switchTemplate] Presentation Enabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/opensense/album/PresentationManager;->mEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", go filter = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", filter out = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1           #enable:Z
    .end local v2           #filterOut:Z
    .end local v3           #goFilter:Z
    :goto_3
    return-void

    :cond_2
    move v3, v5

    .line 71
    goto :goto_0

    .restart local v3       #goFilter:Z
    :cond_3
    move v2, v5

    .line 72
    goto :goto_1

    .restart local v2       #filterOut:Z
    :cond_4
    move v1, v5

    .line 73
    goto :goto_2

    .line 83
    .restart local v1       #enable:Z
    :cond_5
    invoke-virtual {p0}, Lcom/htc/opensense/album/PresentationManager;->getOrientation()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    move v4, v6

    .line 84
    .local v4, isLandscape:Z
    :goto_4
    if-eqz v4, :cond_8

    iget v0, p0, Lcom/htc/opensense/album/PresentationManager;->mLandscapeTemplate:I

    .line 87
    .end local v1           #enable:Z
    .end local v2           #filterOut:Z
    .end local v3           #goFilter:Z
    .end local v4           #isLandscape:Z
    :cond_6
    :goto_5
    invoke-super {p0, v0, p2, p3}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    goto :goto_3

    .restart local v1       #enable:Z
    .restart local v2       #filterOut:Z
    .restart local v3       #goFilter:Z
    :cond_7
    move v4, v5

    .line 83
    goto :goto_4

    .line 84
    .restart local v4       #isLandscape:Z
    :cond_8
    iget v0, p0, Lcom/htc/opensense/album/PresentationManager;->mPortraitTemplate:I

    goto :goto_5
.end method
