.class public Lcom/google/android/voicesearch/actions/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/Contact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mType:I

.field private final mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/voicesearch/actions/Contact$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/Contact$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mTypeString:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mType:I

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "address"
    .parameter "typeString"
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/Contact;->mTypeString:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/google/android/voicesearch/actions/Contact;->mType:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mType:I

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toAddressString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :cond_0
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, result:Ljava/lang/String;
    :goto_0
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 73
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 74
    :cond_2
    const-string v1, "%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 76
    .end local v0           #result:Ljava/lang/String;
    :cond_3
    const-string v1, "%s <%s>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mTypeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/google/android/voicesearch/actions/Contact;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
