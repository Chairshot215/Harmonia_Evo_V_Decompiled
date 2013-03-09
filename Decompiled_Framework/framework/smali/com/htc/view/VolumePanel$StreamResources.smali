.class final enum Lcom/htc/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconHtcMuteResName:Ljava/lang/String;

.field iconHtcOutdoorName:Ljava/lang/String;

.field iconHtcResName:Ljava/lang/String;

.field iconHtcVibrateName:Ljava/lang/String;

.field iconMuteRes:I

.field iconOutDoorRes:I

.field iconRes:I

.field iconVibrateRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x10403d0

    const v5, 0x1080293

    const v6, 0x1080293

    const-string/jumbo v7, "zzzz_icon_bluetooth"

    const-string/jumbo v8, "zzzz_icon_bluetooth_mute"

    const-string/jumbo v9, "zzzz_icon_launcher_bluetooth"

    const-string/jumbo v10, "zzzz_icon_launcher_bluetooth_mute"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "RingerStream"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x10403d1

    const v5, 0x1080298

    const v6, 0x1080299

    const v7, 0x108029a

    const v8, 0x1080298

    const-string/jumbo v9, "zzzz_icon_sound_display"

    const-string/jumbo v10, "zzzz_icon_profile_silent"

    const-string/jumbo v11, "zzzz_icon_profile"

    const-string/jumbo v12, "zzzz_icon_speaker_pocket"

    const-string/jumbo v13, "zzzz_icon_launcher_sound_display"

    const-string/jumbo v14, "zzzz_icon_launcher_profile_silent"

    const-string/jumbo v15, "zzzz_icon_launcher_profile"

    const-string/jumbo v16, "zzzz_icon_launcher_speaker_pocket"

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "VoiceStream"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x10403cb

    const v5, 0x1080297

    const v6, 0x1080297

    const-string/jumbo v7, "zzzz_icon_sound_display"

    const-string/jumbo v8, "zzzz_icon_profile_silent"

    const-string/jumbo v9, "zzzz_icon_launcher_sound_display"

    const-string/jumbo v10, "zzzz_icon_launcher_profile_silent"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "AlarmStream"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0x10403cd

    const v5, 0x1080291

    const v6, 0x1080292

    const-string/jumbo v7, "zzzz_icon_alarm"

    const-string/jumbo v8, "zzzz_icon_alarm_mute"

    const-string/jumbo v9, "zzzz_icon_launcher_alarm"

    const-string/jumbo v10, "zzzz_icon_launcher_alarm_mute"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "MediaStream"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x10403d3

    const v5, 0x108029b

    const v6, 0x108029c

    const-string/jumbo v7, "zzzz_icon_sound_display"

    const-string/jumbo v8, "zzzz_icon_silent_mode"

    const-string/jumbo v9, "zzzz_icon_launcher_sound_display"

    const-string/jumbo v10, "zzzz_icon_launcher_profile_silent"

    const/4 v11, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "NotificationStream"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x10403d4

    const v5, 0x1080295

    const v6, 0x1080296

    const-string/jumbo v7, "zzzz_icon_reminder"

    const-string/jumbo v8, "zzzz_icon_reminder_mute"

    const-string/jumbo v9, "zzzz_icon_launcher_reminder"

    const-string/jumbo v10, "zzzz_icon_launcher_reminder_mute"

    const/4 v11, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "SystemStream"

    const/4 v2, 0x6

    const/4 v3, 0x1

    const v4, 0x10403cf

    const v5, 0x108029b

    const v6, 0x108029c

    const-string/jumbo v7, "zzzz_icon_sound_display"

    const-string/jumbo v8, "zzzz_icon_profile_silent"

    const-string/jumbo v9, "zzzz_icon_launcher_sound_display"

    const-string/jumbo v10, "zzzz_icon_launcher_profile_silent"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "DtmfStream"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const v4, 0x10403cf

    const v5, 0x108029b

    const v6, 0x108029c

    const-string/jumbo v7, "zzzz_icon_sound_display"

    const-string/jumbo v8, "zzzz_icon_profile_silent"

    const-string/jumbo v9, "zzzz_icon_launcher_sound_display"

    const-string/jumbo v10, "zzzz_icon_launcher_profile_silent"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    new-instance v0, Lcom/htc/view/VolumePanel$StreamResources;

    const-string v1, "DummyStream"

    const/16 v2, 0x8

    const/4 v3, -0x2

    const v4, 0x10403cf

    const v5, 0x108029b

    const v6, 0x108029c

    const-string/jumbo v7, "zzzz_icon_sound_display"

    const-string/jumbo v8, "zzzz_icon_profile_silent"

    const-string/jumbo v9, "zzzz_icon_launcher_sound_display"

    const-string/jumbo v10, "zzzz_icon_launcher_profile_silent"

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/htc/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/view/VolumePanel$StreamResources;->$VALUES:[Lcom/htc/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    iput p4, p0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    iput p5, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    iput p6, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput p7, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    iput p8, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p13, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcVibrateName:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcOutdoorName:Ljava/lang/String;

    :goto_0
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    return-void

    :cond_0
    iput-object p9, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    iput-object p10, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    iput-object p11, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcVibrateName:Ljava/lang/String;

    iput-object p12, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcOutdoorName:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    iput p4, p0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    iput p5, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    iput p6, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    iput v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    invoke-static {}, Lcom/htc/view/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p9, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    iput-object p10, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcVibrateName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcOutdoorName:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    return-void

    :cond_0
    iput-object p7, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    iput-object p8, p0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/view/VolumePanel$StreamResources;
    .locals 1

    const-class v0, Lcom/htc/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/htc/view/VolumePanel$StreamResources;
    .locals 1

    sget-object v0, Lcom/htc/view/VolumePanel$StreamResources;->$VALUES:[Lcom/htc/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Lcom/htc/view/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/view/VolumePanel$StreamResources;

    return-object v0
.end method
