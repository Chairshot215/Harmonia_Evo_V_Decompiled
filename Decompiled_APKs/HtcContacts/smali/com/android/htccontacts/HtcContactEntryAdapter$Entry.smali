.class public Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;
.super Ljava/lang/Object;
.source "HtcContactEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final KIND_CONTACT:I = -0x1

.field public static final KIND_SEPARATOR:I = -0x3

.field public static final KIND_SMS:I = -0x2


# instance fields
.field public data:Ljava/lang/String;

.field public id:J

.field public kind:I

.field public label:Ljava/lang/String;

.field public maxLines:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->id:J

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->maxLines:I

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->label:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->data:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->id:J

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->maxLines:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->kind:I

    .line 157
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    iget-wide v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->maxLines:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/android/htccontacts/HtcContactEntryAdapter$Entry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void
.end method
