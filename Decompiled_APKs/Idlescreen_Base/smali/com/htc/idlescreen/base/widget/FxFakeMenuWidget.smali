.class public Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;
.super Ljava/lang/Object;
.source "FxFakeMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$1;,
        Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyLeftBtnClickListener;,
        Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;,
        Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;
    }
.end annotation


# static fields
.field private static final DELTA_Z2:F = 1.0f

.field private static final LOG_PREFIX:Ljava/lang/String; = "FxFakeMenuWidget"

.field private static final RES_MENUITEM_LEFT:Ljava/lang/String; = "button.menuitem_left"

.field private static final RES_MENUITEM_RIGHT:Ljava/lang/String; = "button.menuitem_right"

.field public static final RES_MENU_MARKER_HIDE:Ljava/lang/String; = "menu_hide"

.field public static final RES_MENU_MARKER_SHOW:Ljava/lang/String; = "menu_show"

.field private static final RES_MENU_PRESS:Ljava/lang/String; = "textlabel.menu_press"

.field private static final RES_MENU_RESET:Ljava/lang/String; = "textlabel.menu_rest"

.field private static final RES_ROOT:Ljava/lang/String; = "timeline.fake_menu"


# instance fields
.field private isMenuKeyEnable:Z

.field mContext:Landroid/content/Context;

.field private mLeftListener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyLeftBtnClickListener;

.field private mMenuCallback:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

.field private mMenuHide:Lcom/htc/fusion/fx/Marker;

.field private mMenuMode:Z

.field public mMessageButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mMessageLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mMessageLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mRightListener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;

.field protected mRoot:Lcom/htc/fusion/fx/FxTimelineControl;

.field mScene:Lcom/htc/fusion/fx/FxScene;

.field public mSilenceButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mSilenceLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mSilenceLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "context"
    .parameter "scene"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyLeftBtnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyLeftBtnClickListener;-><init>(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mLeftListener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyLeftBtnClickListener;

    .line 52
    new-instance v0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;-><init>(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mRightListener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuMode:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuKeyEnable:Z

    .line 66
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 70
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;)Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuCallback:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuKeyEnable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuKeyEnable:Z

    return p1
.end method


# virtual methods
.method public closeMenu()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->setMenuPopup(Ljava/lang/Boolean;)V

    .line 119
    const-string v0, "FxFakeMenuWidget"

    const-string v1, "Menu close"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "menu_hide"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 123
    const-string v0, "FxFakeMenuWidget"

    const-string v1, "playMarker"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 76
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "menu_hide"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuHide:Lcom/htc/fusion/fx/Marker;

    .line 77
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuHide:Lcom/htc/fusion/fx/Marker;

    iget v0, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    .line 78
    .local v0, Hide:I
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 80
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "button.menuitem_left"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 81
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v2, "button.menuitem_right"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 83
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageButton:Lcom/htc/fusion/fx/controls/FxButton;

    const-string v2, "textlabel.menu_rest"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxButton;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 84
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageButton:Lcom/htc/fusion/fx/controls/FxButton;

    const-string v2, "textlabel.menu_press"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxButton;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 85
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceButton:Lcom/htc/fusion/fx/controls/FxButton;

    const-string v2, "textlabel.menu_rest"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxButton;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 86
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceButton:Lcom/htc/fusion/fx/controls/FxButton;

    const-string v2, "textlabel.menu_press"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxButton;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 88
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mLeftListener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyLeftBtnClickListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 89
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mRightListener:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MyRightBtnClickListener;

    invoke-interface {v1, v2}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->setZOrder()V

    .line 93
    return-void
.end method

.method public isMenuPopup()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public popupMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    const-string v0, "FxFakeMenuWidget"

    const-string v1, "Menu pop up"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->setMenuPopup(Ljava/lang/Boolean;)V

    .line 110
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->setVisibility(Z)Ljava/util/ArrayList;

    .line 113
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "menu_show"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 114
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->isMenuKeyEnable:Z

    .line 115
    return-void
.end method

.method public setCallback(Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;)V
    .locals 0
    .parameter "menuCallback"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuCallback:Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget$MenuCallback;

    .line 136
    return-void
.end method

.method public setLabel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "LeftButtonLab"
    .parameter "RightButtonLab"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 171
    :goto_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceLabel_press:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 176
    :goto_3
    return-void

    .line 156
    :cond_0
    const-string v0, "FxFakeMenuWidget"

    const-string v1, "mMessageLabel is null"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    const-string v0, "FxFakeMenuWidget"

    const-string v1, "mMessageLabel_press is null"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_2
    const-string v0, "FxFakeMenuWidget"

    const-string v1, "mSilenceLabel is null"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 174
    :cond_3
    const-string v0, "FxFakeMenuWidget"

    const-string v1, "mSilenceLabel_press is null"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setMenuPopup(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "isPopup"

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuMode:Z

    .line 132
    return-void
.end method

.method public setZOrder()V
    .locals 4

    .prologue
    .line 143
    const/high16 v0, 0x3f80

    .line 144
    .local v0, dz:F
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 145
    .local v1, mRoot:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getPosition()Lcom/htc/fusion/Point3F;

    move-result-object v2

    .line 146
    .local v2, p:Lcom/htc/fusion/Point3F;
    iget v3, v2, Lcom/htc/fusion/Point3F;->z:F

    add-float/2addr v3, v0

    iput v3, v2, Lcom/htc/fusion/Point3F;->z:F

    .line 147
    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setPosition(Lcom/htc/fusion/Point3F;)V

    .line 149
    return-void
.end method

.method public uninit()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMenuHide:Lcom/htc/fusion/fx/Marker;

    iget v0, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    .line 98
    .local v0, Hide:I
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 99
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mMessageButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 100
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mSilenceButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 101
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/idlescreen/base/widget/FxFakeMenuWidget;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 104
    :cond_0
    return-void
.end method
