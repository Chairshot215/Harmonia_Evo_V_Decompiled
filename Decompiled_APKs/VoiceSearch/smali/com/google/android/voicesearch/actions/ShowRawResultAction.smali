.class public Lcom/google/android/voicesearch/actions/ShowRawResultAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "ShowRawResultAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/ShowRawResultAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfidence:F

.field private final mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/voicesearch/actions/ShowRawResultAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/ShowRawResultAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZF)V
    .locals 8
    .parameter "context"
    .parameter "query"
    .parameter "showDisambig"
    .parameter "confidence"

    .prologue
    const/4 v5, 0x0

    .line 43
    const/4 v2, -0x2

    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    const-string v4, "browser"

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 46
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mConfidence:F

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mConfidence:F

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/ShowRawResultAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/ShowRawResultAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getConfidence()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mConfidence:F

    return v0
.end method

.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f020001

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f020001

    return v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f020001

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "context"
    .parameter "device"

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAddShortcut()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/google/android/voicesearch/actions/ShowRawResultAction;->mConfidence:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 102
    return-void
.end method
