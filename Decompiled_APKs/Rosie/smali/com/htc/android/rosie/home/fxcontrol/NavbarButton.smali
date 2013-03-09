.class public final Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;
.super Ljava/lang/Object;
.source "NavbarButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;,
        Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;,
        Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;
    }
.end annotation


# static fields
.field static final FUSION_TAG_BTN_NAV_BTN_ADD_MIDDLE_PRESS:Ljava/lang/String; = "btn.add_middle_press"

.field static final FUSION_TAG_BTN_NAV_BTN_SIDE_ANIM_CENTER:Ljava/lang/String; = "btn.navbtn_side_anim_center"

.field static final FUSION_TAG_BTN_NAV_BTN_SIDE_ANIM_LEFT:Ljava/lang/String; = "btn.navbtn_side_anim_left"

.field static final FUSION_TAG_BTN_NAV_BTN_SIDE_ANIM_MIDDLE_LEFT:Ljava/lang/String; = "btn.navbtn_side_anim_mid_left"

.field static final FUSION_TAG_BTN_NAV_BTN_SIDE_ANIM_MIDDLE_RIGHT:Ljava/lang/String; = "btn.navbtn_side_anim_mid_right"

.field static final FUSION_TAG_BTN_NAV_BTN_SIDE_ANIM_RIGHT:Ljava/lang/String; = "btn.navbtn_side_anim_right"

.field static final FUSION_TAG_CONTAINER_NAVBAR_LEFT:Ljava/lang/String; = "Container.navbar_left"

.field static final FUSION_TAG_CONTAINER_NAVBAR_MID_LEFT:Ljava/lang/String; = "Container.navbar_mid_left"

.field static final FUSION_TAG_CONTAINER_NAVBAR_MID_RIGHT:Ljava/lang/String; = "Container.navbar_mid_right"

.field static final FUSION_TAG_CONTAINER_NAVBAR_RIGHT:Ljava/lang/String; = "Container.navbar_right"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final localLOGD:Z


# instance fields
.field private mButtonBarMarkers:[Lcom/htc/fusion/fx/Marker;

.field private mButtonInfosArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonListener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;

.field mButtonListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFxButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/fx/controls/FxButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->LOG_TAG:Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/htc/launcher/settings/SettingUtil;->localLOGD:Z

    sput-boolean v0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->localLOGD:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;Lcom/htc/fusion/fx/FxScene;Ljava/util/Map;Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;)V
    .locals 1
    .parameter "fxWorkspace"
    .parameter "navbarScene"
    .parameter
    .parameter "buttonListner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/rosie/home/fxcontrol/FxWorkspace;",
            "Lcom/htc/fusion/fx/FxScene;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;",
            "Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, fxObjects:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/fusion/fx/FxObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/fusion/fx/Marker;

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonBarMarkers:[Lcom/htc/fusion/fx/Marker;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonListenerMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mFxButtons:Ljava/util/ArrayList;

    .line 56
    iput-object p4, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonListener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->labelNavbarButtons(Landroid/view/View;Lcom/htc/fusion/fx/FxScene;)V

    .line 58
    invoke-direct {p0, p3}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->initButtonAndAction(Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;)Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonListener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$IButtonListener;

    return-object v0
.end method

.method private bindFxButtonClickByFusionTag(Lcom/htc/fusion/fx/controls/FxButton;Ljava/lang/String;)V
    .locals 3
    .parameter "button"
    .parameter "tag"

    .prologue
    .line 178
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonListenerMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;

    .line 179
    .local v1, listener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;
    invoke-virtual {p1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    .line 180
    .local v0, clickSource:Lcom/htc/fusion/fx/IMessageSource;,"Lcom/htc/fusion/fx/IMessageSource<Ljava/lang/Void;>;"
    if-eqz v1, :cond_0

    .line 182
    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 189
    :goto_0
    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 190
    return-void

    .line 186
    :cond_0
    new-instance v1, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;

    .end local v1           #listener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;
    invoke-direct {v1, p0}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;-><init>(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;)V

    .line 187
    .restart local v1       #listener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;
    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonListenerMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initButtonAndAction(Ljava/util/Map;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/fusion/fx/FxObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, fxObjects:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/fusion/fx/FxObject;>;"
    const/4 v10, 0x6

    new-array v1, v10, [I

    fill-array-data v1, :array_0

    .line 118
    .local v1, actions:[I
    const/4 v10, 0x6

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "btn.navbtn_side_anim_left"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "btn.navbtn_side_anim_mid_left"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "btn.navbtn_side_anim_mid_right"

    aput-object v11, v4, v10

    const/4 v10, 0x3

    const-string v11, "btn.navbtn_side_anim_right"

    aput-object v11, v4, v10

    const/4 v10, 0x4

    const-string v11, "btn.navbtn_side_anim_center"

    aput-object v11, v4, v10

    const/4 v10, 0x5

    const-string v11, "btn.add_middle_press"

    aput-object v11, v4, v10

    .line 126
    .local v4, fxNames:[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Container.navbar_left"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string v11, "Container.navbar_mid_left"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "Container.navbar_mid_right"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-string v11, "Container.navbar_right"

    aput-object v11, v8, v10

    const/4 v10, 0x4

    const-string v11, ""

    aput-object v11, v8, v10

    const/4 v10, 0x5

    const-string v11, ""

    aput-object v11, v8, v10

    .line 133
    .local v8, sceneContainerNames:[Ljava/lang/String;
    array-length v0, v1

    .line 135
    .local v0, ButtonCount:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonInfosArrayList:Ljava/util/ArrayList;

    .line 138
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 140
    aget-object v9, v8, v5

    .line 141
    .local v9, tag:Ljava/lang/String;
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 144
    .local v7, sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    new-instance v3, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;

    aget v10, v1, v5

    const/4 v11, 0x0

    invoke-direct {v3, p0, v10, v11, v7}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;-><init>(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;ILandroid/content/Intent;Lcom/htc/fusion/fx/controls/FxSceneContainer;)V

    .line 145
    .local v3, buttonInfo:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonInfosArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    aget-object v9, v4, v5

    .line 148
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxButton;

    .line 150
    .local v2, button:Lcom/htc/fusion/fx/controls/FxButton;
    if-nez v2, :cond_0

    .line 151
    sget-object v10, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "While binding buttons, we cannot find FxButton("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "), so Button "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "cannot work."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    :cond_0
    aget v10, v1, v5

    if-eqz v10, :cond_1

    aget v10, v1, v5

    const/4 v11, 0x6

    if-eq v10, v11, :cond_1

    .line 158
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 160
    :cond_1
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonBarMarkers:[Lcom/htc/fusion/fx/Marker;

    const-string v11, "down_to_up"

    invoke-virtual {v2, v11}, Lcom/htc/fusion/fx/controls/FxButton;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v11

    aput-object v11, v10, v5

    .line 161
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mFxButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-direct {p0, v2, v9}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->bindFxButtonClickByFusionTag(Lcom/htc/fusion/fx/controls/FxButton;Ljava/lang/String;)V

    .line 164
    iget-object v10, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonListenerMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;

    .line 165
    .local v6, listener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;
    invoke-virtual {v6, v3}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;->setButtonInfo(Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;)V

    goto :goto_1

    .line 167
    .end local v2           #button:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v3           #buttonInfo:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;
    .end local v6           #listener:Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonClickListener;
    .end local v7           #sc:Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .end local v9           #tag:Ljava/lang/String;
    :cond_2
    return-void

    .line 110
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private labelNavbarButtons(Landroid/view/View;Lcom/htc/fusion/fx/FxScene;)V
    .locals 9
    .parameter "view"
    .parameter "scene"

    .prologue
    .line 66
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0038

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, phoneLabel:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 69
    const v7, 0x7f02006e

    invoke-virtual {p0, p1, v5, v7}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->createRichText(Landroid/view/View;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v6

    .line 70
    .local v6, spanString:Landroid/text/SpannableString;
    const-string v7, "phone"

    invoke-virtual {p2, v7}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 71
    .local v4, phone:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 75
    .end local v4           #phone:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v6           #spanString:Landroid/text/SpannableString;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, allAppsLabel:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 77
    const-string v7, "all_apps"

    invoke-virtual {p2, v7}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 78
    .local v0, allApps:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v1, 0x0

    const-string v8, "tweaks_rosie_navbar_hidelabel"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eq v1, v7, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 82
    .end local v0           #allApps:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, personalizeLabel:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 84
    const-string v7, "personalize"

    invoke-virtual {p2, v7}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 85
    .local v2, personalize:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 89
    .end local v1           #allAppsLabel:Ljava/lang/String;
    .end local v2           #personalize:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v3           #personalizeLabel:Ljava/lang/String;
    .end local v5           #phoneLabel:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public createRichText(Landroid/view/View;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 6
    .parameter "view"
    .parameter "label"
    .parameter "ResId"

    .prologue
    const/4 v5, 0x0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 93
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 94
    .local v2, span:Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 97
    .local v1, image:Landroid/text/style/ImageSpan;
    const/16 v3, 0x11

    invoke-virtual {v2, v1, v5, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 98
    return-object v2
.end method

.method public getSceneContainer(I)Lcom/htc/fusion/fx/controls/FxSceneContainer;
    .locals 1
    .parameter "index"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonInfosArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;

    invoke-virtual {v0}, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton$ButtonInfo;->getSceneContainer()Lcom/htc/fusion/fx/controls/FxSceneContainer;

    move-result-object v0

    return-object v0
.end method

.method public setButtonBarMarkersToEnd()V
    .locals 3

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mFxButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mFxButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    iget-object v2, p0, Lcom/htc/android/rosie/home/fxcontrol/NavbarButton;->mButtonBarMarkers:[Lcom/htc/fusion/fx/Marker;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxButton;->setFrame(F)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method
