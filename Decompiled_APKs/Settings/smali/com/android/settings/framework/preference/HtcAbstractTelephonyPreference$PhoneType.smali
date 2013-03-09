.class public final enum Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;
.super Ljava/lang/Enum;
.source "HtcAbstractTelephonyPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

.field public static final enum CDMA:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

.field public static final enum GSM:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

.field public static final enum NONE:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

.field public static final enum SIP:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->GSM:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    .line 41
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->CDMA:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    .line 42
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    const-string v1, "SIP"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->SIP:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    .line 43
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->NONE:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->GSM:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->CDMA:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->SIP:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->NONE:Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->$VALUES:[Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->$VALUES:[Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference$PhoneType;

    return-object v0
.end method
