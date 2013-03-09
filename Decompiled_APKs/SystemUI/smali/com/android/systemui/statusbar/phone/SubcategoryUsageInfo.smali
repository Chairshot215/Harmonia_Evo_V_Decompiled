.class Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;
.super Ljava/lang/Object;
.source "CarrierAppView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mMax:J

.field private mProgress:I

.field private mSubcategory:Ljava/lang/String;

.field private mSubcategoryKey:I

.field private mUnit:Ljava/lang/String;

.field private mUsed:J


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategory:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategoryKey:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mProgress:I

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mUsed:J

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mMax:J

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mUnit:Ljava/lang/String;

    const-string v0, "meter_bar_subcategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategory:Ljava/lang/String;

    const-string v0, "meter_bar_subcategory_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategoryKey:I

    const-string v0, "meter_bar_progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mProgress:I

    const-string v0, "meter_bar_max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mMax:J

    const-string v0, "meter_bar_used"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mUsed:J

    const-string v0, "meter_bar_unit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mUnit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategoryKey:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryKey()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategoryKey:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryKey()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategory:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategory:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->getSubcategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->compareTo(Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;)I

    move-result v0

    return v0
.end method

.method public getMax()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mMax:J

    return-wide v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mProgress:I

    return v0
.end method

.method public getSubcategoryKey()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategoryKey:I

    return v0
.end method

.method public getSubcategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mSubcategory:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getUsed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mUsed:J

    return-wide v0
.end method

.method public setMax(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mMax:J

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mProgress:I

    return-void
.end method

.method public setUsed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/SubcategoryUsageInfo;->mUsed:J

    return-void
.end method
