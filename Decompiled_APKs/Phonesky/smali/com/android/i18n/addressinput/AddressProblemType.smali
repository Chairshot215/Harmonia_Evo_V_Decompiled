.class public final enum Lcom/android/i18n/addressinput/AddressProblemType;
.super Ljava/lang/Enum;
.source "AddressProblemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/addressinput/AddressProblemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/addressinput/AddressProblemType;

.field public static final enum MISMATCHING_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

.field public static final enum MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

.field public static final enum UNKNOWN_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

.field public static final enum UNRECOGNIZED_FORMAT:Lcom/android/i18n/addressinput/AddressProblemType;

.field public static final enum USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/android/i18n/addressinput/AddressProblemType;

    const-string v1, "USING_UNUSED_FIELD"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/addressinput/AddressProblemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    .line 36
    new-instance v0, Lcom/android/i18n/addressinput/AddressProblemType;

    const-string v1, "MISSING_REQUIRED_FIELD"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/addressinput/AddressProblemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    .line 45
    new-instance v0, Lcom/android/i18n/addressinput/AddressProblemType;

    const-string v1, "UNKNOWN_VALUE"

    invoke-direct {v0, v1, v4}, Lcom/android/i18n/addressinput/AddressProblemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressProblemType;->UNKNOWN_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    .line 54
    new-instance v0, Lcom/android/i18n/addressinput/AddressProblemType;

    const-string v1, "UNRECOGNIZED_FORMAT"

    invoke-direct {v0, v1, v5}, Lcom/android/i18n/addressinput/AddressProblemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressProblemType;->UNRECOGNIZED_FORMAT:Lcom/android/i18n/addressinput/AddressProblemType;

    .line 62
    new-instance v0, Lcom/android/i18n/addressinput/AddressProblemType;

    const-string v1, "MISMATCHING_VALUE"

    invoke-direct {v0, v1, v6}, Lcom/android/i18n/addressinput/AddressProblemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/addressinput/AddressProblemType;->MISMATCHING_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/i18n/addressinput/AddressProblemType;

    sget-object v1, Lcom/android/i18n/addressinput/AddressProblemType;->USING_UNUSED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/i18n/addressinput/AddressProblemType;->UNKNOWN_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/i18n/addressinput/AddressProblemType;->UNRECOGNIZED_FORMAT:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/i18n/addressinput/AddressProblemType;->MISMATCHING_VALUE:Lcom/android/i18n/addressinput/AddressProblemType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/i18n/addressinput/AddressProblemType;->$VALUES:[Lcom/android/i18n/addressinput/AddressProblemType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressProblemType;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/android/i18n/addressinput/AddressProblemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressProblemType;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/addressinput/AddressProblemType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/i18n/addressinput/AddressProblemType;->$VALUES:[Lcom/android/i18n/addressinput/AddressProblemType;

    invoke-virtual {v0}, [Lcom/android/i18n/addressinput/AddressProblemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/addressinput/AddressProblemType;

    return-object v0
.end method
