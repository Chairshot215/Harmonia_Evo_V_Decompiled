.class public Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
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
    name = "userEndpointInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field defaultAccount:Ljava/lang/Boolean;

.field endpointId:I

.field provider:Ljava/lang/String;

.field userEndpointId:I

.field userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo$1;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    .line 198
    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    .line 199
    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->defaultAccount:Ljava/lang/Boolean;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    .line 227
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->defaultAccount:Ljava/lang/Boolean;

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .parameter "root"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    .line 198
    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    .line 199
    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    .line 200
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->defaultAccount:Ljava/lang/Boolean;

    .line 204
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, attr:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string v1, "userName"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    .line 206
    const-string v1, "provider"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    .line 207
    const-string v1, "endpointId"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    .line 208
    const-string v1, "userEndpointId"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_i(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 2
    .parameter "aUserName"
    .parameter "aProvider"
    .parameter "aEndpointId"
    .parameter "aUserEndpointId"
    .parameter "aDefaultAccount"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 211
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    .line 198
    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    .line 199
    iput v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->defaultAccount:Ljava/lang/Boolean;

    .line 213
    iput p3, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    .line 214
    iput p4, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    .line 215
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    .line 217
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->defaultAccount:Ljava/lang/Boolean;

    .line 219
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userEndpointInfo{userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endpointId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",userEndpointId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 233
    iget v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->endpointId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userEndpointId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->defaultAccount:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 238
    return-void
.end method
