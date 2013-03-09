.class public Lcom/google/android/voicesearch/actions/CallContactAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "CallContactAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/CallContactAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mNumber:Ljava/lang/String;

.field private final mNumberTypeLabel:Ljava/lang/String;

.field private final mPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/voicesearch/actions/CallContactAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/CallContactAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/CallContactAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "numberType"
    .parameter "number"
    .parameter "photoUri"
    .parameter "showDisambig"

    .prologue
    const/4 v2, 0x1

    .line 50
    const-string v3, "android.intent.action.CALL"

    const-string v4, "call_contact"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 52
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mName:Ljava/lang/String;

    .line 53
    invoke-static {p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumberTypeLabel:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumber:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mPhotoUri:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumberTypeLabel:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumber:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, photoUri:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mPhotoUri:Landroid/net/Uri;

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mPhotoUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/CallContactAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/CallContactAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f02000a

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 130
    const-string v0, "tel"

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f02000b

    return v0
.end method

.method public getListSubtitleHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/CallContactAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumberTypeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f02000c

    return v0
.end method

.method public getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mPhotoUri:Landroid/net/Uri;

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoundId()I
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f070001

    return v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "context"
    .parameter "device"

    .prologue
    .line 135
    invoke-virtual {p2}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->isTelephoneCapable()Z

    move-result v0

    return v0
.end method

.method public prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 6
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/CallContactAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumberTypeLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/CallContactAction;->getCountdownIcon()I

    move-result v4

    const v5, 0x7f0a0720

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/TimeoutDialog;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumberTypeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumberTypeLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/CallContactAction;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
