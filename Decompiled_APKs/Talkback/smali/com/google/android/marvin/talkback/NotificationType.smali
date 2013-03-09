.class public final enum Lcom/google/android/marvin/talkback/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/marvin/talkback/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHAT:Lcom/google/android/marvin/talkback/NotificationType; = null

.field public static final enum EMAIL:Lcom/google/android/marvin/talkback/NotificationType; = null

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/marvin/talkback/NotificationType; = null

.field public static final enum ERROR:Lcom/google/android/marvin/talkback/NotificationType; = null

.field private static final ICON_CHAT:I = 0x1080077

.field private static ICON_EMAIL:I = 0x0

.field private static final ICON_ERROR:I = 0x1080078

.field private static ICON_GMAIL:I = 0x0

.field private static final ICON_MISSED_CALL:I = 0x108007f

.field private static final ICON_MORE:I = 0x1080079

.field private static final ICON_MUTE:I = 0x1080076

.field private static ICON_PLAY:I = 0x0

.field private static final ICON_SDCARD:I = 0x108007a

.field private static final ICON_SDCARD_USB:I = 0x108007b

.field private static ICON_SMS:I = 0x0

.field private static ICON_SMS_FAILED:I = 0x0

.field private static final ICON_SYNC:I = 0x108007c

.field private static final ICON_SYNC_NOANIM:I = 0x108007d

.field private static final ICON_VOICEMAIL:I = 0x108007e

.field private static final INVALID_ICON:I = -0x1

.field public static final enum MISSED_CALL:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum MORE:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum MUTE:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum PLAY:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum SDCARD:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum SDCARD_USB:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum SYNC:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum SYNC_NOANIM:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum TEXT_MESSAGE:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum TEXT_MESSAGE_FAILED:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum USB_CONNECTED:Lcom/google/android/marvin/talkback/NotificationType;

.field public static final enum VOICEMAIL:Lcom/google/android/marvin/talkback/NotificationType;

.field private static sHasLoadedIcons:Z


# instance fields
.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "TEXT_MESSAGE"

    const v2, 0x7f090029

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->TEXT_MESSAGE:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "TEXT_MESSAGE_FAILED"

    .line 32
    const v2, 0x7f09002a

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->TEXT_MESSAGE_FAILED:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "MISSED_CALL"

    .line 33
    const v2, 0x7f09002b

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->MISSED_CALL:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "USB_CONNECTED"

    .line 34
    const v2, 0x7f09002c

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->USB_CONNECTED:Lcom/google/android/marvin/talkback/NotificationType;

    .line 35
    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "MUTE"

    const v2, 0x7f09002d

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->MUTE:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "CHAT"

    const/4 v2, 0x5

    const v3, 0x7f09002e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->CHAT:Lcom/google/android/marvin/talkback/NotificationType;

    .line 36
    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    const v3, 0x7f09002f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->ERROR:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "MORE"

    const/4 v2, 0x7

    const v3, 0x7f090030

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->MORE:Lcom/google/android/marvin/talkback/NotificationType;

    .line 37
    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "SDCARD"

    const/16 v2, 0x8

    const v3, 0x7f090031

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SDCARD:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "SDCARD_USB"

    const/16 v2, 0x9

    .line 38
    const v3, 0x7f090032

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SDCARD_USB:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "SYNC"

    const/16 v2, 0xa

    const v3, 0x7f090033

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SYNC:Lcom/google/android/marvin/talkback/NotificationType;

    .line 39
    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "SYNC_NOANIM"

    const/16 v2, 0xb

    const v3, 0x7f090035

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SYNC_NOANIM:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "VOICEMAIL"

    const/16 v2, 0xc

    .line 40
    const v3, 0x7f090036

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->VOICEMAIL:Lcom/google/android/marvin/talkback/NotificationType;

    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "PLAY"

    const/16 v2, 0xd

    const v3, 0x7f090037

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->PLAY:Lcom/google/android/marvin/talkback/NotificationType;

    .line 41
    new-instance v0, Lcom/google/android/marvin/talkback/NotificationType;

    const-string v1, "EMAIL"

    const/16 v2, 0xe

    const v3, 0x7f090034

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/marvin/talkback/NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->EMAIL:Lcom/google/android/marvin/talkback/NotificationType;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/marvin/talkback/NotificationType;

    sget-object v1, Lcom/google/android/marvin/talkback/NotificationType;->TEXT_MESSAGE:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/marvin/talkback/NotificationType;->TEXT_MESSAGE_FAILED:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/marvin/talkback/NotificationType;->MISSED_CALL:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/marvin/talkback/NotificationType;->USB_CONNECTED:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/marvin/talkback/NotificationType;->MUTE:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->CHAT:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->ERROR:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->MORE:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->SDCARD:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->SDCARD_USB:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->SYNC:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->SYNC_NOANIM:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->VOICEMAIL:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->PLAY:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/marvin/talkback/NotificationType;->EMAIL:Lcom/google/android/marvin/talkback/NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/marvin/talkback/NotificationType;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/NotificationType;

    .line 49
    sput-boolean v4, Lcom/google/android/marvin/talkback/NotificationType;->sHasLoadedIcons:Z

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "resId"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/google/android/marvin/talkback/NotificationType;->mResId:I

    .line 75
    return-void
.end method

.method public static getNotificationTypeFromIcon(Landroid/content/Context;I)Lcom/google/android/marvin/talkback/NotificationType;
    .locals 6
    .parameter "context"
    .parameter "icon"

    .prologue
    .line 112
    sget-boolean v0, Lcom/google/android/marvin/talkback/NotificationType;->sHasLoadedIcons:Z

    if-nez v0, :cond_0

    .line 113
    invoke-static {p0}, Lcom/google/android/marvin/talkback/NotificationType;->loadIcons(Landroid/content/Context;)V

    .line 117
    :cond_0
    sget v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_SMS:I

    if-ne p1, v0, :cond_1

    .line 118
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->TEXT_MESSAGE:Lcom/google/android/marvin/talkback/NotificationType;

    .line 149
    :goto_0
    return-object v0

    .line 119
    :cond_1
    sget v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_SMS_FAILED:I

    if-ne p1, v0, :cond_2

    .line 120
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->TEXT_MESSAGE_FAILED:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 121
    :cond_2
    const v0, 0x108007f

    if-ne p1, v0, :cond_3

    .line 122
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->MISSED_CALL:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 123
    :cond_3
    const v0, 0x1080076

    if-ne p1, v0, :cond_4

    .line 124
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->MUTE:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 125
    :cond_4
    const v0, 0x1080077

    if-ne p1, v0, :cond_5

    .line 126
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->CHAT:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 127
    :cond_5
    const v0, 0x1080078

    if-ne p1, v0, :cond_6

    .line 128
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->ERROR:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 129
    :cond_6
    const v0, 0x1080079

    if-ne p1, v0, :cond_7

    .line 130
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->MORE:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 131
    :cond_7
    const v0, 0x108007a

    if-ne p1, v0, :cond_8

    .line 132
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SDCARD:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 133
    :cond_8
    const v0, 0x108007b

    if-ne p1, v0, :cond_9

    .line 134
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SDCARD_USB:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 135
    :cond_9
    const v0, 0x108007c

    if-ne p1, v0, :cond_a

    .line 136
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SYNC:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 137
    :cond_a
    const v0, 0x108007d

    if-ne p1, v0, :cond_b

    .line 138
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->SYNC_NOANIM:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 139
    :cond_b
    const v0, 0x108007e

    if-ne p1, v0, :cond_c

    .line 140
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->VOICEMAIL:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 141
    :cond_c
    sget v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_EMAIL:I

    if-ne p1, v0, :cond_d

    .line 142
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->EMAIL:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 143
    :cond_d
    sget v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_GMAIL:I

    if-ne p1, v0, :cond_e

    .line 144
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->EMAIL:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 145
    :cond_e
    sget v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_PLAY:I

    if-ne p1, v0, :cond_f

    .line 146
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->PLAY:Lcom/google/android/marvin/talkback/NotificationType;

    goto :goto_0

    .line 148
    :cond_f
    const-class v0, Lcom/google/android/marvin/talkback/NotificationType;

    const/4 v1, 0x5

    const-string v2, "Unknown notification %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "fieldName"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    invoke-static {}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->getInstance()Lcom/googlecode/eyesfree/utils/ClassLoadingManager;

    move-result-object v0

    .line 164
    .local v0, clm:Lcom/googlecode/eyesfree/utils/ClassLoadingManager;
    invoke-virtual {v0, p0, p2, p1}, Lcom/googlecode/eyesfree/utils/ClassLoadingManager;->loadOrGetCachedClass(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Class;

    move-result-object v1

    .line 166
    .local v1, drawable:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 167
    const-class v4, Lcom/google/android/marvin/talkback/NotificationType;

    .line 168
    const-string v5, "Can\'t find class drawable in package: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    .line 167
    invoke-static {v4, v9, v5, v6}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const/4 v3, -0x1

    .line 181
    :goto_0
    return v3

    .line 172
    :cond_0
    const/4 v3, -0x1

    .line 175
    .local v3, icon:I
    :try_start_0
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Ljava/lang/Exception;
    const-class v4, Lcom/google/android/marvin/talkback/NotificationType;

    .line 178
    const-string v5, "Failed to load drawable %s from package %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p3, v6, v7

    aput-object p1, v6, v8

    .line 177
    invoke-static {v4, v9, v5, v6}, Lcom/googlecode/eyesfree/utils/LogUtils;->log(Ljava/lang/Object;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static loadIcons(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    const-string v0, "com.android.mms"

    const-string v1, "com.android.mms.R$drawable"

    .line 87
    const-string v2, "stat_notify_sms"

    .line 86
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/NotificationType;->loadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    sput v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_SMS:I

    .line 89
    const-string v0, "com.android.mms"

    const-string v1, "com.android.mms.R$drawable"

    .line 90
    const-string v2, "stat_notify_sms_failed"

    .line 89
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/NotificationType;->loadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 88
    sput v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_SMS_FAILED:I

    .line 92
    const-string v0, "com.google.android.music"

    const-string v1, "com.android.music.R$drawable"

    .line 93
    const-string v2, "stat_notify_musicplayer"

    .line 92
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/NotificationType;->loadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 91
    sput v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_PLAY:I

    .line 95
    const-string v0, "com.google.android.gm"

    const-string v1, "com.google.android.gm.R$drawable"

    .line 96
    const-string v2, "stat_notify_email"

    .line 95
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/NotificationType;->loadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 94
    sput v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_GMAIL:I

    .line 98
    const-string v0, "com.google.android.email"

    const-string v1, "com.android.email.R$drawable"

    .line 99
    const-string v2, "stat_notify_email_generic"

    .line 98
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/marvin/talkback/NotificationType;->loadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 97
    sput v0, Lcom/google/android/marvin/talkback/NotificationType;->ICON_EMAIL:I

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/marvin/talkback/NotificationType;->sHasLoadedIcons:Z

    .line 102
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/marvin/talkback/NotificationType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/marvin/talkback/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/marvin/talkback/NotificationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/marvin/talkback/NotificationType;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/NotificationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/marvin/talkback/NotificationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/marvin/talkback/NotificationType;->mResId:I

    return v0
.end method
