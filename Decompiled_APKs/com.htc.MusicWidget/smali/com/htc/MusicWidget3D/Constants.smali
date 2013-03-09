.class public Lcom/htc/MusicWidget3D/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ANIMATION_TYPE:Ljava/lang/String; = "animationtype"

.field public static final BIND_SERVICE_DELAY:I = 0xa

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CONFIG_CHANGE_DELAY:I = 0x5dc

.field public static final EXT_ALBUM_ID:Ljava/lang/String; = "albumid"

.field public static final MARKER_DISABLE_BUTTON:Ljava/lang/String; = "intro_to_disabled"

.field public static final MARKER_ENABLE_BUTTON:Ljava/lang/String; = "intro_to_up"

.field public static final MARKER_INFO_ANIM:Ljava/lang/String; = "fly_in"

.field public static final MARKER_NEXT_ROTATE_ART_1_TO_2:Ljava/lang/String; = "play_right_back"

.field public static final MARKER_NEXT_ROTATE_ART_2_TO_1:Ljava/lang/String; = "play_right_next"

.field public static final MARKER_PAUSE_MUSIC:Ljava/lang/String; = "press_stop"

.field public static final MARKER_PLAY_MUSIC:Ljava/lang/String; = "press_play"

.field public static final MARKER_PREV_ROTATE_ART_1_TO_2:Ljava/lang/String; = "play_left_back"

.field public static final MARKER_PREV_ROTATE_ART_2_TO_1:Ljava/lang/String; = "play_left_next"

.field public static final MARKER_REPEAT_ALL:Ljava/lang/String; = "repeat_1"

.field public static final MARKER_REPEAT_CURRENT:Ljava/lang/String; = "repeat_2"

.field public static final MARKER_REPEAT_OFF:Ljava/lang/String; = "repeat_off"

.field public static final MARKER_SHUFFLE_OFF:Ljava/lang/String; = "shuffle_off"

.field public static final MARKER_SHUFFLE_ON:Ljava/lang/String; = "shuffle_on"

.field public static final MARKER_WIDGET_EMPTY_PAGE:Ljava/lang/String; = "empty_page"

.field public static final MARKER_WIDGET_MAIN_PAGE:Ljava/lang/String; = "main_page"

.field public static final META_CHANGED:Ljava/lang/String; = "com.htc.music.metachanged"

.field public static final NONUI_MSG_NEXT:I = 0x2

.field public static final NONUI_MSG_PREV:I = 0x3

.field public static final NONUI_MSG_RESET_UPDATE_MUSIC_FLAG:I = 0x4

.field public static final NONUI_MSG_UPDATE_MUSIC_INFO:I = 0x1

.field public static final NONUI_MSG_UPDATE_RECENT_ALBUM:I = 0x0

.field public static final NO_ANIMATION:I = 0x0

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.htc.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field public static final PLAY_NEXT_ANIMATION:I = 0x2

.field public static final PLAY_PREV_ANIMATION:I = 0x1

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.htc.music.queuechanged"

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final SERVICECMD:Ljava/lang/String; = "com.htc.music.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final UI_MSG_BASE:I = 0x0

.field public static final UI_MSG_ON_BIND_SERVICE:I = 0x1

.field public static final UI_MSG_ON_UNBIND_SERVICE:I = 0x2

.field public static final UI_MSG_REFRESH:I = 0x4

.field public static final UI_MSG_REFRESH_ONCE:I = 0x6

.field public static final UI_MSG_UPDATE_MUSIC_INFO:I = 0x3

.field public static final UI_MSG_UPDATE_RECENT_ALBUM:I = 0x5

.field public static final UNBIND_SERVICE_DELAY:I = 0x1d4c0

.field public static final UNKNOWN:Ljava/lang/String; = "<unknown>"

.field public static final UPDATE_MUSICINFO_DELAY:I = 0xa

.field public static final WORKER_MSG_CONFIG_CHANGE:I = 0x0

.field public static final WORKER_MSG_ON_RESUME:I = 0x3

.field public static final WORKER_MSG_REFRESH_RECENT_ALBUM:I = 0x2

.field public static final WORKER_MSG_UPDATE_RECENT_ALBUM:I = 0x1

.field public static final widget4x1ItemIdentifier:[Ljava/lang/String;

.field public static final widget4x2ItemIdentifier:[Ljava/lang/String;

.field public static final widget4x4ItemIdentifier:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v3

    const-string v1, "button.music_right"

    aput-object v1, v0, v4

    const-string v1, "button.music_left"

    aput-object v1, v0, v5

    const-string v1, "button.music_center"

    aput-object v1, v0, v6

    const-string v1, "common_4x2.hitbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeline.music_main_page"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.center_play_stop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "timeline.tilt_music"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.music4x4_singer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.music4x4_time_left"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "textlabel.music4x4_time_right"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "progressbar.music_play"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "timeline.music_song"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "textlabel.music4x4_song"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.album"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dynamicimage.music_album_01"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dynamicimage.music_album_r_01"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dynamicimage.music_album_02"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dynamicimage.music_album_r_02"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dynamicimage.DMP_icons"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "music_button_L"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "timeline.titlemarquee"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "timeline.titlemarquee_dmp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "textlabel.recent_album"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "timeline.playlist"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "timeline.music"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MusicWidget3D/Constants;->widget4x2ItemIdentifier:[Ljava/lang/String;

    .line 133
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v3

    const-string v1, "button.music_right"

    aput-object v1, v0, v4

    const-string v1, "button.music_left"

    aput-object v1, v0, v5

    const-string v1, "button.music_center"

    aput-object v1, v0, v6

    const-string v1, "common_4x4_page.hitbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeline.music_main_page"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.center_play_stop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "timeline.tilt_music"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "textlabel.music4x4_singer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.music4x4_time_left"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "textlabel.music4x4_time_right"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "progressbar.music_play"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "timeline.music_song"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "textlabel.music4x4_song"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.album"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dynamicimage.music_album_01"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dynamicimage.music_album_r_01"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dynamicimage.music_album_02"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dynamicimage.music_album_r_02"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dynamicimage.DMP_icons"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "timeline.titlemarquee"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "timeline.titlemarquee_dmp"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "timeline.music_icon_shuffle"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "music_icon_shuffle.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "timeline.music_icon_repeat"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "music_icon_repeat.hitbox"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "textlabel.recent_album"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "timeline.playlist"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "textlabel.no_playlist"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "timeline.music"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MusicWidget3D/Constants;->widget4x4ItemIdentifier:[Ljava/lang/String;

    .line 167
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timeline.tiltanim"

    aput-object v1, v0, v3

    const-string v1, "button.music_right"

    aput-object v1, v0, v4

    const-string v1, "button.music_left"

    aput-object v1, v0, v5

    const-string v1, "button.music_center"

    aput-object v1, v0, v6

    const-string v1, "common_4x1.hitbox"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "timeline.music_main_page"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "timeline.center_play_stop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "textlabel.empty_page"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "timeline.tilt_music"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "timeline.music_song"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "textlabel.music4x4_song"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dynamicimage.DMP_icons"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dynamicimage.music_album_01"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dynamicimage.music_album_r_01"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "timeline.titlemarquee"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "timeline.titlemarquee_dmp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "music_button"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "timeline.album"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "dynamicimage.music_album_02"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dynamicimage.music_album_r_02"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "timeline.music"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MusicWidget3D/Constants;->widget4x1ItemIdentifier:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
