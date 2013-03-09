.class public Lcom/htc/opensense/social/data/Feed;
.super Lcom/htc/opensense/social/data/Extra;
.source "Feed.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/htc/opensense/social/data/AttachableData;


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "Activity"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/data/Feed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canComment:Z

.field public canLike:Z

.field public commentCount:I

.field public create_time:J

.field public description:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/htc/opensense/social/data/Entry$PrimaryKey;
    .end annotation
.end field

.field public isHidden:Z

.field public lastupdate_time:J

.field public likeCount:I

.field public owner:Lcom/htc/opensense/social/data/Profile;

.field public privacy:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public target:Lcom/htc/opensense/social/data/Profile;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public userComment:Z

.field public userLikes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/htc/opensense/social/data/Feed$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/data/Feed$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/data/Feed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 141
    invoke-direct {p0}, Lcom/htc/opensense/social/data/Extra;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 144
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->type:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->title:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->description:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->privacy:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->sourceUrl:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->iconUrl:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 155
    new-instance v0, Lcom/htc/opensense/social/data/Profile;

    invoke-direct {v0, p1}, Lcom/htc/opensense/social/data/Profile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    :goto_4
    iput-boolean v1, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/social/data/Feed;->setExtra(Landroid/os/Bundle;)V

    .line 165
    return-void

    :cond_2
    move v0, v2

    .line 157
    goto :goto_0

    :cond_3
    move v0, v2

    .line 158
    goto :goto_1

    :cond_4
    move v0, v2

    .line 160
    goto :goto_2

    :cond_5
    move v0, v2

    .line 161
    goto :goto_3

    :cond_6
    move v1, v2

    .line 163
    goto :goto_4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getIndicator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->owner:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->lastupdate_time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-wide v3, p0, Lcom/htc/opensense/social/data/Feed;->create_time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->privacy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->sourceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->target:Lcom/htc/opensense/social/data/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/data/Profile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 193
    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userComment:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canComment:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/htc/opensense/social/data/Feed;->commentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->userLikes:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->canLike:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/htc/opensense/social/data/Feed;->likeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-boolean v0, p0, Lcom/htc/opensense/social/data/Feed;->isHidden:Z

    if-eqz v0, :cond_8

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/htc/opensense/social/data/Feed;->extra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 201
    return-void

    :cond_2
    move v0, v2

    .line 177
    goto :goto_0

    :cond_3
    move v0, v2

    .line 189
    goto :goto_1

    :cond_4
    move v0, v2

    .line 193
    goto :goto_2

    :cond_5
    move v0, v2

    .line 194
    goto :goto_3

    :cond_6
    move v0, v2

    .line 196
    goto :goto_4

    :cond_7
    move v0, v2

    .line 197
    goto :goto_5

    :cond_8
    move v1, v2

    .line 199
    goto :goto_6
.end method
