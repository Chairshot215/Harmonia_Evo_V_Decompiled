.class public Lcom/android/mms/util/CommonActivityLayout$BarText;
.super Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarText"
.end annotation


# instance fields
.field protected mLine1ResID:I

.field protected mLine2LeftResID:I

.field private mLine2RightResID:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "Line1ResID"
    .parameter "Line2ResID"

    .prologue
    const/4 v0, -0x1

    .line 323
    invoke-direct {p0}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;-><init>()V

    .line 318
    iput v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine1ResID:I

    .line 319
    iput v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine2LeftResID:I

    .line 320
    iput v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine2RightResID:I

    .line 324
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->TEXT:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 325
    iput p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine1ResID:I

    .line 326
    iput p2, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine2LeftResID:I

    .line 327
    return-void
.end method


# virtual methods
.method public setBarText(Lcom/htc/widget/HeaderBarText;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 331
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    .line 336
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine1ResID:I

    if-ltz v0, :cond_2

    .line 337
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine1ResID:I

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 338
    invoke-virtual {p1, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 341
    :cond_2
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine2LeftResID:I

    if-ltz v0, :cond_0

    .line 342
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarText;->mLine2LeftResID:I

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    .line 343
    invoke-virtual {p1, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method
