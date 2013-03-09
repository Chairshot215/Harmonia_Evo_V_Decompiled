.class public Lcom/android/mms/util/CommonActivityLayout$BarButton;
.super Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarButton"
.end annotation


# instance fields
.field private mTextResID:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "textID"

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;-><init>()V

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarButton;->mTextResID:I

    .line 450
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 451
    iput p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarButton;->mTextResID:I

    .line 452
    return-void
.end method


# virtual methods
.method public setButtonText(Landroid/widget/Button;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 455
    if-nez p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    .line 460
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarButton;->mTextResID:I

    if-ltz v0, :cond_0

    .line 461
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarButton;->mTextResID:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
