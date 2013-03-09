.class final enum Lcom/android/phone/CallCard$CallCardMode;
.super Ljava/lang/Enum;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CallCardMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CallCard$CallCardMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CallCard$CallCardMode;

.field public static final enum CALL_ENDED:Lcom/android/phone/CallCard$CallCardMode;

.field public static final enum MULTIPLE:Lcom/android/phone/CallCard$CallCardMode;

.field public static final enum RINGING:Lcom/android/phone/CallCard$CallCardMode;

.field public static final enum SINGLE_CONFERENCE:Lcom/android/phone/CallCard$CallCardMode;

.field public static final enum SINGLE_CONNECTED:Lcom/android/phone/CallCard$CallCardMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 235
    new-instance v0, Lcom/android/phone/CallCard$CallCardMode;

    const-string v1, "RINGING"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardMode;->RINGING:Lcom/android/phone/CallCard$CallCardMode;

    .line 239
    new-instance v0, Lcom/android/phone/CallCard$CallCardMode;

    const-string v1, "SINGLE_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallCard$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONNECTED:Lcom/android/phone/CallCard$CallCardMode;

    .line 244
    new-instance v0, Lcom/android/phone/CallCard$CallCardMode;

    const-string v1, "SINGLE_CONFERENCE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/CallCard$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONFERENCE:Lcom/android/phone/CallCard$CallCardMode;

    .line 249
    new-instance v0, Lcom/android/phone/CallCard$CallCardMode;

    const-string v1, "MULTIPLE"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/CallCard$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardMode;->MULTIPLE:Lcom/android/phone/CallCard$CallCardMode;

    .line 253
    new-instance v0, Lcom/android/phone/CallCard$CallCardMode;

    const-string v1, "CALL_ENDED"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/CallCard$CallCardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$CallCardMode;->CALL_ENDED:Lcom/android/phone/CallCard$CallCardMode;

    .line 231
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/CallCard$CallCardMode;

    sget-object v1, Lcom/android/phone/CallCard$CallCardMode;->RINGING:Lcom/android/phone/CallCard$CallCardMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONNECTED:Lcom/android/phone/CallCard$CallCardMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/CallCard$CallCardMode;->SINGLE_CONFERENCE:Lcom/android/phone/CallCard$CallCardMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/CallCard$CallCardMode;->MULTIPLE:Lcom/android/phone/CallCard$CallCardMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/CallCard$CallCardMode;->CALL_ENDED:Lcom/android/phone/CallCard$CallCardMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/CallCard$CallCardMode;->$VALUES:[Lcom/android/phone/CallCard$CallCardMode;

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
    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CallCard$CallCardMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 231
    const-class v0, Lcom/android/phone/CallCard$CallCardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard$CallCardMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CallCard$CallCardMode;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/android/phone/CallCard$CallCardMode;->$VALUES:[Lcom/android/phone/CallCard$CallCardMode;

    invoke-virtual {v0}, [Lcom/android/phone/CallCard$CallCardMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CallCard$CallCardMode;

    return-object v0
.end method
