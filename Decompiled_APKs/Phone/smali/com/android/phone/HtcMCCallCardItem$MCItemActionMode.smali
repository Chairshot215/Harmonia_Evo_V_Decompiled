.class final enum Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;
.super Ljava/lang/Enum;
.source "HtcMCCallCardItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcMCCallCardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MCItemActionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

.field public static final enum ADD_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

.field public static final enum CONFERENCE_OPTION_CAN_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

.field public static final enum CONFERENCE_OPTION_NON_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

.field public static final enum NONE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

.field public static final enum VIEW_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    const-string v1, "VIEW_CONTACT"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->VIEW_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    .line 88
    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    const-string v1, "ADD_CONTACT"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->ADD_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    .line 92
    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    const-string v1, "CONFERENCE_OPTION_CAN_SEPARATE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->CONFERENCE_OPTION_CAN_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    .line 96
    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    const-string v1, "CONFERENCE_OPTION_NON_SEPARATE"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->CONFERENCE_OPTION_NON_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    .line 100
    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->NONE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->VIEW_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->ADD_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->CONFERENCE_OPTION_CAN_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->CONFERENCE_OPTION_NON_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->NONE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->$VALUES:[Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 80
    const-class v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->$VALUES:[Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    invoke-virtual {v0}, [Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    return-object v0
.end method
