.class public Lcom/htc/clientprofileservice/SncdataEntry;
.super Ljava/lang/Object;
.source "SncdataEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/clientprofileservice/SncdataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field icon:Ljava/lang/String;

.field iconFormat:Ljava/lang/String;

.field iconSize:I

.field id:I

.field name:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/htc/clientprofileservice/SncdataEntry$1;

    invoke-direct {v0}, Lcom/htc/clientprofileservice/SncdataEntry$1;-><init>()V

    sput-object v0, Lcom/htc/clientprofileservice/SncdataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 10
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 13
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "url"
    .parameter "size"
    .parameter "format"
    .parameter "icon"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 10
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 13
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 36
    iput p1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 37
    iput-object p2, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 40
    iput-object p5, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 10
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 13
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Lcom/htc/clientprofileservice/SncdataEntry;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/htc/clientprofileservice/SncdataEntry;)V
    .locals 2
    .parameter "other"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 10
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 13
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 22
    iget v0, p1, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    iput v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 23
    iget-object v0, p1, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 25
    iget v0, p1, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    iput v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 26
    iget-object v0, p1, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()[B
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getIconEncoded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "encoded"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setIconFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setIconSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    .line 54
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    const-string v0, "SNC"

    .line 100
    .local v0, string:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icon_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icon_format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<binary>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 146
    iget v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->iconFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/htc/clientprofileservice/SncdataEntry;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
