.class public final enum Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;
.super Ljava/lang/Enum;
.source "HtcConfirmCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

.field public static final enum CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

.field public static final enum UNCHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;


# instance fields
.field private mConfirmStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    const-string v1, "CHECKED"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    .line 32
    new-instance v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    const-string v1, "UNCHECKED"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->UNCHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    sget-object v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->CHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->UNCHECKED:Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->$VALUES:[Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "confirmStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-boolean p3, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->mConfirmStatus:Z

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->$VALUES:[Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    invoke-virtual {v0}, [Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;

    return-object v0
.end method


# virtual methods
.method public getConfirmStatus()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcConfirmCheckBoxPreference$ConfirmStatus;->mConfirmStatus:Z

    return v0
.end method
