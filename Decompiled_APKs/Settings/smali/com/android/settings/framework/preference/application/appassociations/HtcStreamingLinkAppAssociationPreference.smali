.class public Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;
.super Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;
.source "HtcStreamingLinkAppAssociationPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/application/appassociations/HtcAbstractAppAssociationsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryStreamingLinkActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0735

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0734

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0734

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceActivityPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getStreamingLinkPreferredActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setPreferredActivity(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/application/appassociations/HtcStreamingLinkAppAssociationPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 72
    return-void
.end method
