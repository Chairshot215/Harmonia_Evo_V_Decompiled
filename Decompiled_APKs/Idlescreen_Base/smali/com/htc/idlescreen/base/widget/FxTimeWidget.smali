.class public Lcom/htc/idlescreen/base/widget/FxTimeWidget;
.super Ljava/lang/Object;
.source "FxTimeWidget.java"


# static fields
.field public static final RES_TIME_AMPM:Ljava/lang/String; = "textlabel.lockscreentime_ampm"

.field public static final RES_TIME_DATE:Ljava/lang/String; = "textlabel.lockscreentime_date"

.field public static final RES_TIME_FADE:Ljava/lang/String; = "timeline.time_fade"

.field public static final RES_TIME_HINT:Ljava/lang/String; = "textlabel.pull_unlock"

.field public static final RES_TIME_MARKER_SHOW_HINT:Ljava/lang/String; = "time_to_pull"

.field public static final RES_TIME_MARKER_SHOW_TIME:Ljava/lang/String; = "pull_to_time"

.field public static final RES_TIME_OPERATOR:Ljava/lang/String; = "textlabel.lockscreentime_operator"

.field public static final RES_TIME_TIME:Ljava/lang/String; = "textlabel.lockscreentime_time"

.field public static final RES_TIME_TYPE_CLOCK:Ljava/lang/String; = "clock"

.field public static final RES_TIME_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final TYPE_TIME_CLOCK:I = 0x1

.field public static final TYPE_TIME_NORMAL:I


# instance fields
.field private mAmPmLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mContext:Landroid/content/Context;

.field private mDateLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mFadeTL:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mHintLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mOperatorLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mShowHint:Lcom/htc/fusion/fx/Marker;

.field private mShowTime:Lcom/htc/fusion/fx/Marker;

.field private mTimeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "context"
    .parameter "scene"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 56
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "pull_to_time"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mShowTime:Lcom/htc/fusion/fx/Marker;

    .line 57
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "timeline.time_fade"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mFadeTL:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 59
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.pull_unlock"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mHintLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 60
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.lockscreentime_operator"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mOperatorLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 61
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.lockscreentime_time"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mTimeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 62
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.lockscreentime_ampm"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mAmPmLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 63
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "textlabel.lockscreentime_date"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mDateLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 64
    return-void
.end method


# virtual methods
.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public hideTimeElements()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_lockscreen_hide_date"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x0

    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mDateLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    const-string v2, "tweaks_lockscreen_hide_time"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mTimeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mAmPmLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    const-string v2, "tweaks_lockscreen_hide_ampm"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mAmPmLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    :cond_2
    const-string v2, "tweaks_lockscreen_hide_opname"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x0

    :cond_3
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mOperatorLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    return-void
.end method

.method public setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_lockscreen_caption"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_1

    :cond_2
    const-string v0, ""

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mOperatorLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowHint(ZZLjava/lang/String;)V
    .locals 2
    .parameter "show"
    .parameter "animation"
    .parameter "str"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mHintLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 89
    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mHintLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "time_to_pull"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mShowTime:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    goto :goto_0

    .line 99
    :cond_2
    if-eqz p2, :cond_3

    .line 100
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "pull_to_time"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mShowTime:Lcom/htc/fusion/fx/Marker;

    iget v1, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    goto :goto_0
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mFadeTL:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mFadeTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "clock"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mFadeTL:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateTime()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->hideTimeElements()V

    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/idlescreen/base/util/ClockUtil;->updateDateTime(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mTimeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/idlescreen/base/util/ClockUtil;->mTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mDateLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/idlescreen/base/util/ClockUtil;->mDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxTimeWidget;->mAmPmLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-object v1, Lcom/htc/idlescreen/base/util/ClockUtil;->mAmPmString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method
