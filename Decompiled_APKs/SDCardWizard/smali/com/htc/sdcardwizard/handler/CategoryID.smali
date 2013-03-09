.class public final enum Lcom/htc/sdcardwizard/handler/CategoryID;
.super Ljava/lang/Enum;
.source "CategoryID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdcardwizard/handler/CategoryID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum ALARM:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum APPLICATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum ATTACHMENTS_MAIL:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum BROWSER:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum EXP_FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum EXP_TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum GALLERY:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum MAPS:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum MUSIC:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum NOTIFICATION:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum READER:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum RINGTONES:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum SHOW_ME:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum SKIN:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum TEMP_FILES:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum VOICES_FOR_LOCATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum VOICE_RECOGNITION:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum VOICE_RECORDER:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum WALLPAPER:Lcom/htc/sdcardwizard/handler/CategoryID;

.field public static final enum WATCH:Lcom/htc/sdcardwizard/handler/CategoryID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "APPLICATIONS"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->APPLICATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 6
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "TEMP_FILES"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->TEMP_FILES:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 7
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "FOOTPRINTS"

    invoke-direct {v0, v1, v5}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 8
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "EXP_FOOTPRINTS"

    invoke-direct {v0, v1, v6}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->EXP_FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 9
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "MAPS"

    invoke-direct {v0, v1, v7}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->MAPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 10
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "VOICES_FOR_LOCATIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICES_FOR_LOCATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 11
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "TRIPS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 12
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "EXP_TRIPS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->EXP_TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 13
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "VOICE_RECOGNITION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICE_RECOGNITION:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 14
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "SHOW_ME"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->SHOW_ME:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 15
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "MUSIC"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->MUSIC:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 16
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "WATCH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->WATCH:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 17
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "RINGTONES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->RINGTONES:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 18
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "GALLERY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->GALLERY:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 19
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->NOTIFICATION:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 20
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "ALARM"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->ALARM:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 21
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "BROWSER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->BROWSER:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 22
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "ATTACHMENTS_MAIL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->ATTACHMENTS_MAIL:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 23
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "VOICE_RECORDER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICE_RECORDER:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 24
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "WALLPAPER"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->WALLPAPER:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 25
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "READER"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->READER:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 26
    new-instance v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    const-string v1, "SKIN"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/htc/sdcardwizard/handler/CategoryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->SKIN:Lcom/htc/sdcardwizard/handler/CategoryID;

    .line 4
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/htc/sdcardwizard/handler/CategoryID;

    sget-object v1, Lcom/htc/sdcardwizard/handler/CategoryID;->APPLICATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdcardwizard/handler/CategoryID;->TEMP_FILES:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdcardwizard/handler/CategoryID;->FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sdcardwizard/handler/CategoryID;->EXP_FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/sdcardwizard/handler/CategoryID;->MAPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICES_FOR_LOCATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->EXP_TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICE_RECOGNITION:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->SHOW_ME:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->MUSIC:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->WATCH:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->RINGTONES:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->GALLERY:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->NOTIFICATION:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->ALARM:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->BROWSER:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->ATTACHMENTS_MAIL:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICE_RECORDER:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->WALLPAPER:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->READER:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/sdcardwizard/handler/CategoryID;->SKIN:Lcom/htc/sdcardwizard/handler/CategoryID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->$VALUES:[Lcom/htc/sdcardwizard/handler/CategoryID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->$VALUES:[Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-virtual {v0}, [Lcom/htc/sdcardwizard/handler/CategoryID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method
