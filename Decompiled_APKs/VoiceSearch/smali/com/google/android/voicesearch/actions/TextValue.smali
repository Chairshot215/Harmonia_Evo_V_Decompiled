.class public Lcom/google/android/voicesearch/actions/TextValue;
.super Lcom/google/android/voicesearch/actions/SlotValue;
.source "TextValue.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/TextValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/voicesearch/actions/TextValue$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/TextValue$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/TextValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 40
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/CharSequence;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/voicesearch/actions/SlotValue;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/CharSequence;

    .line 33
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 54
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/TextValue;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 50
    return-void
.end method
