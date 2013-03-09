.class public Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;
.super Ljava/lang/Object;
.source "HtcContactDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final EXISTED:I = 0x1

.field public static final KIND_COMPANY:I = 0x14

.field public static final KIND_COMPOSITE_SEND_MSG:I = 0x1b

.field public static final KIND_CONTACT:I = 0x2

.field public static final KIND_CUSTOM:I = 0x1d

.field public static final KIND_EDIT:I = 0x18

.field public static final KIND_EDIT_CONTACT:I = 0x10

.field public static final KIND_EVENT:I = 0x6

.field public static final KIND_FACEBOOK:I = 0xe

.field public static final KIND_FIND_ADDRESS:I = 0x7

.field public static final KIND_FLICKR:I = 0xf

.field public static final KIND_GROUP:I = 0x12

.field public static final KIND_IM:I = 0xa

.field public static final KIND_IM_ENABLE:I = 0x25

.field public static final KIND_LOCAL_PIC:I = 0xc

.field public static final KIND_LOCAL_VIDEO:I = 0xd

.field public static final KIND_MISS_CALL:I = 0x3

.field public static final KIND_MYCOMMUNITY_TAGLINE:I = 0x1c

.field public static final KIND_MY_INFO:I = 0x63

.field public static final KIND_MY_INFO_EDIT:I = 0x5c

.field public static final KIND_MY_INFO_EDIT_ACTION:I = 0x5e

.field public static final KIND_MY_INFO_HINT:I = 0x5a

.field public static final KIND_MY_INFO_IMPORT:I = 0x5b

.field public static final KIND_MY_INFO_SHARE_ACTION:I = 0x5d

.field public static final KIND_NICKNAME:I = 0x1a

.field public static final KIND_NOTES:I = 0x13

.field public static final KIND_ORGANIZATION:I = 0x16

.field public static final KIND_PICASA:I = 0xb

.field public static final KIND_RINGTONE:I = 0x11

.field public static final KIND_SEND_MAIL:I = 0x5

.field public static final KIND_SEND_MSG:I = 0x4

.field public static final KIND_SEND_TO_VOICEMAIL:I = 0x15

.field public static final KIND_SET_WIDGET:I = 0x28

.field public static final KIND_SIP_ADDRESS:I = 0x26

.field public static final KIND_SKYPE_CALL:I = 0x23

.field public static final KIND_SKYPE_MESSAGE:I = 0x24

.field public static final KIND_SKYPE_SKYPEOUT:I = 0x21

.field public static final KIND_SKYPE_VIDEO_CALL:I = 0x22

.field public static final KIND_TMO_IM_CHAT:I = 0x20

.field public static final KIND_TMO_VIDEO_CALL:I = 0x1f

.field public static final KIND_VIEW_FACEBOOK_PROFILE:I = 0x19

.field public static final KIND_VIP:I = 0x1e

.field public static final KIND_WEBSITE:I = 0x17

.field public static final KIND_YOUTUBE:I = 0x8

.field public static final NON_EXISTED:I = -0x1


# instance fields
.field public action:Landroid/view/View$OnClickListener;

.field public customDrawable:Landroid/graphics/drawable/Drawable;

.field public data:Ljava/lang/Object;

.field public defaultMsgNumberOfPhoneType:Z

.field public enabled:Z

.field public fromFacebook:Z

.field public fromMyPhonebook:Z

.field public groupTypeIcon:[B

.field public id:J

.field public indicatorId:I

.field public isMyCommunityProfileFirstView:Z

.field public isPrimary:Z

.field public kind:I

.field public leftIconId:I

.field public leftIndicatorText:Ljava/lang/String;

.field public mimetype:Ljava/lang/String;

.field public rightIconId:I

.field public sncIcon:[B

.field public socialnetworkType:J

.field public text1:Ljava/lang/String;

.field public text2:Ljava/lang/String;

.field public text3:Ljava/lang/String;

.field public text4:Ljava/lang/String;

.field public type:I

.field public typeOfPhoneType:I

.field public uid:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uid:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    .line 109
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIndicatorText:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 113
    iput v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 114
    iput v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 115
    iput v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->indicatorId:I

    .line 116
    iput v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 119
    iput v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    .line 120
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    .line 136
    iput v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    .line 137
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->defaultMsgNumberOfPhoneType:Z

    .line 138
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    .line 139
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromMyPhonebook:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isMyCommunityProfileFirstView:Z

    .line 141
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->groupTypeIcon:[B

    .line 142
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->sncIcon:[B

    .line 144
    iput-object v2, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->action:Landroid/view/View$OnClickListener;

    .line 146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    return-void
.end method


# virtual methods
.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIndicatorText:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->indicatorId:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    .line 208
    return-void

    :cond_1
    move v0, v2

    .line 205
    goto :goto_0

    :cond_2
    move v1, v2

    .line 207
    goto :goto_1
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIndicatorText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    :goto_0
    iget-wide v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 178
    iget v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->indicatorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return-void

    .line 162
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 182
    goto :goto_1

    :cond_2
    move v1, v2

    .line 184
    goto :goto_2
.end method
