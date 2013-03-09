.class Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;
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
        "Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryKey:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategory:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategoryKey:I

    const-string v0, "meter_bar_category"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategory:Ljava/lang/String;

    const-string v0, "meter_bar_category_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategoryKey:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategoryKey:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryKey()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategoryKey:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryKey()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->getCategoryName()Ljava/lang/String;

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

    check-cast p1, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->compareTo(Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;)I

    move-result v0

    return v0
.end method

.method public getCategoryKey()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategoryKey:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CategoryUsageInfo;->mCategory:Ljava/lang/String;

    return-object v0
.end method
