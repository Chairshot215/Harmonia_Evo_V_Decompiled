.class public Lcom/htc/wrap/android/media/HtcWrapMediaFile;
.super Ljava/lang/Object;
.source "HtcWrapMediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final FILE_TYPE_3GPP:I = 0x17

.field private static final FILE_TYPE_3GPP2:I = 0x18

.field private static final FILE_TYPE_AAC:I = 0x8

.field private static final FILE_TYPE_AMR:I = 0x4

.field private static final FILE_TYPE_ASF:I = 0x1a

.field private static final FILE_TYPE_AVI:I = 0x1d

.field private static final FILE_TYPE_AWB:I = 0x5

.field private static final FILE_TYPE_BMP:I = 0x26

.field private static final FILE_TYPE_FLV:I = 0x14

.field private static final FILE_TYPE_GIF:I = 0x24

.field private static final FILE_TYPE_IMY:I = 0xe

.field private static final FILE_TYPE_JPEG:I = 0x23

.field private static final FILE_TYPE_JPS:I = 0x28

.field private static final FILE_TYPE_M3U:I = 0x2a

.field private static final FILE_TYPE_M4A:I = 0x2

.field private static final FILE_TYPE_M4V:I = 0x16

.field private static final FILE_TYPE_MID:I = 0xc

.field private static final FILE_TYPE_MKA:I = 0x9

.field private static final FILE_TYPE_MKV:I = 0x1b

.field private static final FILE_TYPE_MP2TS:I = 0x1c

.field private static final FILE_TYPE_MP3:I = 0x1

.field private static final FILE_TYPE_MP4:I = 0x15

.field private static final FILE_TYPE_MPO:I = 0x29

.field private static final FILE_TYPE_OGG:I = 0x7

.field private static final FILE_TYPE_PLS:I = 0x2b

.field private static final FILE_TYPE_PNG:I = 0x25

.field private static final FILE_TYPE_QCP:I = 0xa

.field private static final FILE_TYPE_RA:I = 0xb

.field private static final FILE_TYPE_RM:I = 0x20

.field private static final FILE_TYPE_RMVB:I = 0x22

.field private static final FILE_TYPE_RV:I = 0x21

.field private static final FILE_TYPE_SMF:I = 0xd

.field private static final FILE_TYPE_WAV:I = 0x3

.field private static final FILE_TYPE_WBMP:I = 0x27

.field private static final FILE_TYPE_WMA:I = 0x6

.field private static final FILE_TYPE_WMAD:I = 0x33

.field private static final FILE_TYPE_WMV:I = 0x19

.field private static final FILE_TYPE_WMVD:I = 0x1f

.field private static final FILE_TYPE_WPL:I = 0x2c

.field private static final FILE_TYPE_XVID:I = 0x1e

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x23

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xc

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x2a

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x14

.field private static final HTC_FILE_TYPE_INK:I = 0x2711

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xb

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x29

.field private static final LAST_MIDI_FILE_TYPE:I = 0xe

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x22

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field private static final sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x7

    const/4 v4, 0x1

    const/16 v6, 0x17

    const/16 v5, 0xc

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 124
    const-string v2, "MP3"

    const-string v3, "audio/mpeg"

    invoke-static {v2, v4, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    const-string v2, "MPGA"

    const-string v3, "audio/mpeg"

    invoke-static {v2, v4, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_1

    .line 142
    :cond_0
    const-string v2, "WMAD"

    const/16 v3, 0x33

    const-string v4, "audio/x-wma-drm"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    :cond_1
    const-string v2, "OGG"

    const-string v3, "application/ogg"

    invoke-static {v2, v7, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    const-string v2, "OGA"

    const-string v3, "application/ogg"

    invoke-static {v2, v7, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    const-string v2, "AAC"

    const/16 v3, 0x8

    const-string v4, "audio/aac"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const-string v2, "MKA"

    const/16 v3, 0x9

    const-string v4, "audio/x-matroska"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_2

    .line 153
    const-string v2, "QCP"

    const/16 v3, 0xa

    const-string v4, "audio/qcelp"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    :cond_2
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    const-string v2, "MIDI"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    const-string v2, "SMF"

    const-string v3, "audio/sp-midi"

    invoke-static {v2, v8, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    const-string v2, "SPMID"

    const-string v3, "audio/sp-midi"

    invoke-static {v2, v8, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    const-string v2, "IMY"

    const/16 v3, 0xe

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    const-string v2, "RTX"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    const-string v2, "OTA"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    const-string v2, "MPEG"

    const/16 v3, 0x15

    const-string v4, "video/mpeg"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    const-string v2, "MP4"

    const/16 v3, 0x15

    const-string v4, "video/mp4"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string v4, "video/mp4"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    const-string v2, "3GP"

    const-string v3, "video/3gpp"

    invoke-static {v2, v6, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    const-string v2, "3GPP"

    const-string v3, "video/3gpp"

    invoke-static {v2, v6, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    const-string v2, "3GPA"

    const-string v3, "video/3gpp"

    invoke-static {v2, v6, v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    const-string v2, "3G2"

    const/16 v3, 0x18

    const-string v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    const-string v2, "3GPP2"

    const/16 v3, 0x18

    const-string v4, "video/3gpp2"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    const-string v2, "MKV"

    const/16 v3, 0x1b

    const-string v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    const-string v2, "WEBM"

    const/16 v3, 0x1b

    const-string v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    const-string v2, "TS"

    const/16 v3, 0x1c

    const-string v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    const-string v2, "WMV"

    const/16 v3, 0x19

    const-string v4, "video/x-ms-wmv"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    const-string v2, "ASF"

    const/16 v3, 0x1a

    const-string v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x91

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x93

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xaa

    if-ne v2, v3, :cond_4

    .line 192
    :cond_3
    const-string v2, "WMVD"

    const/16 v3, 0x1f

    const-string v4, "video/x-wmv-drm"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    :cond_4
    const-string v2, "AVI"

    const/16 v3, 0x1d

    const-string v4, "video/x-msvideo"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    const-string v2, "XVID"

    const/16 v3, 0x1e

    const-string v4, "video/x-xvid"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    const-string v2, "FLV"

    const/16 v3, 0x14

    const-string v4, "video/x-flv"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    const-string v2, "JPG"

    const/16 v3, 0x23

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    const-string v2, "JPEG"

    const/16 v3, 0x23

    const-string v4, "image/jpeg"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    const-string v2, "GIF"

    const/16 v3, 0x24

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    const-string v2, "PNG"

    const/16 v3, 0x25

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    const-string v2, "BMP"

    const/16 v3, 0x26

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    const-string v2, "WBMP"

    const/16 v3, 0x27

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    const-string v2, "JPS"

    const/16 v3, 0x28

    const-string v4, "image/jps"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    const-string v2, "MPO"

    const/16 v3, 0x29

    const-string v4, "image/mpo"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    const-string v2, "M3U"

    const/16 v3, 0x2a

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    const-string v2, "PLS"

    const/16 v3, 0x2b

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    const-string v2, "WPL"

    const/16 v3, 0x2c

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 229
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 231
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 235
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sFileExtensions:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 120
    sget-object v0, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public static getExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xaa

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x40

    .line 272
    if-nez p0, :cond_0

    move-object v0, v3

    .line 351
    :goto_0
    return-object v0

    .line 274
    :cond_0
    const-string v2, "image/bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const-string v0, "BMP"

    goto :goto_0

    .line 277
    :cond_1
    const-string v2, "audio/wav"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    const-string v0, "WAV"

    goto :goto_0

    .line 280
    :cond_2
    const-string v2, "audio/x-mpeg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    const-string v0, "MP3"

    goto :goto_0

    .line 283
    :cond_3
    const-string v2, "audio/mp3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    const-string v0, "MP3"

    goto :goto_0

    .line 286
    :cond_4
    const-string v2, "video/3g2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 287
    const-string v0, "3G2"

    goto :goto_0

    .line 289
    :cond_5
    const-string v2, "audio/3gpp2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    const-string v0, "3G2"

    goto :goto_0

    .line 292
    :cond_6
    const-string v2, "audio/3gpp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 293
    const-string v0, "3GPP"

    goto :goto_0

    .line 295
    :cond_7
    const-string v2, "audio/aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 296
    const-string v0, "AAC"

    goto :goto_0

    .line 298
    :cond_8
    const-string v2, "audio/x-aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 299
    const-string v0, "AAC"

    goto :goto_0

    .line 301
    :cond_9
    const-string v2, "audio/x-midi"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 302
    const-string v0, "MIDI"

    goto :goto_0

    .line 305
    :cond_a
    const-string v2, "audio/mp3d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 306
    const-string v0, "MP3"

    goto :goto_0

    .line 308
    :cond_b
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 309
    const-string v0, "M4A"

    goto/16 :goto_0

    .line 313
    :cond_c
    const-string v2, "audio/m4a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 314
    const-string v0, "M4A"

    goto/16 :goto_0

    .line 319
    :cond_d
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v4, :cond_e

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v5, :cond_e

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v6, :cond_e

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v7, :cond_f

    .line 324
    :cond_e
    const-string v2, "audio/x-wma-drm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 325
    const-string v0, "WMAD"

    goto/16 :goto_0

    .line 330
    :cond_f
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v4, :cond_10

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v5, :cond_10

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x91

    if-eq v2, v4, :cond_10

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x93

    if-eq v2, v4, :cond_10

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v6, :cond_10

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x28

    if-eq v2, v4, :cond_10

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v7, :cond_11

    .line 338
    :cond_10
    const-string v2, "video/x-wmv-drm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 339
    const-string v0, "WMVD"

    goto/16 :goto_0

    .line 344
    :cond_11
    sget-object v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    .local v0, extension:Ljava/lang/String;
    sget-object v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;

    iget-object v2, v2, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_0

    .end local v0           #extension:Ljava/lang/String;
    :cond_13
    move-object v0, v3

    .line 351
    goto/16 :goto_0
.end method

.method private static getFileType(Ljava/lang/String;)Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 253
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 255
    const/4 v1, 0x0

    .line 256
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeValue(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 261
    invoke-static {p0}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getFileType(Ljava/lang/String;)Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;

    move-result-object v0

    .line 263
    .local v0, type:Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;
    if-nez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 267
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/htc/wrap/android/media/HtcWrapMediaFile$MediaFileType;->fileType:I

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v0, 0x1

    .line 240
    if-lt p0, v0, :cond_0

    const/16 v1, 0xb

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0xc

    if-lt p0, v1, :cond_1

    const/16 v1, 0xe

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x33

    if-ne p0, v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 248
    const/16 v0, 0x14

    if-lt p0, v0, :cond_0

    const/16 v0, 0x22

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
