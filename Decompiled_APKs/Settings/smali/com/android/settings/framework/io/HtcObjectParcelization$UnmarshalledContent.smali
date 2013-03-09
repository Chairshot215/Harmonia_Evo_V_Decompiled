.class public Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;
.super Ljava/lang/Object;
.source "HtcObjectParcelization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/io/HtcObjectParcelization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnmarshalledContent"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x544c54392f8365b0L


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mParcel:Landroid/os/Parcel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mParcel:Landroid/os/Parcel;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mException:Ljava/lang/Exception;

    return-object p1
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getParcel()Landroid/os/Parcel;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeserializeContent [mParcel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mException="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/io/HtcObjectParcelization$UnmarshalledContent;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
