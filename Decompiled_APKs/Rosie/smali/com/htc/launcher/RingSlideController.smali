.class public Lcom/htc/launcher/RingSlideController;
.super Lcom/htc/launcher/SlideController;
.source "RingSlideController.java"


# static fields
.field private static final KEEP_SINKING_SINK:F = 0.2f

.field private static final KEEP_SINKING_VELOCITY:F = 1000.0f

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mLongEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

.field private final mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

.field private mSnapOffset:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/launcher/RingSlideController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/RingSlideController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/Workspace;Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;)V
    .locals 2
    .parameter "context"
    .parameter "workspace"
    .parameter "sinkControl"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/SlideController;-><init>(Landroid/content/Context;Lcom/htc/launcher/Workspace;)V

    .line 22
    new-instance v0, Lcom/htc/launcher/widget/EaseOutCubic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/launcher/widget/EaseOutCubic;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/launcher/RingSlideController;->mLongEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    .line 26
    iput-object p3, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    .line 27
    return-void
.end method


# virtual methods
.method protected getCurrentScreenIndexByScrollX()I
    .locals 5

    .prologue
    .line 329
    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v2

    .line 330
    .local v2, width:I
    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v0

    .line 331
    .local v0, child:I
    if-lez v2, :cond_0

    if-nez v0, :cond_2

    .line 332
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 339
    :cond_1
    :goto_0
    return v1

    .line 334
    :cond_2
    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    div-int v1, v3, v2

    .line 335
    .local v1, page:I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 336
    if-lt v1, v0, :cond_1

    .line 337
    rem-int/2addr v1, v0

    goto :goto_0
.end method

.method protected getDeltaXForSnapScreen(III)I
    .locals 8
    .parameter "currentScreen"
    .parameter "nextScreen"
    .parameter "velocity"

    .prologue
    .line 130
    invoke-virtual {p0, p3}, Lcom/htc/launcher/RingSlideController;->getSnapOffset(I)I

    move-result v4

    .line 131
    .local v4, snapOffset:I
    const/4 v2, 0x0

    .line 132
    .local v2, loop:I
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    if-le v4, v5, :cond_0

    .line 133
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    div-int v5, v4, v5

    add-int/lit8 v2, v5, -0x1

    .line 134
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    rem-int/2addr v4, v5

    .line 139
    :cond_0
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->sMultiPageScrollOnPortrait:Z

    if-nez v5, :cond_9

    .line 140
    if-lez p3, :cond_4

    .line 141
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .line 142
    .local v3, newX:I
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    .line 143
    .local v0, currentX:I
    if-ge v3, v0, :cond_3

    .line 144
    sub-int v1, v3, v0

    .line 210
    .end local v0           #currentX:I
    .local v1, delta:I
    :goto_0
    if-lez v1, :cond_10

    .line 211
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 215
    :cond_1
    :goto_1
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_2

    .line 216
    sget-object v5, Lcom/htc/launcher/RingSlideController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "velocity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", next_x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", now_x: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v7}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", curr_s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", next_s: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    return v1

    .line 147
    .end local v1           #delta:I
    .restart local v0       #currentX:I
    :cond_3
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7

    sub-int v5, v3, v5

    sub-int v1, v5, v0

    .restart local v1       #delta:I
    goto :goto_0

    .line 149
    .end local v0           #currentX:I
    .end local v1           #delta:I
    .end local v3           #newX:I
    :cond_4
    if-gez p3, :cond_6

    .line 150
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .line 151
    .restart local v3       #newX:I
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    .line 152
    .restart local v0       #currentX:I
    if-le v3, v0, :cond_5

    .line 153
    sub-int v1, v3, v0

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 156
    .end local v1           #delta:I
    :cond_5
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v5, v0

    add-int v1, v3, v5

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 160
    .end local v0           #currentX:I
    .end local v1           #delta:I
    .end local v3           #newX:I
    :cond_6
    if-nez p2, :cond_8

    .line 161
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    if-le v5, v6, :cond_7

    .line 162
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/lit8 v3, v5, 0x7

    .line 171
    .restart local v3       #newX:I
    :goto_2
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v5

    sub-int v1, v3, v5

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 165
    .end local v1           #delta:I
    .end local v3           #newX:I
    :cond_7
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .restart local v3       #newX:I
    goto :goto_2

    .line 169
    .end local v3           #newX:I
    :cond_8
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .restart local v3       #newX:I
    goto :goto_2

    .line 174
    .end local v3           #newX:I
    :cond_9
    if-lez p3, :cond_b

    .line 175
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .line 176
    .restart local v3       #newX:I
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    .line 177
    .restart local v0       #currentX:I
    if-ge v3, v0, :cond_a

    .line 178
    sub-int v1, v3, v0

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 181
    .end local v1           #delta:I
    :cond_a
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7

    sub-int v5, v3, v5

    sub-int v1, v5, v0

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 184
    .end local v0           #currentX:I
    .end local v1           #delta:I
    .end local v3           #newX:I
    :cond_b
    if-gez p3, :cond_d

    .line 185
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .line 186
    .restart local v3       #newX:I
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v0

    .line 187
    .restart local v0       #currentX:I
    if-le v3, v0, :cond_c

    .line 188
    sub-int v1, v3, v0

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 191
    .end local v1           #delta:I
    :cond_c
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v5, v0

    add-int v1, v3, v5

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 195
    .end local v0           #currentX:I
    .end local v1           #delta:I
    .end local v3           #newX:I
    :cond_d
    if-nez p2, :cond_f

    .line 196
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    if-le v5, v6, :cond_e

    .line 197
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/lit8 v3, v5, 0x7

    .line 206
    .restart local v3       #newX:I
    :goto_3
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v5

    sub-int v1, v3, v5

    .restart local v1       #delta:I
    goto/16 :goto_0

    .line 200
    .end local v1           #delta:I
    .end local v3           #newX:I
    :cond_e
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .restart local v3       #newX:I
    goto :goto_3

    .line 204
    .end local v3           #newX:I
    :cond_f
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v3, p2, v5

    .restart local v3       #newX:I
    goto :goto_3

    .line 212
    .restart local v1       #delta:I
    :cond_10
    if-gez v1, :cond_1

    .line 213
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    mul-int/2addr v5, v6

    sub-int/2addr v1, v5

    goto/16 :goto_1
.end method

.method public getDestinationScreen(II)I
    .locals 8
    .parameter "currentTouchScreen"
    .parameter "velocityX"

    .prologue
    .line 81
    invoke-virtual {p0, p2}, Lcom/htc/launcher/RingSlideController;->getSnapOffset(I)I

    move-result v1

    .line 82
    .local v1, originalOffset:I
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int v2, p1, v5

    .line 84
    .local v2, screenX:I
    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v5

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 85
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7

    iget-object v6, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v6}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v6

    sub-int v0, v5, v6

    .line 91
    .local v0, movementX:I
    :goto_0
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v5

    if-le v0, v5, :cond_0

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 95
    :cond_0
    move v4, v1

    .line 97
    .local v4, snapOffset:I
    sget-boolean v5, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/htc/launcher/RingSlideController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDestinationScreen("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") getSnapOffset() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    if-le v4, v5, :cond_2

    .line 100
    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    rem-int/2addr v4, v5

    .line 103
    :cond_2
    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 104
    .local v3, sinkExtent:F
    iget-object v5, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v5, v3}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->startSink(F)V

    .line 106
    const/4 v5, 0x1

    if-le v1, v5, :cond_3

    .line 107
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->beginFling()V

    .line 110
    :cond_3
    iput v1, p0, Lcom/htc/launcher/RingSlideController;->mSnapOffset:I

    .line 111
    iput p2, p0, Lcom/htc/launcher/RingSlideController;->mVelocity:I

    .line 113
    if-lez p2, :cond_6

    .line 114
    sub-int v5, p1, v4

    if-gez v5, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v5

    sub-int v6, p1, v4

    add-int/2addr v5, v6

    .line 123
    :goto_1
    return v5

    .line 88
    .end local v0           #movementX:I
    .end local v3           #sinkExtent:F
    .end local v4           #snapOffset:I
    :cond_4
    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .restart local v0       #movementX:I
    goto :goto_0

    .line 117
    .restart local v3       #sinkExtent:F
    .restart local v4       #snapOffset:I
    :cond_5
    sub-int v5, p1, v4

    goto :goto_1

    .line 120
    :cond_6
    add-int v5, p1, v4

    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v6

    if-lt v5, v6, :cond_7

    .line 121
    add-int v5, p1, v4

    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v6

    rem-int/2addr v5, v6

    goto :goto_1

    .line 123
    :cond_7
    add-int v5, p1, v4

    goto :goto_1
.end method

.method protected getKeepSinkVelocity()F
    .locals 1

    .prologue
    .line 375
    const/high16 v0, 0x447a

    return v0
.end method

.method protected getSnapOffset(I)I
    .locals 7
    .parameter "velocityX"

    .prologue
    .line 31
    iget-object v4, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityPort:I

    .line 32
    .local v0, fullRoundScrollVelocity:I
    :goto_0
    iget-object v4, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityPort:I

    .line 33
    .local v2, singlePageScrollVelocity:I
    :goto_1
    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollTouchDeltaPort:I

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float v1, v4, v5

    .line 35
    .local v1, fullRoundTouchDelta:F
    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/htc/launcher/RingSlideController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSnapOffset("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fullRoundScrollVelocity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fullRoundTouchDelta:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    iget-object v4, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v4}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/htc/launcher/settings/SettingUtil;->sMultiPageScrollOnPortrait:Z

    if-nez v4, :cond_4

    .line 39
    const/4 v3, 0x1

    .line 75
    :cond_1
    :goto_2
    return v3

    .line 31
    .end local v0           #fullRoundScrollVelocity:I
    .end local v1           #fullRoundTouchDelta:F
    .end local v2           #singlePageScrollVelocity:I
    :cond_2
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sFullRoundScrollVelocityLand:I

    goto :goto_0

    .line 32
    .restart local v0       #fullRoundScrollVelocity:I
    :cond_3
    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sSinglePageScrollVelocityLand:I

    goto :goto_1

    .line 42
    .restart local v1       #fullRoundTouchDelta:F
    .restart local v2       #singlePageScrollVelocity:I
    :cond_4
    iget v4, p0, Lcom/htc/launcher/RingSlideController;->mVelocity:I

    if-ne p1, v4, :cond_5

    .line 43
    iget v3, p0, Lcom/htc/launcher/RingSlideController;->mSnapOffset:I

    goto :goto_2

    .line 45
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 47
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 51
    sget v4, Lcom/htc/launcher/settings/SettingUtil;->sScrollVelocityFactor:I

    div-int v4, p1, v4

    add-int/lit8 v3, v4, 0x1

    .line 52
    .local v3, snapOffset:I
    goto :goto_2

    .line 55
    .end local v3           #snapOffset:I
    :cond_6
    if-le p1, v2, :cond_7

    iget v4, p0, Lcom/htc/launcher/SlideController;->mTouchDeltaX:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v5}, Lcom/htc/launcher/Workspace;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v4, v4, v1

    if-gez v4, :cond_8

    .line 58
    :cond_7
    const/4 v3, 0x1

    .line 68
    .restart local v3       #snapOffset:I
    :goto_3
    if-eqz p1, :cond_1

    int-to-float v4, p1

    const/high16 v5, 0x447a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/htc/launcher/RingSlideController;->mSnapOffset:I

    sget v5, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v4}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->isSinking()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v4}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->getSink()F

    move-result v4

    const v5, 0x3e4ccccd

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 72
    iget v3, p0, Lcom/htc/launcher/RingSlideController;->mSnapOffset:I

    goto :goto_2

    .line 60
    .end local v3           #snapOffset:I
    :cond_8
    if-lt p1, v0, :cond_9

    .line 61
    sget v3, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    .restart local v3       #snapOffset:I
    goto :goto_3

    .line 63
    .end local v3           #snapOffset:I
    :cond_9
    sget v3, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollOffset:I

    .restart local v3       #snapOffset:I
    goto :goto_3
.end method

.method protected isSinking()Z
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->isSinking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v0}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->getSink()F

    move-result v0

    const v1, 0x3e4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollEnd()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/launcher/RingSlideController;->mSnapOffset:I

    iput v0, p0, Lcom/htc/launcher/RingSlideController;->mVelocity:I

    .line 391
    return-void
.end method

.method protected onScrollProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->setScrollProgress(F)V

    .line 386
    return-void
.end method

.method public scrollLeft()Z
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getNextScreen()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->isSlideFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->startSink(F)V

    .line 346
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/RingSlideController;->snapToScreen(I)V

    .line 351
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 353
    :goto_1
    return v0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/htc/launcher/RingSlideController;->snapToScreen(II)V

    goto :goto_0

    .line 353
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public scrollRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getNextScreen()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->isSlideFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->startSink(F)V

    .line 359
    iget-object v1, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 360
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/RingSlideController;->snapToScreen(I)V

    .line 364
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 366
    :cond_1
    return v0

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 362
    const/16 v1, -0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/htc/launcher/RingSlideController;->snapToScreen(II)V

    goto :goto_0
.end method

.method public scrollXConverter(F)F
    .locals 1
    .parameter "x"

    .prologue
    .line 227
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 232
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 229
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v0}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_0
.end method

.method public snapToDefaultScreen(I)I
    .locals 16
    .parameter "whichScreen"

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->beginFling()V

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/htc/launcher/Workspace;->beginScroll(ZI)V

    .line 290
    const/4 v1, 0x0

    const/4 v2, 0x6

    move/from16 v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/htc/launcher/Workspace;->setNextScreen(I)V

    .line 293
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->getScreenCount()I

    move-result v11

    .line 295
    .local v11, pageCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v8

    .line 298
    .local v8, current:I
    move/from16 v0, p1

    if-le v8, v0, :cond_2

    .line 299
    sub-int v10, v8, p1

    .line 300
    .local v10, left:I
    sub-int v12, v11, v10

    .line 301
    .local v12, right:I
    if-gt v10, v12, :cond_1

    .line 302
    neg-int v9, v10

    .line 318
    .end local v10           #left:I
    .end local v12           #right:I
    .local v9, deltaScreen:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v1

    mul-int v4, v9, v1

    .line 319
    .local v4, delta:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sWorkspaceScreenCount:I

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 320
    .local v13, sinkExtent:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v1, v13}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->startSink(F)V

    .line 322
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v14, 0x3ff8

    mul-double/2addr v1, v14

    sget v3, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    float-to-double v14, v3

    mul-double/2addr v1, v14

    const-wide v14, 0x4081300000000000L

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-int v6, v1

    .line 323
    .local v6, duration:I
    sget-boolean v1, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapToScreen Duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delta = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mScrollSpeedScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/htc/launcher/Workspace;->sScrollSpeedScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v1}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/launcher/RingSlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    .line 325
    return v6

    .line 304
    .end local v4           #delta:I
    .end local v6           #duration:I
    .end local v9           #deltaScreen:I
    .end local v13           #sinkExtent:F
    .restart local v10       #left:I
    .restart local v12       #right:I
    :cond_1
    move v9, v12

    .restart local v9       #deltaScreen:I
    goto :goto_0

    .line 306
    .end local v9           #deltaScreen:I
    .end local v10           #left:I
    .end local v12           #right:I
    :cond_2
    move/from16 v0, p1

    if-le v0, v8, :cond_4

    .line 307
    sub-int v12, p1, v8

    .line 308
    .restart local v12       #right:I
    sub-int v10, v11, v12

    .line 309
    .restart local v10       #left:I
    if-gt v10, v12, :cond_3

    .line 310
    neg-int v9, v10

    .restart local v9       #deltaScreen:I
    goto/16 :goto_0

    .line 312
    .end local v9           #deltaScreen:I
    :cond_3
    move v9, v12

    .restart local v9       #deltaScreen:I
    goto/16 :goto_0

    .line 315
    .end local v9           #deltaScreen:I
    .end local v10           #left:I
    .end local v12           #right:I
    :cond_4
    const/4 v9, 0x0

    .restart local v9       #deltaScreen:I
    goto/16 :goto_0
.end method

.method public snapToDestination()V
    .locals 6

    .prologue
    .line 237
    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getWidth()I

    move-result v0

    .line 238
    .local v0, screenWidth:I
    iget-object v3, p0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v3}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v1

    .line 239
    .local v1, scrollX:I
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v1

    div-int v2, v3, v0

    .line 242
    .local v2, whichScreen:I
    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v0

    sub-int v3, v1, v3

    mul-int/lit8 v4, v0, 0x7

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_1

    .line 244
    const/4 v2, 0x0

    .line 248
    :goto_0
    sget-object v3, Lcom/htc/launcher/RingSlideController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop in empty page, go to destination:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/htc/launcher/RingSlideController;->mSinkControl:Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;

    invoke-interface {v3}, Lcom/htc/android/rosie/home/fxcontrol/IPageSinkControl;->startRise()V

    .line 251
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/launcher/RingSlideController;->snapToScreen(II)V

    .line 252
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/RingSlideController;->getCurrPageCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0
.end method

.method protected startScrollByVelocityX(II)V
    .locals 17
    .parameter "delta"
    .parameter "velocityX"

    .prologue
    .line 255
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollVelocity:Z

    if-eqz v2, :cond_8

    .line 257
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    .line 258
    .local v8, ef:Lcom/htc/launcher/widget/EasingFunction;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->sMultiPageScrollOnPortrait:Z

    if-nez v2, :cond_1

    .line 259
    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationPort:I

    .line 278
    .local v7, duration:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/htc/launcher/RingSlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    .line 283
    .end local v7           #duration:I
    .end local v8           #ef:Lcom/htc/launcher/widget/EasingFunction;
    :goto_1
    return-void

    .line 261
    .restart local v8       #ef:Lcom/htc/launcher/widget/EasingFunction;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/launcher/RingSlideController;->getSnapOffset(I)I

    move-result v16

    .line 262
    .local v16, snapOffset:I
    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollOffset:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationPort:I

    .line 272
    .restart local v7       #duration:I
    :goto_2
    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollOffset:I

    move/from16 v0, v16

    if-le v0, v2, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/launcher/RingSlideController;->mLongEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    .line 275
    :cond_2
    sget-boolean v2, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    if-eqz v2, :cond_0

    .line 276
    sget-object v2, Lcom/htc/launcher/RingSlideController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScrollByVelocityX  velocityX "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", snapOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ef: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delta:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    .end local v7           #duration:I
    :cond_3
    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sMaxScrollRoundDurationLand:I

    goto :goto_2

    .line 265
    :cond_4
    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollOffset:I

    move/from16 v0, v16

    if-lt v0, v2, :cond_6

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationPort:I

    .restart local v7       #duration:I
    :goto_3
    goto :goto_2

    .end local v7           #duration:I
    :cond_5
    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sMediumScrollRoundDurationLand:I

    goto :goto_3

    .line 269
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationPort:I

    :goto_4
    mul-int v7, v2, v16

    .restart local v7       #duration:I
    goto :goto_2

    .end local v7           #duration:I
    :cond_7
    sget v2, Lcom/htc/launcher/settings/SettingUtil;->sFixedScrollDurationLand:I

    goto :goto_4

    .line 281
    .end local v8           #ef:Lcom/htc/launcher/widget/EasingFunction;
    .end local v16           #snapOffset:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/launcher/SlideController;->mWorkspace:Lcom/htc/launcher/Workspace;

    invoke-virtual {v2}, Lcom/htc/launcher/Workspace;->getScrollX()I

    move-result v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    move/from16 v0, p1

    mul-int/lit16 v2, v0, 0x3e8

    div-int v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutBackDuration:F

    mul-float/2addr v2, v3

    float-to-int v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/launcher/SlideController;->mEasingFunction:Lcom/htc/launcher/widget/EasingFunction;

    move-object/from16 v9, p0

    move/from16 v12, p1

    invoke-virtual/range {v9 .. v15}, Lcom/htc/launcher/RingSlideController;->startSlide(IIIIILcom/htc/launcher/widget/EasingFunction;)V

    goto/16 :goto_1
.end method
