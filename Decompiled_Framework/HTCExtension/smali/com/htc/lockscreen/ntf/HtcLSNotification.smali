.class public Lcom/htc/lockscreen/ntf/HtcLSNotification;
.super Ljava/lang/Object;
.source "HtcLSNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    }
.end annotation


# static fields
.field public static final BUTTON_SIZE:I = 0x2

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

.field private mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

.field private mContent:Ljava/lang/String;

.field private mDescript:Ljava/lang/String;

.field private mDropPendingIntent:Landroid/app/PendingIntent;

.field private mFrom:Ljava/lang/String;

.field private mIcon:I

.field private mLargeIconPackage:Ljava/lang/String;

.field private mLargeIconRes:I

.field private mLocation:Ljava/lang/String;

.field private mPriority:I

.field private mRingPendingIntent:Landroid/app/PendingIntent;

.field private mSubTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_0

    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v0, v3

    :goto_2
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    sget-object v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object v2, v5, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 1

    invoke-static {p0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-gtz p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getButton(I)Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getDropPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLargeIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    invoke-static {p1, v1, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v0
.end method

.method public getLargeIconPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIconResId()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    return v0
.end method

.method public getRingPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    return-wide v0
.end method

.method public setButton(Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object p1, v0, p2

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDropPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setLargeIcon(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    iput p2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    goto :goto_0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    return-void
.end method

.method public setRingPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWhen(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIconRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    return-void
.end method
