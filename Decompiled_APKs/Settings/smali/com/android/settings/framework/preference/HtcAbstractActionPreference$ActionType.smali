.class public final enum Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
.super Ljava/lang/Enum;
.source "HtcAbstractActionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

.field public static final enum BROADCAST:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

.field public static final enum START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

.field public static final enum START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    const-string v1, "BROADCAST"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->BROADCAST:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    .line 52
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    const-string v1, "START_ACTIVITY"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    .line 53
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    const-string v1, "START_FRAGMENT"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->BROADCAST:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_FRAGMENT:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->$VALUES:[Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->$VALUES:[Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method
