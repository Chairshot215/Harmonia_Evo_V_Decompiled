.class public final enum Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
.super Ljava/lang/Enum;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum CALL_BUSINESS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum CALL_NUMBER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum DIRECTIONS_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum DISPLAY_CONTACT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum DROID_DOES:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum GO_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum INTENT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum LISTEN_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum MAP_OF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum NAVIGATE_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum ONEBOX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum SET_ALARM:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum STATUS_UPDATE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field public static final enum WEB_SEARCH:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
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

    .line 336
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "CALL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 337
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "NAVIGATE_TO"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NAVIGATE_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 338
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "DIRECTIONS_TO"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DIRECTIONS_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 339
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "MAP_OF"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->MAP_OF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 340
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "STATUS_UPDATE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->STATUS_UPDATE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 341
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "DROID_DOES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DROID_DOES:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 342
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "WEB_SEARCH"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->WEB_SEARCH:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 343
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "INTENT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->INTENT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 344
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "CALL_NUMBER"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_NUMBER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 345
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "DISPLAY_CONTACT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DISPLAY_CONTACT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 346
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "CALL_BUSINESS"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_BUSINESS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 347
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "ONEBOX"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ONEBOX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 348
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "GO_TO"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->GO_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 349
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "LISTEN_TO"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->LISTEN_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 350
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "NOTE_TO_SELF"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 351
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "SEND_EMAIL"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 352
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "SEND_SMS"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 353
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const-string v1, "SET_ALARM"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SET_ALARM:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 334
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NAVIGATE_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DIRECTIONS_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->MAP_OF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->STATUS_UPDATE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DROID_DOES:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->WEB_SEARCH:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->INTENT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_NUMBER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DISPLAY_CONTACT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_BUSINESS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ONEBOX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->GO_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->LISTEN_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SET_ALARM:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    .line 407
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 417
    iput p4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->value:I

    .line 418
    return-void
.end method

.method public static valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1
    .parameter "value"

    .prologue
    .line 379
    packed-switch p0, :pswitch_data_0

    .line 398
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 380
    :pswitch_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 381
    :pswitch_1
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NAVIGATE_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 382
    :pswitch_2
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DIRECTIONS_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 383
    :pswitch_3
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->MAP_OF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 384
    :pswitch_4
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->STATUS_UPDATE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 385
    :pswitch_5
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DROID_DOES:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 386
    :pswitch_6
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->WEB_SEARCH:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 387
    :pswitch_7
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->INTENT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 388
    :pswitch_8
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_NUMBER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 389
    :pswitch_9
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DISPLAY_CONTACT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 390
    :pswitch_a
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->CALL_BUSINESS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 391
    :pswitch_b
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ONEBOX:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 392
    :pswitch_c
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->GO_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 393
    :pswitch_d
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->LISTEN_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 394
    :pswitch_e
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->NOTE_TO_SELF:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 395
    :pswitch_f
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 396
    :pswitch_10
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 397
    :pswitch_11
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SET_ALARM:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_e
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1
    .parameter

    .prologue
    .line 334
    const-class v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->$VALUES:[Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0}, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->value:I

    return v0
.end method
