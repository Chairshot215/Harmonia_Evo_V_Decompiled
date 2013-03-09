.class public Lcom/htc/lockscreen/HtcLSViewGroup;
.super Ljava/lang/Object;
.source "HtcLSViewGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/HtcLSViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field public static final HTC_LS_PART_BOTTOM:Ljava/lang/String; = "bottom"

.field public static final HTC_LS_PART_HIT:Ljava/lang/String; = "hit"

.field public static final HTC_LS_PART_MAIN:Ljava/lang/String; = "main"

.field static final LOG_TAG:Ljava/lang/String; = "HtcLSViewGroup"

.field public static final PART_ORDER:[Ljava/lang/String;


# instance fields
.field private mId:I

.field private mOrder:I

.field private mPackageName:Ljava/lang/String;

.field private mShowHintFlag:I

.field private mShowHintString:Ljava/lang/String;

.field private mShowNotification:Z

.field private mViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/lockscreen/HtcLSView;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "main"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bottom"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hit"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    new-instance v0, Lcom/htc/lockscreen/HtcLSViewGroup$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/HtcLSViewGroup$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/HtcLSViewGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    iput-boolean v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    iput v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->readBoolean(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->readBoolean(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "construct parcel~ mShowNotification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "construct parcel~ mPackageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "construct parcel~ mId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Landroid/os/Parcel;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    iput-boolean v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    iput v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    return-void
.end method

.method private getContentView(Landroid/os/Parcel;)Lcom/htc/lockscreen/HtcLSView;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/htc/lockscreen/HtcLSView;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView;

    :cond_0
    return-object v0
.end method

.method static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5

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

    const-string v2, "HtcLSViewGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private readBoolean(Landroid/os/Parcel;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeBoolean(Landroid/os/Parcel;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private writeContentViewToParcel(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2, p3}, Lcom/htc/lockscreen/HtcLSView;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowHintFlag()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    return v0
.end method

.method public getShowHintString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    return-object v0
.end method

.method public isShowNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    return v0
.end method

.method public isWakeUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    return v0
.end method

.method isWithContentView()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeContentView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    return-void
.end method

.method public setShowHint(ILjava/lang/String;)V
    .locals 1

    iput p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setShowNotification(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    return-void
.end method

.method public setWakeUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeContentViewToParcel(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
