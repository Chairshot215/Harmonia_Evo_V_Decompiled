.class public Lcom/android/mms/util/CommonActivityLayout$FootButton;
.super Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FootButton"
.end annotation


# instance fields
.field private mTextResID:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "textID"

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;-><init>()V

    .line 467
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/CommonActivityLayout$FootButton;->mTextResID:I

    .line 469
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->FOOTER_BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 470
    iput p1, p0, Lcom/android/mms/util/CommonActivityLayout$FootButton;->mTextResID:I

    .line 471
    return-void
.end method


# virtual methods
.method public setButtonText(Lcom/htc/widget/HtcFooterButton;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 474
    if-nez p1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    .line 479
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$FootButton;->mTextResID:I

    if-ltz v0, :cond_0

    .line 480
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$FootButton;->mTextResID:I

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    goto :goto_0
.end method
