.class final enum Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;
.super Ljava/lang/Enum;
.source "HtcMCCallCardItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcMCCallCardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MCItemConferenceAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

.field public static final enum FINISH:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

.field public static final enum SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

.field public static final enum VIEW:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    const-string v1, "SEPARATE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->VIEW:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    const-string v1, "FINISH"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->FINISH:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->VIEW:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->FINISH:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->$VALUES:[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 103
    const-class v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->$VALUES:[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    invoke-virtual {v0}, [Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    return-object v0
.end method
