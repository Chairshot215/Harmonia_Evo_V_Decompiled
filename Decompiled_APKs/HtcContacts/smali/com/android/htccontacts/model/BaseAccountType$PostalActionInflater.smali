.class public Lcom/android/htccontacts/model/BaseAccountType$PostalActionInflater;
.super Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a00b0

    .line 851
    if-nez p1, :cond_0

    .line 856
    :goto_0
    :pswitch_0
    return v0

    .line 852
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 856
    const v0, 0x7f0a00b1

    goto :goto_0

    .line 853
    :pswitch_1
    const v0, 0x7f0a00ae

    goto :goto_0

    .line 854
    :pswitch_2
    const v0, 0x7f0a00af

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
