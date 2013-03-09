.class public Lcom/htc/dlnainterface/DLNARendererData;
.super Ljava/lang/Object;
.source "DLNARendererData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNARendererData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public rendererID:Ljava/lang/String;

.field public rendererName:Ljava/lang/String;

.field public thumbIconType:I

.field public thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/htc/dlnainterface/DLNARendererData$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNARendererData$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNARendererData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    .line 50
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    .line 57
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNARendererData;->readFromParcel(Landroid/os/Parcel;)V

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRenderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRendererData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "iconType"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget v1, p0, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
