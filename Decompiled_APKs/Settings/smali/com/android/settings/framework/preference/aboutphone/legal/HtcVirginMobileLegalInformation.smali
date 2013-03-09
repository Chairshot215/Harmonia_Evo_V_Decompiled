.class public Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;
.super Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.source "HtcVirginMobileLegalInformation.java"


# static fields
.field public static final KEY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcLegalInformation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;->TAG:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/framework/activity/aboutphone/legal/HtcVirginMobileLegalActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v1
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcVirginMobileLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c04a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, legalTitle:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/HtcProjectFlags$Info;->getProjectName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method
