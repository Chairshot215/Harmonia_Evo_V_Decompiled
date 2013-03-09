.class public Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;
.super Ljava/lang/Object;
.source "EMCFxScreen.java"


# static fields
.field public static final NoPhoto:I = -0x4

.field public static final NoSD:I = -0x1

.field public static final SDBroken:I = -0x2

.field public static final SDChecking:I = 0x2

.field public static final SDUnmounted:I = 0x1

.field public static final SDUsb:I = -0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFxScene:Lcom/htc/fusion/fx/FxScene;

.field private mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V
    .locals 1
    .parameter "context"
    .parameter "fxScene"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 19
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 20
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 21
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 22
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 33
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    .line 35
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->hideOthersTimeLineControl()V

    .line 36
    invoke-direct {p0}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->initErrorMessageControl()V

    .line 37
    return-void
.end method

.method private hideOthersTimeLineControl()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 157
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v7, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.error_noweather"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 161
    .local v6, mFxTCLWeather:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.error_nostock"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 162
    .local v2, mFxTCLNoStock:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.error_people"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 163
    .local v3, mFxTCLPeople:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.error_snlogin"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 164
    .local v4, mFxTCLSNLogin:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "t.btn_login_positionY"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 165
    .local v0, mFxTCLBTNLogin:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "comp.textcomp_error"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 166
    .local v1, mFxTCLCOMP:Lcom/htc/fusion/fx/FxTimelineControl;
    iget-object v7, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v8, "timeline.error_sn_update"

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 170
    .local v5, mFxTCLSNUpdate:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v6, :cond_2

    .line 171
    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 172
    :cond_2
    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {v2, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 174
    :cond_3
    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {v3, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 176
    :cond_4
    if-eqz v4, :cond_5

    .line 177
    invoke-virtual {v4, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 178
    :cond_5
    if-eqz v0, :cond_6

    .line 179
    invoke-virtual {v0, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 180
    :cond_6
    if-eqz v1, :cond_7

    .line 181
    invoke-virtual {v1, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 182
    :cond_7
    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {v5, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private initErrorMessageControl()V
    .locals 7

    .prologue
    .line 81
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v5, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->initNoSD(Z)V

    .line 85
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, strTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v6, "timeline.error_sdbroken"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 87
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_6

    .line 89
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "textlabel.error_sdbroke"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 90
    .local v4, tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v4, :cond_4

    .line 91
    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 95
    :goto_1
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "textlabel.error_sdbroke_eventtime"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 97
    .local v3, tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v3, :cond_5

    .line 98
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 106
    .end local v3           #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v4           #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :goto_2
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v6, "timeline.error_sdusb"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 107
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_a

    .line 109
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "textlabel.error_sdusb"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 110
    .restart local v4       #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v4, :cond_7

    .line 111
    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 115
    :goto_3
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "textlabel.error_sdusb_eventtime"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 117
    .restart local v3       #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v3, :cond_8

    .line 118
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 122
    :goto_4
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "text.error_sdusb_eventinfo"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 124
    .local v2, tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_9

    .line 125
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 132
    .end local v2           #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v3           #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v4           #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :goto_5
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v6, "timeline.error_nophoto"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 133
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "textlabel.error_photo"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 136
    .local v1, tlError:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "text.error_photo_eventinfo"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 140
    .restart local v2       #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_3

    .line 143
    const-string v5, ""

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 146
    :cond_3
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v6, "textlabel.error_photo_eventtime"

    invoke-virtual {v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 147
    .restart local v3       #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    .end local v1           #tlError:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v3           #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v4       #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_4
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "Can not find textlabel.error_sdbroken"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 100
    .restart local v3       #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_5
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "Can not find textlabel.error_sdbroke_eventtime"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 103
    .end local v3           #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v4           #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_6
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "Can not find timeline.error_sdbroken"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 113
    .restart local v4       #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_7
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "Can not find textlabel.error_sdusb"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 120
    .restart local v3       #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_8
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "Can not find textlabel.error_sdusb_eventtime"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 127
    .restart local v2       #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_9
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "Can not find textlabel.error_sdusb_eventinfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 130
    .end local v2           #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v3           #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v4           #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_a
    const-string v5, "brian_LiveGallery_IdleScreen"

    const-string v6, "Can not find timeline.error_sdusb"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private initNoSD(Z)V
    .locals 6
    .parameter "noSD"

    .prologue
    .line 41
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxScene:Lcom/htc/fusion/fx/FxScene;

    const-string v5, "timeline.error_nosd"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 42
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, strTitle:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v4, :cond_5

    .line 45
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "textlabel.error_nosd"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 46
    .local v3, tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v3, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 51
    :goto_0
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "textlabel.error_nosd_eventtime"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 53
    .local v2, tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_2

    .line 55
    if-eqz p1, :cond_1

    .line 56
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 63
    :goto_1
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "text.error_nosd_eventinfo"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 65
    .local v1, tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v1, :cond_4

    .line 67
    if-eqz p1, :cond_3

    .line 68
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 77
    .end local v1           #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v3           #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :goto_2
    return-void

    .line 49
    .restart local v3       #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_0
    const-string v4, "brian_LiveGallery_IdleScreen"

    const-string v5, "Can not find textlabel.error_nosd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .restart local v2       #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_1
    iget-object v4, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_2
    const-string v4, "brian_LiveGallery_IdleScreen"

    const-string v5, "Can not find textlabel.error_nosd_eventtime"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 70
    .restart local v1       #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_3
    const-string v4, ""

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_2

    .line 73
    :cond_4
    const-string v4, "brian_LiveGallery_IdleScreen"

    const-string v5, "Can not find textlabel.error_nosd_eventinfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 76
    .end local v1           #tlErrorMessage:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #tlErrorMessageET:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v3           #tlErrorMessagePhoto:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_5
    const-string v4, "brian_LiveGallery_IdleScreen"

    const-string v5, "Can not find timeline.error_nosd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public hideErrorMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 191
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 196
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 201
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 203
    :cond_2
    return-void
.end method

.method public showErrorMessage(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    packed-switch p1, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "Show Loading ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, v3}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->initNoSD(Z)V

    .line 214
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 215
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 216
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "warning_bubble"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 218
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "Show NoSD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, v4}, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->initNoSD(Z)V

    .line 227
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 228
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 229
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "warning_bubble"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 231
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 232
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 236
    :pswitch_3
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "Show SDBroken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 240
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 241
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "warning_bubble"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 243
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 244
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 248
    :pswitch_4
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "Show SDUsb"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 252
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 253
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "idle_state"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 255
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 256
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 258
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "warning_bubble"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    .line 259
    .local v0, mIdleState:Lcom/htc/fusion/fx/Marker;
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorMessage() - StartFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", EndFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, v0, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget v3, v0, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(II)V

    goto/16 :goto_0

    .line 265
    .end local v0           #mIdleState:Lcom/htc/fusion/fx/Marker;
    :pswitch_5
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "brian_LiveGallery_IdleScreen"

    const-string v2, "Show No Photo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 269
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 270
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTCLNoPhoto:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "warning_bubble"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCNoSD:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 272
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDUsb:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 273
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/EMCFxScreen;->mFxTLCSDBroken:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
