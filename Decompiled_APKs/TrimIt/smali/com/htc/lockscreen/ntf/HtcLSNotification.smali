.class public Lcom/htc/lockscreen/ntf/HtcLSNotification;
.super Ljava/lang/Object;
.source "HtcLSNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/ntf/HtcLSNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContent:Ljava/lang/String;

.field private mDescript:Ljava/lang/String;

.field private mDropPendingIntent:Landroid/app/PendingIntent;

.field private mFrom:Ljava/lang/String;

.field private mIcon:I

.field private mLocation:Ljava/lang/String;

.field private mPriority:I

.field private mTitle:Ljava/lang/String;

.field private mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 30
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "when"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 18
    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 33
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "parcel"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v3, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 18
    iput v3, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 21
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 22
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 24
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    .line 51
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 52
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 56
    :goto_1
    if-eqz v0, :cond_1

    .line 57
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 65
    :cond_1
    return-void

    .end local v0           #exist:Z
    :cond_2
    move v0, v3

    .line 50
    goto :goto_0

    .restart local v0       #exist:Z
    :cond_3
    move v0, v3

    .line 55
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getDropPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 1
    .parameter "descript"

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDropPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 209
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 178
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 179
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    .line 201
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 166
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 190
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 191
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWhen(J)V
    .locals 0
    .parameter "when"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    :goto_1
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
