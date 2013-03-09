.class final enum Lcom/android/phone/InCallScreen$InCallScreenMode;
.super Ljava/lang/Enum;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InCallScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen$InCallScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum ALERTING:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum DIALING:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum DISCONNECTED:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum IDLE:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public static final enum WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->IDLE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->DISCONNECTED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 397
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 401
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->DIALING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "ALERTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->ALERTING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 405
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "SINGLE_ALIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 409
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "CONFERENCE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 414
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "MULTIPLE_ALIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 420
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "NORMAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 429
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "OTA_NORMAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 433
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "OTA_ENDED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 437
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "UNDEFINED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 443
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    const-string v1, "CALL_ENDED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 389
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->IDLE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->DISCONNECTED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->DIALING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->ALERTING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->$VALUES:[Lcom/android/phone/InCallScreen$InCallScreenMode;

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
    .line 389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 389
    const-class v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->$VALUES:[Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen$InCallScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object v0
.end method


# virtual methods
.method isAlive()Z
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->IDLE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->DISCONNECTED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConference()Z
    .locals 1

    .prologue
    .line 484
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialing()Z
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->DIALING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->ALERTING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMultiple()Z
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MULTIPLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->INCOMING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->WAITING:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleAlive()Z
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->SINGLE_ALIVE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
