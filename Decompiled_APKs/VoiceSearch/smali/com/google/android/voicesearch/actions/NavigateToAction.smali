.class public Lcom/google/android/voicesearch/actions/NavigateToAction;
.super Lcom/google/android/voicesearch/actions/AbstractMapsAction;
.source "NavigateToAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/NavigateToAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/voicesearch/actions/NavigateToAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/NavigateToAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/NavigateToAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "query"
    .parameter "showDisambig"

    .prologue
    .line 46
    const/4 v2, 0x2

    const-string v3, "navigate_to"

    const-string v4, "com.google.android.apps.maps/com.google.android.maps.driveabout.app.NavigationActivity"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/voicesearch/actions/AbstractMapsAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/AbstractMapsAction;-><init>(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/NavigateToAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/NavigateToAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f02001d

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/?daddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/NavigateToAction;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/voicesearch/actions/NavigateToAction;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&nav=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f02001e

    return v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f02001f

    return v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 3
    .parameter "context"
    .parameter "device"

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 92
    .local v0, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getNavigationEnabled()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/AbstractMapsAction;->isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v1

    goto :goto_0
.end method
