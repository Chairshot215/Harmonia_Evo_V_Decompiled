.class public Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;
.super Ljava/lang/Object;
.source "HUXUTIL.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TermsInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field term_id:I

.field terms:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo$1;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->term_id:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->terms:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->term_id:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->terms:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->term_id:I

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->terms:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, attr:Ljava/lang/Object;
    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->term_id:I

    .line 85
    :cond_0
    const-string v1, "text"

    invoke-static {p1, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->terms:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TermsInfo{term_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->term_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",terms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->terms:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

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
    .line 96
    iget v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->term_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;->terms:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return-void
.end method
