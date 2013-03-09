.class public Lcom/android/mms/util/CommonActivityLayout$BarImage;
.super Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarImage"
.end annotation


# instance fields
.field private mImageResID:I

.field private mImgType:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

.field private mLabelResID:I


# direct methods
.method public constructor <init>(Lcom/android/mms/util/CommonActivityLayout$BarImageType;II)V
    .locals 1
    .parameter "imageType"
    .parameter "imageID"
    .parameter "LabelID"

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;-><init>()V

    .line 355
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->IMAGE:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 357
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mImgType:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    .line 358
    iput p2, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mImageResID:I

    .line 359
    iput p3, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mLabelResID:I

    .line 360
    return-void
.end method


# virtual methods
.method public setBarImageAttr(Lcom/htc/widget/HeaderBarImage;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 364
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    .line 370
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarImageType:[I

    iget-object v1, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mImgType:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_1
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mImageResID:I

    if-ltz v0, :cond_2

    .line 386
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mImageResID:I

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 388
    :cond_2
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mLabelResID:I

    if-ltz v0, :cond_0

    .line 389
    iget v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarImage;->mLabelResID:I

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_0

    .line 372
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    goto :goto_1

    .line 375
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    goto :goto_1

    .line 378
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    goto :goto_1

    .line 381
    :pswitch_3
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    goto :goto_1

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
