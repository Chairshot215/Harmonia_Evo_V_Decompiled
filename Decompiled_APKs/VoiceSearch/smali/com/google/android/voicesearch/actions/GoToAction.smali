.class public Lcom/google/android/voicesearch/actions/GoToAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "GoToAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/GoToAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayUrl:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/voicesearch/actions/GoToAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/GoToAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/GoToAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "displayUrl"
    .parameter "url"
    .parameter "showDisambig"

    .prologue
    .line 43
    const/16 v2, 0x11

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "go_to"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 45
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mDisplayUrl:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mDisplayUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mUrl:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f02002b

    return v0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f02002c

    return v0
.end method

.method public getListSubtitleHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mDisplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/GoToAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f02002d

    return v0
.end method

.method public prepareResultDialog(Landroid/content/Context;Lcom/google/android/voicesearch/TimeoutDialog;)V
    .locals 6
    .parameter "context"
    .parameter "dialog"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/actions/GoToAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mDisplayUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/GoToAction;->getCountdownIcon()I

    move-result v4

    const v5, 0x7f0a0721

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/voicesearch/TimeoutDialog;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 121
    return-void
.end method

.method public shouldPersistDisambig()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mDisplayUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/GoToAction;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
