.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput v1, v0, v2

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method private addLocked(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p1, v1, v3

    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    :cond_1
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    aput p1, v1, v2

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 14

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v10, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_10

    if-ge v5, v0, :cond_0

    aget v12, v10, v6

    aget v13, v9, v5

    if-ge v12, v13, :cond_a

    :cond_0
    const/4 v2, 0x1

    if-nez v9, :cond_3

    const/4 v12, 0x4

    new-array v9, v12, [I

    const/4 v12, 0x0

    aget v13, v10, v6

    aput v13, v9, v12

    :goto_1
    if-eqz p3, :cond_1

    sget-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v12, :cond_9

    new-instance v12, Landroid/os/WorkSource;

    aget v13, v10, v6

    invoke-direct {v12, v13}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    array-length v12, v9

    if-lt v5, v12, :cond_6

    array-length v12, v9

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x2

    new-array v7, v12, [I

    if-lez v5, :cond_4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v12, v7, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-ge v5, v0, :cond_5

    add-int/lit8 v12, v5, 0x1

    sub-int v13, v0, v5

    invoke-static {v9, v5, v7, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object v9, v7

    aget v12, v10, v6

    aput v12, v9, v5

    goto :goto_1

    :cond_6
    if-ge v5, v0, :cond_8

    sub-int v3, v0, v5

    add-int v4, v5, v3

    array-length v12, v9

    add-int/lit8 v11, v12, -0x1

    if-le v4, v11, :cond_7

    sub-int v3, v11, v5

    :cond_7
    add-int/lit8 v12, v5, 0x1

    invoke-static {v9, v5, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    aget v12, v10, v6

    aput v12, v9, v5

    goto :goto_1

    :cond_9
    sget-object v12, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v13, v10, v6

    invoke-direct {v12, v13}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_2

    :cond_a
    if-nez p2, :cond_c

    :cond_b
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_2

    aget v12, v10, v6

    aget v13, v9, v5

    if-ge v12, v13, :cond_b

    goto :goto_3

    :cond_c
    move v8, v5

    :goto_4
    if-ge v5, v0, :cond_e

    aget v12, v10, v6

    aget v13, v9, v5

    if-le v12, v13, :cond_e

    sget-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-nez v12, :cond_d

    new-instance v12, Landroid/os/WorkSource;

    aget v13, v9, v5

    invoke-direct {v12, v13}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    sget-object v12, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v13, v9, v5

    invoke-direct {v12, v13}, Landroid/os/WorkSource;->addLocked(I)V

    goto :goto_5

    :cond_e
    if-ge v8, v5, :cond_f

    sub-int v12, v5, v8

    invoke-static {v9, v5, v9, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v12, v5, v8

    sub-int/2addr v0, v12

    move v5, v8

    :cond_f
    if-ge v5, v0, :cond_2

    aget v12, v10, v5

    aget v13, v9, v5

    if-ne v12, v13, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_10
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iput-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    return v2
.end method


# virtual methods
.method public add(I)Z
    .locals 4

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 3

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(I)Landroid/os/WorkSource;
    .locals 4

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    iget-object v0, v0, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    aput p1, v0, v2

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3

    sget-object v1, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v0, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 7

    const/4 v4, 0x1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget v5, p1, Landroid/os/WorkSource;->mNum:I

    if-eq v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget v5, v2, v1

    aget v6, v3, v1

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 12

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v7, p0, Landroid/os/WorkSource;->mUids:[I

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v8, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    if-ge v5, v0, :cond_3

    aget v10, v8, v6

    aget v11, v7, v5

    if-ne v10, v11, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_1

    sub-int v3, v0, v5

    add-int v4, v5, v3

    array-length v10, v7

    add-int/lit8 v9, v10, -0x1

    if-le v4, v9, :cond_0

    sub-int v3, v9, v5

    :cond_0
    add-int/lit8 v10, v5, 0x1

    invoke-static {v7, v10, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_1
    if-ge v5, v0, :cond_2

    aget v10, v8, v6

    aget v11, v7, v5

    if-le v10, v11, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v2
.end method

.method public set(I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iput v3, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v0, v0

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    goto :goto_0
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v1, 0x0

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/os/WorkSource;

    const/4 v1, 0x0

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v0, v1

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
