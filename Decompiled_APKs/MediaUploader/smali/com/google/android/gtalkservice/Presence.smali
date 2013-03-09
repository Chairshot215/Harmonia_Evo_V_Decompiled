.class public final Lcom/google/android/gtalkservice/Presence;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/Presence$2;,
        Lcom/google/android/gtalkservice/Presence$Show;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/Presence;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFFLINE:Lcom/google/android/gtalkservice/Presence; = null

.field private static final STATUS_MIN_VERSION_FOR_INVISIBILITY:I = 0x2


# instance fields
.field private mAllowInvisibility:Z

.field private mAvailable:Z

.field private mDefaultStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDndStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvisible:Z

.field private mShow:Lcom/google/android/gtalkservice/Presence$Show;

.field private mStatus:Ljava/lang/String;

.field private mStatusListContentsMax:I

.field private mStatusListMax:I

.field private mStatusMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->OFFLINE:Lcom/google/android/gtalkservice/Presence;

    .line 504
    new-instance v0, Lcom/google/android/gtalkservice/Presence$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/Presence$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/Presence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusMax(I)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListMax(I)V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setStatusListContentsMax(I)V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAllowInvisibility(Z)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 95
    const-class v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 94
    goto :goto_1

    :cond_2
    move v0, v2

    .line 99
    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gtalkservice/Presence;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    .line 115
    iget v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    .line 116
    iget v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    iput v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    .line 117
    iget-boolean v0, p1, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    .line 119
    iget-boolean v0, p1, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 120
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 121
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 122
    iget-boolean v0, p1, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 124
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 125
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 126
    return-void
.end method

.method public constructor <init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 76
    iput-object p2, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 77
    iput-object p3, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    .line 81
    return-void
.end method

.method private addToList(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 365
    :goto_0
    return v0

    .line 351
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 353
    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v0

    .line 358
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 359
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 362
    :goto_1
    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/google/android/gtalkservice/Presence;->checkListContentsLength(Ljava/util/List;)Ljava/util/List;

    .line 365
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method private checkListContentsLength(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v0

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 337
    if-le v1, v0, :cond_0

    .line 338
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    .line 339
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 338
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 343
    :cond_0
    return-object p1
.end method

.method private listEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 462
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 463
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 465
    if-eq v1, v0, :cond_0

    move v0, v3

    .line 477
    :goto_0
    return v0

    :cond_0
    move v2, v3

    .line 469
    :goto_1
    if-ge v2, v1, :cond_2

    .line 470
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 471
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 473
    goto :goto_0

    .line 469
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 477
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setStatus(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 305
    if-eqz p2, :cond_0

    .line 307
    sget-object v0, Lcom/google/android/gtalkservice/Presence$2;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gtalkservice/Presence;->addToList(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gtalkservice/Presence;->addToList(Ljava/util/List;Ljava/lang/String;)Z

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public allowInvisibility()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    return v0
.end method

.method public clearStatusLists()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 399
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/android/gtalkservice/Presence;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 410
    if-nez p1, :cond_0

    move v0, v2

    .line 458
    :goto_0
    return v0

    .line 414
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    iget-boolean v1, p1, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 415
    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    iget-object v1, p1, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 419
    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 424
    goto :goto_0

    .line 426
    :cond_3
    iget-object v0, p1, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 427
    goto :goto_0

    .line 430
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    iget-boolean v1, p1, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    if-eq v0, v1, :cond_5

    move v0, v2

    .line 431
    goto :goto_0

    .line 434
    :cond_5
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    iget v1, p1, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    if-eq v0, v1, :cond_6

    move v0, v2

    .line 435
    goto :goto_0

    .line 438
    :cond_6
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    iget v1, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    if-eq v0, v1, :cond_7

    move v0, v2

    .line 439
    goto :goto_0

    .line 442
    :cond_7
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    iget v1, p1, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    if-eq v0, v1, :cond_8

    move v0, v2

    .line 443
    goto :goto_0

    .line 446
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    iget-boolean v1, p1, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 447
    goto :goto_0

    .line 450
    :cond_9
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gtalkservice/Presence;->listEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    .line 451
    goto :goto_0

    .line 454
    :cond_a
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gtalkservice/Presence;->listEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 455
    goto :goto_0

    .line 458
    :cond_b
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDefaultStatusList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDndStatusList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getShow()Lcom/google/android/gtalkservice/Presence$Show;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusListContentsMax()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    return v0
.end method

.method public getStatusListMax()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    return v0
.end method

.method public getStatusMax()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    return v0
.end method

.method public isInvisible()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    return v0
.end method

.method public printDetails()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    const-string v0, "{ available="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 547
    const-string v0, ", show="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", invisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v0, ", allowInvisible="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 554
    const-string v0, ", default={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v5

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    add-int/lit8 v4, v3, 0x1

    if-lez v3, :cond_0

    .line 560
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_1

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    goto :goto_0

    .line 566
    :cond_2
    const-string v0, "}, dnd={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 570
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 571
    add-int/lit8 v3, v2, 0x1

    if-lez v2, :cond_3

    .line 572
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_2

    .line 578
    :cond_4
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowInvisibility(Z)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAllowInvisibility:Z

    .line 209
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    .line 229
    return-void
.end method

.method public setInvisible(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setShow(Lcom/google/android/gtalkservice/Presence$Show;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 278
    return-void
.end method

.method public setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gtalkservice/Presence;->setStatus(Ljava/lang/String;Z)V

    .line 331
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gtalkservice/Presence;->setStatus(Ljava/lang/String;Z)V

    .line 299
    return-void
.end method

.method public setStatusListContentsMax(I)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListContentsMax:I

    .line 187
    return-void
.end method

.method public setStatusListMax(I)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusListMax:I

    .line 167
    return-void
.end method

.method public setStatusMax(I)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/gtalkservice/Presence;->mStatusMax:I

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const-string v0, "UNAVAILABLE"

    .line 533
    :goto_0
    return-object v0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v0, v1, :cond_2

    .line 528
    const-string v0, "AVAILABLE(x)"

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->getStatusListContentsMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gtalkservice/Presence;->allowInvisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mAvailable:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence$Show;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-boolean v0, p0, Lcom/google/android/gtalkservice/Presence;->mInvisible:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDefaultStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/gtalkservice/Presence;->mDndStatusList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 498
    return-void

    :cond_0
    move v0, v1

    .line 489
    goto :goto_0

    :cond_1
    move v0, v1

    .line 491
    goto :goto_1

    :cond_2
    move v0, v1

    .line 494
    goto :goto_2
.end method
