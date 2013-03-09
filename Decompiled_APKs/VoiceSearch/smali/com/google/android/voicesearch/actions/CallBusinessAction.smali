.class public Lcom/google/android/voicesearch/actions/CallBusinessAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "CallBusinessAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/CallBusinessAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mFormattedNumber:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/voicesearch/actions/CallBusinessAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/CallBusinessAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "businessName"
    .parameter "businessAddress"
    .parameter "businessNumber"
    .parameter "showDisambig"

    .prologue
    .line 49
    const/16 v2, 0xc

    const-string v3, "android.intent.action.CALL"

    const-string v4, "call_business"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 51
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mAddress:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mNumber:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mFormattedNumber:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mAddress:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mNumber:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mFormattedNumber:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/CallBusinessAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/CallBusinessAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f02000a

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mNumber:Ljava/lang/String;

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
    .line 90
    const v0, 0x7f02000b

    return v0
.end method

.method public getListSubtitleHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mFormattedNumber:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mFormattedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/CallBusinessAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f02000c

    return v0
.end method

.method public getSoundId()I
    .locals 1

    .prologue
    .line 145
    const v0, 0x7f070001

    return v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "context"
    .parameter "device"

    .prologue
    .line 129
    invoke-virtual {p2}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->isTelephoneCapable()Z

    move-result v0

    return v0
.end method

.method public prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 6
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/CallBusinessAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/CallBusinessAction;->getCountdownIcon()I

    move-result v4

    const v5, 0x7f0a0720

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/TimeoutDialog;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 140
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mFormattedNumber:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/voicesearch/TimeoutDialog;->setBusinessInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallBusinessAction;->mFormattedNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
