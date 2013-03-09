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

    .prologue
    .line 19
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

    .line 124
    new-instance v0, Lcom/htc/lockscreen/HtcLSViewGroup$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/HtcLSViewGroup$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/HtcLSViewGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 25
    iput-boolean v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 27
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 28
    iput v3, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 29
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->readBoolean(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->readBoolean(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 49
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

    .line 50
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

    .line 51
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

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Landroid/os/Parcel;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lcom/htc/lockscreen/HtcLSViewGroup;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    .line 36
    return-void
.end method

.method private getContentView(Landroid/os/Parcel;)Lcom/htc/lockscreen/HtcLSView;
    .locals 3
    .parameter "parcel"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, exist:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    sget-object v2, Lcom/htc/lockscreen/HtcLSView;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contentView:Lcom/htc/lockscreen/HtcLSView;
    check-cast v0, Lcom/htc/lockscreen/HtcLSView;

    .line 69
    .restart local v0       #contentView:Lcom/htc/lockscreen/HtcLSView;
    :cond_0
    return-object v0
.end method

.method static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 194
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 195
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 197
    move-object v0, p0

    .line 198
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 200
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method private readBoolean(Landroid/os/Parcel;)Z
    .locals 2
    .parameter "parcel"

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .local v0, val:I
    if-ne v0, v1, :cond_0

    .line 110
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeBoolean(Landroid/os/Parcel;IZ)V
    .locals 1
    .parameter "out"
    .parameter "flags"
    .parameter "val"

    .prologue
    .line 96
    if-eqz p3, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private writeContentViewToParcel(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;I)V
    .locals 1
    .parameter "contentView"
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p1, p2, p3}, Lcom/htc/lockscreen/HtcLSView;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;
    .locals 1
    .parameter "part"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/HtcLSView;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowHintFlag()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    return v0
.end method

.method public getShowHintString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    return-object v0
.end method

.method public isShowNotification()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    return v0
.end method

.method public isWakeUp()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    return v0
.end method

.method isWithContentView()Z
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 208
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    const/4 v2, 0x1

    .line 213
    :goto_1
    return v2

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeContentView(Ljava/lang/String;)V
    .locals 1
    .parameter "part"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method public setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V
    .locals 1
    .parameter "part"
    .parameter "lsView"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 221
    iput p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    .line 222
    return-void
.end method

.method public setShowHint(ILjava/lang/String;)V
    .locals 1
    .parameter "flag"
    .parameter "hint"

    .prologue
    .line 143
    iput p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    .line 144
    if-eqz p2, :cond_0

    .line 145
    iput-object p2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setShowNotification(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    .line 162
    return-void
.end method

.method public setWakeUp(Z)V
    .locals 0
    .parameter "bWakeUp"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    .line 171
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowNotification:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 83
    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintFlag:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mShowHintString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-boolean v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mWakeUp:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 87
    iget v2, p0, Lcom/htc/lockscreen/HtcLSViewGroup;->mOrder:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, contentView:Lcom/htc/lockscreen/HtcLSView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 90
    sget-object v2, Lcom/htc/lockscreen/HtcLSViewGroup;->PART_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->getContentView(Ljava/lang/String;)Lcom/htc/lockscreen/HtcLSView;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0, p1, p2}, Lcom/htc/lockscreen/HtcLSViewGroup;->writeContentViewToParcel(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;I)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method
