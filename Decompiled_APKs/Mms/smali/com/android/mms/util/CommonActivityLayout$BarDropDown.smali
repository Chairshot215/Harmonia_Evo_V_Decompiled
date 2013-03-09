.class public Lcom/android/mms/util/CommonActivityLayout$BarDropDown;
.super Lcom/android/mms/util/CommonActivityLayout$BarText;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarDropDown"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "Line1ResID"
    .parameter "Line2ResID"

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/CommonActivityLayout$BarText;-><init>(II)V

    .line 424
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->DROP_DOWN:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 426
    return-void
.end method


# virtual methods
.method public setAttr(Lcom/htc/widget/HeaderBarDropDown;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 429
    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    .line 434
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine1ResID:I

    if-ltz v0, :cond_2

    .line 435
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine1ResID:I

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 436
    invoke-virtual {p1, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 439
    :cond_2
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine2LeftResID:I

    if-ltz v0, :cond_0

    .line 440
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine2LeftResID:I

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryText(I)V

    .line 441
    invoke-virtual {p1, v1}, Lcom/htc/widget/HeaderBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0
.end method
