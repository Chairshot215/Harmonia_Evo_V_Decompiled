.class public Lcom/google/android/voicesearch/actions/DisplayContactAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "DisplayContactAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/DisplayContactAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContactUri:Landroid/net/Uri;

.field private final mName:Ljava/lang/String;

.field private final mPhotoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/voicesearch/actions/DisplayContactAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/DisplayContactAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "name"
    .parameter "showDisambig"

    .prologue
    const/4 v5, 0x0

    .line 40
    const/16 v2, 0xb

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "display_contact"

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 42
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mContactUri:Landroid/net/Uri;

    .line 43
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mPhotoUri:Landroid/net/Uri;

    .line 44
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mContactUri:Landroid/net/Uri;

    .line 50
    iput-object v1, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mPhotoUri:Landroid/net/Uri;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/DisplayContactAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/DisplayContactAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f020007

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f020008

    return v0
.end method

.method public getListSubtitle()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f020009

    return v0
.end method

.method public getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mPhotoUri:Landroid/net/Uri;

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;->getQsbIconUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 6
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/DisplayContactAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/DisplayContactAction;->getCountdownIcon()I

    move-result v4

    const v5, 0x7f0a0721

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/TimeoutDialog;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 135
    return-void
.end method

.method public shouldWatchForQuickReturns()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mContactUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/DisplayContactAction;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
