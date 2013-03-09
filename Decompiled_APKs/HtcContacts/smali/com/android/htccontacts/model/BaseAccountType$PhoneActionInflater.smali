.class public Lcom/android/htccontacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabel(Landroid/content/res/Resources;Ljava/lang/Integer;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 709
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/model/BaseAccountType$PhoneActionInflater;->getTypeLabelResource(Ljava/lang/Integer;)I

    move-result v0

    .line 710
    .local v0, labelRes:I
    if-nez p2, :cond_0

    .line 711
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 718
    .end local p3
    :goto_0
    return-object v2

    .line 712
    .restart local p3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 713
    new-array v2, v5, [Ljava/lang/Object;

    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3
    :cond_1
    aput-object p3, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 714
    .restart local p3
    :cond_2
    const/16 v2, 0x13

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 715
    const v2, 0x7f0a0092

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 716
    .local v1, sNewLabel:Ljava/lang/CharSequence;
    new-array v2, v5, [Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, ""

    .end local v1           #sNewLabel:Ljava/lang/CharSequence;
    :cond_3
    aput-object v1, v2, v4

    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 718
    :cond_4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0a006b

    .line 725
    if-nez p1, :cond_0

    .line 747
    :goto_0
    :pswitch_0
    return v0

    .line 726
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 747
    const v0, 0x7f0a007a

    goto :goto_0

    .line 727
    :pswitch_1
    const v0, 0x7f0a0079

    goto :goto_0

    .line 728
    :pswitch_2
    const v0, 0x7f0a0078

    goto :goto_0

    .line 729
    :pswitch_3
    const v0, 0x7f0a0067

    goto :goto_0

    .line 730
    :pswitch_4
    const v0, 0x7f0a0068

    goto :goto_0

    .line 731
    :pswitch_5
    const v0, 0x7f0a0069

    goto :goto_0

    .line 732
    :pswitch_6
    const v0, 0x7f0a006a

    goto :goto_0

    .line 734
    :pswitch_7
    const v0, 0x7f0a006c

    goto :goto_0

    .line 735
    :pswitch_8
    const v0, 0x7f0a006d

    goto :goto_0

    .line 736
    :pswitch_9
    const v0, 0x7f0a006e

    goto :goto_0

    .line 737
    :pswitch_a
    const v0, 0x7f0a006f

    goto :goto_0

    .line 738
    :pswitch_b
    const v0, 0x7f0a0070

    goto :goto_0

    .line 739
    :pswitch_c
    const v0, 0x7f0a0071

    goto :goto_0

    .line 740
    :pswitch_d
    const v0, 0x7f0a0072

    goto :goto_0

    .line 741
    :pswitch_e
    const v0, 0x7f0a0073

    goto :goto_0

    .line 742
    :pswitch_f
    const v0, 0x7f0a0074

    goto :goto_0

    .line 743
    :pswitch_10
    const v0, 0x7f0a0075

    goto :goto_0

    .line 744
    :pswitch_11
    const v0, 0x7f0a0076

    goto :goto_0

    .line 745
    :pswitch_12
    const v0, 0x7f0a007b

    goto :goto_0

    .line 746
    :pswitch_13
    const v0, 0x7f0a0077

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 702
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
