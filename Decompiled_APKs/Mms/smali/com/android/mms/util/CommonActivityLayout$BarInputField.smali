.class public Lcom/android/mms/util/CommonActivityLayout$BarInputField;
.super Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarInputField"
.end annotation


# instance fields
.field private mInputType:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;)V
    .locals 1
    .parameter "InputType"

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;-><init>()V

    .line 399
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarInputField;->mInputType:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    .line 400
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->INPUT_FIELD:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    .line 401
    return-void
.end method


# virtual methods
.method public setAttr(Lcom/htc/widget/HeaderBarInput;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 404
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 407
    :cond_0
    iput-object p1, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    .line 409
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarInputFieldType:[I

    iget-object v1, p0, Lcom/android/mms/util/CommonActivityLayout$BarInputField;->mInputType:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 411
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    goto :goto_0

    .line 414
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
