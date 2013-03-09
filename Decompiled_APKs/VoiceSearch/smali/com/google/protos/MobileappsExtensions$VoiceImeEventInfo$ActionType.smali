.class public final enum Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
.super Ljava/lang/Enum;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum ACTION_BUTTON_PRESSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum CANCEL_DURING_ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum CANCEL_DURING_LISTENING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum CANCEL_DURING_WORKING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum DIALOG_CANCEL:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum DIALOG_DISMISSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum DIALOG_OK:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum IME_TEXT_ACCEPTED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum INPUT_ENDED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum N_BEST_CHOOSE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum PUNCTUATION_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum START_INPUT_BUTTON:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum START_INPUT_MOTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum START_INPUT_SWIPE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum SWIPE_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum TEXT_MODIFIED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum VOICE_INPUT_DELIVERED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum VOICE_INPUT_SETTING_DISABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field public static final enum VOICE_INPUT_SETTING_ENABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 11610
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "DIALOG_SHOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11611
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "DIALOG_OK"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_OK:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11612
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "DIALOG_CANCEL"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_CANCEL:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11613
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "DIALOG_DISMISSED"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_DISMISSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11614
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "SWIPE_HINT_DISPLAYED"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->SWIPE_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11615
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "PUNCTUATION_HINT_DISPLAYED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->PUNCTUATION_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11616
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "CANCEL_DURING_LISTENING"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_LISTENING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11617
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "CANCEL_DURING_WORKING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_WORKING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11618
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "CANCEL_DURING_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11619
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11620
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "START_INPUT_SWIPE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_SWIPE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11621
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "START_INPUT_BUTTON"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_BUTTON:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11622
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "VOICE_INPUT_DELIVERED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_DELIVERED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11623
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "TEXT_MODIFIED"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->TEXT_MODIFIED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11624
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "INPUT_ENDED"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->INPUT_ENDED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11625
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "ACTION_BUTTON_PRESSED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->ACTION_BUTTON_PRESSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11626
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "N_BEST_CHOOSE"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->N_BEST_CHOOSE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11627
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "VOICE_INPUT_SETTING_ENABLED"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_ENABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11628
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "VOICE_INPUT_SETTING_DISABLED"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_DISABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11629
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "IME_TEXT_ACCEPTED"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->IME_TEXT_ACCEPTED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11630
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const-string v1, "START_INPUT_MOTION"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_MOTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11608
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_OK:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_CANCEL:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_DISMISSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->SWIPE_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->PUNCTUATION_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_LISTENING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_WORKING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_SWIPE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_BUTTON:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_DELIVERED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->TEXT_MODIFIED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->INPUT_ENDED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->ACTION_BUTTON_PRESSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->N_BEST_CHOOSE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_ENABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_DISABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->IME_TEXT_ACCEPTED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_MOTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 11690
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 11699
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11700
    iput p4, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->value:I

    .line 11701
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .locals 1
    .parameter "value"

    .prologue
    .line 11659
    packed-switch p0, :pswitch_data_0

    .line 11681
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11660
    :pswitch_0
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11661
    :pswitch_1
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_OK:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11662
    :pswitch_2
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_CANCEL:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11663
    :pswitch_3
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_DISMISSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11664
    :pswitch_4
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->SWIPE_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11665
    :pswitch_5
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->PUNCTUATION_HINT_DISPLAYED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11666
    :pswitch_6
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_LISTENING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11667
    :pswitch_7
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_WORKING:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11668
    :pswitch_8
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->CANCEL_DURING_ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11669
    :pswitch_9
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->ERROR:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11670
    :pswitch_a
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_SWIPE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11671
    :pswitch_b
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_BUTTON:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11672
    :pswitch_c
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_DELIVERED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11673
    :pswitch_d
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->TEXT_MODIFIED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11674
    :pswitch_e
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->INPUT_ENDED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11675
    :pswitch_f
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->ACTION_BUTTON_PRESSED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11676
    :pswitch_10
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->N_BEST_CHOOSE:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11677
    :pswitch_11
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_ENABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11678
    :pswitch_12
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->VOICE_INPUT_SETTING_DISABLED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11679
    :pswitch_13
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->IME_TEXT_ACCEPTED:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11680
    :pswitch_14
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->START_INPUT_MOTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    goto :goto_0

    .line 11659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .locals 1
    .parameter

    .prologue
    .line 11608
    const-class v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .locals 1

    .prologue
    .line 11608
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->$VALUES:[Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0}, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 11656
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->value:I

    return v0
.end method
