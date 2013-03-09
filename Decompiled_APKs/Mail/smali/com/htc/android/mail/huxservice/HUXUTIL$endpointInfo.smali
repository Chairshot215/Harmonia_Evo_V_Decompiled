.class public Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;
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
    name = "endpointInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endpointId:I

.field public name:Ljava/lang/String;

.field public provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo$1;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "endpointId"
    .parameter "provider"
    .parameter "name"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    .line 118
    iput p1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    .line 119
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->name:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, attr:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v1, "endpointId"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    .line 127
    const-string v1, "provider"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    .line 128
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endpointInfo{endpointId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->name:Ljava/lang/String;

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
    .line 140
    iget v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->endpointId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
