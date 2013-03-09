.class public final enum Lcom/android/internal/telephony/Call$CallType;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Call$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Call$CallType;

.field public static final enum NONE:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum VIDEOTELEPHONY:Lcom/android/internal/telephony/Call$CallType;

.field public static final enum VOICE:Lcom/android/internal/telephony/Call$CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->NONE:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->VOICE:Lcom/android/internal/telephony/Call$CallType;

    new-instance v0, Lcom/android/internal/telephony/Call$CallType;

    const-string v1, "VIDEOTELEPHONY"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Call$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->VIDEOTELEPHONY:Lcom/android/internal/telephony/Call$CallType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/Call$CallType;

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->NONE:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->VOICE:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Call$CallType;->VIDEOTELEPHONY:Lcom/android/internal/telephony/Call$CallType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/Call$CallType;->$VALUES:[Lcom/android/internal/telephony/Call$CallType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$CallType;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/Call$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call$CallType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Call$CallType;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->$VALUES:[Lcom/android/internal/telephony/Call$CallType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Call$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Call$CallType;

    return-object v0
.end method


# virtual methods
.method public isVideoTelephony()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->VIDEOTELEPHONY:Lcom/android/internal/telephony/Call$CallType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoice()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/Call$CallType;->VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
