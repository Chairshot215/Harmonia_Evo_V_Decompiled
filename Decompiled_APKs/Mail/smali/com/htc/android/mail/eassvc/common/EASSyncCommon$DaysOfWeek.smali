.class public Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;
.super Ljava/lang/Object;
.source "EASSyncCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASSyncCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaysOfWeek"
.end annotation


# instance fields
.field mDays:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1629
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;-><init>(I)V

    .line 1630
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "days"

    .prologue
    .line 1632
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1633
    iput p1, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    .line 1634
    return-void
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1656
    new-array v1, v3, [Z

    .line 1657
    .local v1, ret:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1658
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1660
    :cond_0
    return-object v1
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    return v0
.end method

.method public isEveryDaySet()Z
    .locals 2

    .prologue
    .line 1713
    iget v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 1706
    iget v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 3
    .parameter "day"

    .prologue
    const/4 v0, 0x1

    .line 1641
    iget v1, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 2
    .parameter "day"
    .parameter "set"

    .prologue
    const/4 v1, 0x1

    .line 1645
    if-eqz p2, :cond_0

    .line 1646
    iget v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    .line 1650
    :goto_0
    return-void

    .line 1648
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;)V
    .locals 1
    .parameter "dow"

    .prologue
    .line 1652
    iget v0, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    .line 1653
    return-void
.end method

.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 1667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1670
    .local v3, ret:Ljava/lang/StringBuilder;
    iget v5, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    if-nez v5, :cond_0

    const-string v5, ""

    .line 1699
    :goto_0
    return-object v5

    .line 1673
    :cond_0
    iget v5, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    const/16 v6, 0x7f

    if-ne v5, v6, :cond_1

    .line 1674
    const v5, 0x7f0b025b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1678
    :cond_1
    const/4 v0, 0x0

    .local v0, dayCount:I
    iget v1, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    .line 1679
    .local v1, days:I
    :goto_1
    if-lez v1, :cond_3

    .line 1680
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1681
    :cond_2
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1685
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-le v0, v7, :cond_5

    const v5, 0x7f060042

    :goto_2
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1691
    .local v4, strings:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    const/4 v5, 0x7

    if-ge v2, v5, :cond_6

    .line 1692
    iget v5, p0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$DaysOfWeek;->mDays:I

    shl-int v6, v7, v2

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 1693
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1694
    add-int/lit8 v0, v0, -0x1

    .line 1695
    if-lez v0, :cond_4

    const v5, 0x7f0b025c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1691
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1685
    .end local v2           #i:I
    .end local v4           #strings:[Ljava/lang/CharSequence;
    :cond_5
    const v5, 0x7f060041

    goto :goto_2

    .line 1699
    .restart local v2       #i:I
    .restart local v4       #strings:[Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
