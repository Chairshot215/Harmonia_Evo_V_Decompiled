.class public Lcom/htc/clock3dwidget/socialclock/FxSocialControls;
.super Ljava/lang/Object;
.source "FxSocialControls.java"


# instance fields
.field public mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

.field public mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field public mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field public mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field public mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxScene;)V
    .locals 9
    .parameter "scene"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "textlabel.primary"

    aput-object v2, v0, v4

    const-string v2, "textlabel.time"

    aput-object v2, v0, v5

    const-string v2, "textlabel.FS_reply"

    aput-object v2, v0, v6

    const-string v2, "dynamicimage.photos"

    aput-object v2, v0, v7

    const-string v2, "dynamicimage.indicator_icons"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "button.weather.hitbox"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "textlabel.info"

    aput-object v3, v0, v2

    .line 26
    .local v0, controls:[Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 28
    .local v1, objs:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v4

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 29
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 30
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 32
    aget-object v2, v1, v7

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 33
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 35
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIcon:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const-string v3, "loading_to_loaded"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 38
    :cond_0
    aget-object v2, v1, v8

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 39
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 41
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const-string v3, "loading_to_loaded"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 44
    :cond_1
    const/4 v2, 0x5

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 45
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 47
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mFxHitboxSocial:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 50
    :cond_2
    const/4 v2, 0x6

    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 51
    invoke-direct {p0}, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->reset()V

    .line 52
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mReply:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/htc/clock3dwidget/socialclock/FxSocialControls;->mInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 70
    :cond_3
    return-void
.end method
