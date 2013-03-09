.class public Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;
.super Ljava/lang/Object;
.source "ShortcutR.java"


# static fields
.field public static final M10:Ljava/lang/String; = "scenes/Lockscreen_shortcut.m10"

.field public static final M10_LAND:Ljava/lang/String; = "scenes/land/Lockscreen_shortcut.m10"

.field public static final M10_LAND_MESSAGE:Ljava/lang/String; = "scenes/land/Lockscreen_highprio_messages.m10"

.field public static final M10_LAND_MISSCALL:Ljava/lang/String; = "scenes/land/Lockscreen_highprio_missedcall.m10"

.field public static final M10_LAND_VOICEMAIL:Ljava/lang/String; = "scenes/land/Lockscreen_highprio_voicemail.m10"

.field public static final M10_MESSAGE:Ljava/lang/String; = "scenes/Lockscreen_highprio_messages.m10"

.field public static final M10_MISSCALL:Ljava/lang/String; = "scenes/Lockscreen_highprio_missedcall.m10"

.field public static final M10_VOICEMAIL:Ljava/lang/String; = "scenes/Lockscreen_highprio_voicemail.m10"

.field public static final RES_CONTAINER_NAME:Ljava/lang/String; = "scenecontainer.shortcut_highpri"

.field public static final RES_ICON_NAMES:[[Ljava/lang/String; = null

.field public static final RES_MARKER_FLY_IN:Ljava/lang/String; = "fly_in"

.field public static final RES_MARKER_INDICATE:Ljava/lang/String; = null

.field public static final RES_MARKER_NEW:Ljava/lang/String; = "new"

.field public static final RES_MARKER_OFF:Ljava/lang/String; = "Opacity_off"

.field public static final RES_MARKER_ON:Ljava/lang/String; = "Opacity_on"

.field public static final RES_MARKER_OPACTICY_OFF:Ljava/lang/String; = "Opacity_off"

.field public static final RES_MARKER_OPACTICY_ON:Ljava/lang/String; = "Opacity_on"

.field public static final RES_MARKER_UNLOCK:Ljava/lang/String; = "unlock"

.field public static final RES_MARKER_UNREAD:Ljava/lang/String; = "unread"

.field public static final RES_MESSAGE_INFO:Ljava/lang/String; = "textlabel.messages_info"

.field public static final RES_MESSAGE_NAME:Ljava/lang/String; = "textlabel.messages_name"

.field public static final RES_MESSAGE_TITLE:Ljava/lang/String; = "textlabel.messages"

.field public static final RES_MISSCALL_INFO:Ljava/lang/String; = "textlabel.missedcall_info"

.field public static final RES_MISSCALL_NUMBER:Ljava/lang/String; = "textlabel.missedcall_number"

.field public static final RES_MISSCALL_TITLE:Ljava/lang/String; = "textlabel.missedcall"

.field public static final RES_SHADOW_NAME:Ljava/lang/String; = "dynamicimage.shortcutoutline"

.field public static final RES_SHORTCUTPANEL_BACKGROUND:[Ljava/lang/String; = null

.field public static final RES_SHORTCUT_PANEL:Ljava/lang/String; = "timeline.shortcutpanel"

.field public static final RES_TEXT_NUM:Ljava/lang/String; = "textlabel.notification_num"

.field public static final RES_TEXT_NUM99:Ljava/lang/String; = "textlabel.notification_num99"

.field public static final RES_TIMELINE_BUBBLE:Ljava/lang/String; = "notification_bubble"

.field public static final RES_TIMELINE_NUM99:Ljava/lang/String; = "t.common_notifiction_bubble"

.field public static final RES_VOICEMAIL_NAME:Ljava/lang/String; = "textlabel.voicemail_name"

.field public static final RES_VOICEMAIL_NUMBER:Ljava/lang/String; = "textlabel.voicemail_number"

.field public static final RES_VOICEMAIL_TITLE:Ljava/lang/String; = "textlabel.voicemail"

.field public static final RES_WEATHER_CONTAINER_NAME:Ljava/lang/String; = "sc.weatherbackground"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_0

    .line 12
    const-string v0, "unlock_indicate"

    sput-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_MARKER_INDICATE:Ljava/lang/String;

    .line 32
    :goto_0
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "timeline.shortcutpanel1"

    aput-object v1, v0, v4

    const-string v1, "timeline.shortcutpanel2"

    aput-object v1, v0, v5

    const-string v1, "timeline.shortcutpanel3"

    aput-object v1, v0, v6

    const-string v1, "timeline.shortcutpanel4"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_SHORTCUTPANEL_BACKGROUND:[Ljava/lang/String;

    .line 96
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v0, :cond_1

    .line 97
    new-array v0, v8, [[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon01"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon1"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon01_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon01_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon01_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timeline.shortcuticon01_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon01"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon01"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcuticon01"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name1"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon02"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon2"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon02_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon02_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon02_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timline.shortcuticon02_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon02"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon02"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcuticon02"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name2"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon03"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon3"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon03_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon03_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon03_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timeline.shortcuticon03_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon03"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon03"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcuticon03"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name3"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon04"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon4"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon04_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon04_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon04_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timeline.shortcuticon04_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon04"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon04"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcuticon04"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name4"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    .line 198
    :goto_1
    return-void

    .line 15
    :cond_0
    const-string v0, "unlock_indicator"

    sput-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_MARKER_INDICATE:Ljava/lang/String;

    goto/16 :goto_0

    .line 148
    :cond_1
    new-array v0, v8, [[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon01"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon1"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon01_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon01_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon01_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timeline.shortcuticon01_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon01"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon01"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcut01"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name1"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon02"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon2"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon02_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon02_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon02_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timline.shortcuticon02_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon02"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon02"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcut02"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name2"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon03"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon3"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon03_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon03_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon03_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timeline.shortcuticon03_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon03"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon03"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcut03"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name3"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "timeline.shortcuticon04"

    aput-object v2, v1, v4

    const-string v2, "idlebase_shortcut_icon4"

    aput-object v2, v1, v5

    const-string v2, "timeline.shortcuticon04_posiY"

    aput-object v2, v1, v6

    const-string v2, "timeline.shortcuticon04_posiX"

    aput-object v2, v1, v7

    const-string v2, "timeline.shortcuticon04_scale"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timeline.shortcuticon04_opacity"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "hitbox.shortcuticon04"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dynamicimage.shortcuticon04"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeline.comp_shortcut04"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "textcomp.shortcut_name4"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "textlabel.shortcut_name"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "t.common_notifiction_bubble"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/idlescreen/base/widget/shortcut/ShortcutR;->RES_ICON_NAMES:[[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
