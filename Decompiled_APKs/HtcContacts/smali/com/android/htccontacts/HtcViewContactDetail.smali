.class public abstract Lcom/android/htccontacts/HtcViewContactDetail;
.super Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.source "HtcViewContactDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;,
        Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final MENU_ALL_PEOPLE:I = 0x2

.field protected static final MENU_EDIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcViewContactDetail"

.field protected static mMarginLeftWithPhoto:I

.field protected static mMarginLeftWithoutPhoto:I


# instance fields
.field protected mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mSeparatorHeader:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    .line 319
    return-void
.end method

.method static DeDuplicateEntries(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1566
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v2, 0x0

    .line 1567
    .local v2, viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v3, 0x0

    .line 1568
    .local v3, viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1569
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1570
    .restart local v2       #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1571
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1572
    .restart local v3       #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1574
    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-eqz v4, :cond_1

    .line 1575
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1576
    add-int/lit8 v1, v1, -0x1

    .line 1570
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1578
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1579
    add-int/lit8 v0, v0, -0x1

    .line 1568
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1585
    .end local v1           #j:I
    :cond_3
    return-void
.end method

.method static DeDuplicateHtcEventEntries(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1726
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v2, 0x0

    .line 1727
    .local v2, viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v3, 0x0

    .line 1728
    .local v3, viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v0, 0x0

    .local v0, index1:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1729
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1730
    .restart local v2       #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    add-int/lit8 v1, v0, 0x1

    .local v1, index2:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1731
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1732
    .restart local v3       #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1735
    const/4 v4, -0x1

    iget v5, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    if-ne v4, v5, :cond_1

    .line 1736
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1737
    add-int/lit8 v1, v1, -0x1

    .line 1730
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1739
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1740
    add-int/lit8 v0, v0, -0x1

    .line 1728
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1746
    .end local v1           #index2:I
    :cond_3
    return-void
.end method

.method static DeDuplicateMailEntries(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1587
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v3, 0x0

    .line 1588
    .local v3, viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v4, 0x0

    .line 1589
    .local v4, viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1590
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1591
    .restart local v3       #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1592
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1594
    .restart local v4       #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1596
    invoke-static {v3, v4}, Lcom/android/htccontacts/HtcViewContactDetail;->compareEntryPriority(Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)I

    move-result v2

    .line 1597
    .local v2, result:I
    if-ltz v2, :cond_1

    .line 1598
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1599
    add-int/lit8 v1, v1, -0x1

    .line 1591
    .end local v2           #result:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1600
    .restart local v2       #result:I
    :cond_1
    if-gez v2, :cond_0

    .line 1601
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1602
    add-int/lit8 v0, v0, -0x1

    .line 1589
    .end local v2           #result:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1609
    .end local v1           #j:I
    :cond_3
    return-void
.end method

.method static DeDuplicatePhoneEntries(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1667
    .local p0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    const/4 v2, 0x0

    .line 1668
    .local v2, viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v3, 0x0

    .line 1669
    .local v3, viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v0, 0x0

    .local v0, index1:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 1670
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1672
    .restart local v2       #viewEntryCandidate1:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1673
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1674
    add-int/lit8 v0, v0, -0x1

    .line 1669
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1677
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .local v1, index2:I
    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1678
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    check-cast v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1679
    .restart local v3       #viewEntryCandidate2:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1683
    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-nez v4, :cond_a

    iget-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-nez v4, :cond_a

    .line 1685
    :cond_3
    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-nez v4, :cond_4

    .line 1686
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1687
    add-int/lit8 v0, v0, -0x1

    .line 1688
    goto :goto_1

    .line 1689
    :cond_4
    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-nez v4, :cond_6

    iget-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    if-eqz v4, :cond_6

    .line 1690
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1691
    add-int/lit8 v1, v1, -0x1

    .line 1677
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1692
    :cond_6
    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 1693
    iget-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1694
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1695
    add-int/lit8 v0, v0, -0x1

    .line 1696
    goto :goto_1

    .line 1698
    :cond_7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1699
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1702
    :cond_8
    iget-object v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1703
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1704
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1706
    :cond_9
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1707
    add-int/lit8 v0, v0, -0x1

    .line 1708
    goto/16 :goto_1

    .line 1712
    :cond_a
    iget-boolean v4, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-eqz v4, :cond_b

    .line 1713
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1714
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1716
    :cond_b
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1717
    add-int/lit8 v0, v0, -0x1

    .line 1718
    goto/16 :goto_1

    .line 1724
    .end local v1           #index2:I
    :cond_c
    return-void
.end method

.method static buildSkypeCallEntries(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, imData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v4, 0x0

    .line 1927
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v2, v4

    .line 1942
    :cond_1
    return-object v2

    .line 1928
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1929
    .local v2, skypeCallEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ImData;

    .line 1930
    .local v0, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidSkypeIm(Lcom/android/htccontacts/util/ImData;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1931
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1932
    .local v3, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v5, 0x7f0a0374

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1933
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDiaplsyName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1934
    const v5, 0x7f02006e

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1935
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v5

    invoke-static {v5}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v5

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1936
    const/16 v5, 0x23

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1937
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1938
    iput-object v4, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1940
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static buildSkypeMessageEntries(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, imData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v4, 0x0

    .line 1969
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v2, v4

    .line 1984
    :cond_1
    return-object v2

    .line 1970
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1971
    .local v2, skypeMessageEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ImData;

    .line 1972
    .local v0, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidSkypeIm(Lcom/android/htccontacts/util/ImData;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1973
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1974
    .local v3, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v5, 0x7f0a0375

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1975
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDiaplsyName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1976
    const v5, 0x7f02006e

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1977
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v5

    invoke-static {v5}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v5

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1978
    const/16 v5, 0x24

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1979
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1980
    iput-object v4, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1982
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static buildSkypeOutEntries(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1867
    .local p1, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 1883
    :cond_1
    return-object v3

    .line 1868
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    .local v3, skypeOutEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 1870
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    new-instance v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v4}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1871
    .local v4, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v5, 0x7f0a0372

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1872
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1873
    const v5, 0x7f02006e

    iput v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1874
    const/16 v5, 0x21

    iput v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1875
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1876
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1877
    .local v2, intentSkypeOut:Landroid/content/Intent;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1878
    iget-object v5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1879
    iput-object v2, v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1881
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static buildSkypeVideoCallEntries(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, imData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v4, 0x0

    .line 1886
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v2, v4

    .line 1901
    :cond_1
    return-object v2

    .line 1887
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1888
    .local v2, skypeVideoCallEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ImData;

    .line 1889
    .local v0, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidSkypeIm(Lcom/android/htccontacts/util/ImData;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1890
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1891
    .local v3, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v5, 0x7f0a0373

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1892
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDiaplsyName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1893
    const v5, 0x7f02006e

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1894
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v5

    invoke-static {v5}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v5

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1895
    const/16 v5, 0x22

    iput v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1896
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1897
    iput-object v4, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1899
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static compareEntryPriority(Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;)I
    .locals 5
    .parameter "entry1"
    .parameter "entry2"

    .prologue
    .line 1618
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 1644
    :goto_0
    return v2

    .line 1619
    :cond_0
    if-nez p0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 1620
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 1622
    :cond_2
    const/4 v2, 0x0

    .line 1623
    .local v2, result:I
    iget-boolean v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-nez v3, :cond_3

    .line 1624
    const/4 v2, 0x1

    goto :goto_0

    .line 1625
    :cond_3
    iget-boolean v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-nez v3, :cond_4

    iget-boolean v3, p1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    if-eqz v3, :cond_4

    .line 1626
    const/4 v2, -0x1

    goto :goto_0

    .line 1634
    :cond_4
    iget-wide v3, p0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    invoke-static {v3, v4}, Lcom/android/htccontacts/HtcViewContactDetail;->getTypeWeight(J)I

    move-result v0

    .line 1635
    .local v0, nWeight1:I
    iget-wide v3, p1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    invoke-static {v3, v4}, Lcom/android/htccontacts/HtcViewContactDetail;->getTypeWeight(J)I

    move-result v1

    .line 1636
    .local v1, nWeight2:I
    if-le v0, v1, :cond_5

    .line 1637
    const/4 v2, 0x1

    goto :goto_0

    .line 1638
    :cond_5
    if-ge v0, v1, :cond_6

    .line 1639
    const/4 v2, -0x1

    goto :goto_0

    .line 1641
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static dLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 228
    return-void
.end method

.method protected static eLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 236
    const-string v0, "HtcViewContactDetail"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method static getDrawableIdOfPhoneType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 989
    const v0, 0x7f02006e

    .line 991
    .local v0, result:I
    packed-switch p0, :pswitch_data_0

    .line 1027
    :pswitch_0
    const v0, 0x7f02006e

    .line 1065
    :goto_0
    return v0

    .line 993
    :pswitch_1
    const v0, 0x7f02006e

    .line 994
    goto :goto_0

    .line 997
    :pswitch_2
    const v0, 0x7f02006f

    .line 998
    goto :goto_0

    .line 1003
    :pswitch_3
    const v0, 0x7f020070

    .line 1004
    goto :goto_0

    .line 1006
    :pswitch_4
    const v0, 0x7f020071

    .line 1007
    goto :goto_0

    .line 1010
    :pswitch_5
    const v0, 0x7f020072

    .line 1011
    goto :goto_0

    .line 1013
    :pswitch_6
    const v0, 0x7f020073

    .line 1014
    goto :goto_0

    .line 1016
    :pswitch_7
    const v0, 0x7f020074

    .line 1017
    goto :goto_0

    .line 991
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static getFindGoogleMap(Landroid/net/Uri;J)Landroid/content/Intent;
    .locals 3
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 1170
    if-eqz p0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 1171
    :cond_0
    const/4 v1, 0x0

    .line 1174
    :goto_0
    return-object v1

    .line 1173
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1174
    .local v0, postalUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method static getFindGoogleMapBrowser(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "address"

    .prologue
    .line 1179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1180
    const/4 v2, 0x0

    .line 1195
    :goto_0
    return-object v2

    .line 1183
    :cond_0
    const/4 v2, 0x0

    .line 1184
    .local v2, resultIntent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1185
    .local v1, geoPos:Ljava/lang/StringBuffer;
    const-string v3, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1186
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1187
    .local v0, data:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #resultIntent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1188
    .restart local v2       #resultIntent:Landroid/content/Intent;
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static getFindPostalLabel(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    .local v0, builder:Ljava/lang/StringBuilder;
    const v1, 0x7f0a0176

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    const/4 v1, 0x2

    invoke-static {p0, v1, p1, p2}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1230
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1227
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static getImDrawableByProtocol(I)I
    .locals 1
    .parameter "protocol"

    .prologue
    .line 1297
    const v0, 0x7f020077

    .line 1302
    .local v0, result:I
    return v0
.end method

.method static getPostalDrawableById(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1199
    const v0, 0x7f020076

    .line 1209
    .local v0, result:I
    return v0
.end method

.method static getTypeWeight(J)I
    .locals 3
    .parameter "lType"

    .prologue
    .line 1652
    const/4 v0, -0x1

    .line 1653
    .local v0, nWeight:I
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    .line 1654
    const/4 v0, 0x5

    .line 1664
    :cond_0
    :goto_0
    return v0

    .line 1655
    :cond_1
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p0

    if-nez v1, :cond_2

    .line 1656
    const/4 v0, 0x4

    goto :goto_0

    .line 1657
    :cond_2
    const-wide/16 v1, 0x4

    cmp-long v1, v1, p0

    if-nez v1, :cond_3

    .line 1658
    const/4 v0, 0x3

    goto :goto_0

    .line 1659
    :cond_3
    const-wide/16 v1, 0x3

    cmp-long v1, v1, p0

    if-nez v1, :cond_4

    .line 1660
    const/4 v0, 0x2

    goto :goto_0

    .line 1661
    :cond_4
    const-wide/16 v1, 0x2

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 1662
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isValidSkypeIm(Lcom/android/htccontacts/util/ImData;)Z
    .locals 3
    .parameter "tmoImData"

    .prologue
    const/4 v0, 0x0

    .line 1859
    if-nez p0, :cond_1

    .line 1863
    :cond_0
    :goto_0
    return v0

    .line 1860
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1861
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isValidTmoImChat(Lcom/android/htccontacts/util/ImData;)Z
    .locals 3
    .parameter "tmoImData"

    .prologue
    const/4 v0, 0x0

    .line 1750
    if-nez p0, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return v0

    .line 1751
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1753
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isValidTmoVideoCall(Lcom/android/htccontacts/util/ImData;)Z
    .locals 4
    .parameter "tmoImData"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1760
    if-nez p0, :cond_1

    .line 1766
    :cond_0
    :goto_0
    return v0

    .line 1761
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 1762
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v3

    if-ne v2, v3, :cond_0

    const-string v2, "com.qik.android.protocol"

    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1764
    goto :goto_0
.end method

.method static newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "id"
    .parameter "leftIconId"
    .parameter "label"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 1071
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/htccontacts/HtcViewContactDetail;->newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method static newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "id"
    .parameter "leftIconId"
    .parameter "label"
    .parameter "data"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    const/4 v6, 0x1

    .line 1077
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1078
    .local v3, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz p1, :cond_0

    .line 1079
    const-string v4, "contact_methods"

    invoke-static {p1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1080
    .local v2, methodsUri:Landroid/net/Uri;
    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1083
    .end local v2           #methodsUri:Landroid/net/Uri;
    :cond_0
    const v4, 0x7f020075

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1085
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0, v6, p7, p5}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 1086
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    .end local p5
    :cond_1
    iput-object p5, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1090
    iput-object p6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1091
    if-eqz p8, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0178

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 1092
    iput-wide p2, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 1093
    iput v6, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1094
    iput-boolean p8, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    .line 1095
    invoke-static {p6}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentSendEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1096
    .local v1, intent:Landroid/content/Intent;
    iput-object v1, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1098
    return-object v3

    .line 1091
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 4
    .parameter "context"
    .parameter "label"
    .parameter "data"
    .parameter "isPrimary"
    .parameter "id"
    .parameter "sName"

    .prologue
    .line 1127
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1128
    .local v1, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v2, 0x7f020075

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1129
    iput-object p1, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1130
    iput-object p2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1131
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 1132
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1133
    iput-boolean p3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    .line 1134
    iput-wide p4, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1137
    invoke-static {p6, p2}, Lcom/htc/util/mail/MailUtils;->getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentSendEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1141
    :goto_1
    iput-object v0, v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1142
    return-object v1

    .line 1131
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1139
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    invoke-static {p2}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentSendEmail(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method static newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;J)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "label"
    .parameter "data"
    .parameter "isPrimary"
    .parameter "id"
    .parameter "sName"
    .parameter "socialnetworkType"

    .prologue
    .line 1111
    invoke-static/range {p0 .. p6}, Lcom/android/htccontacts/HtcViewContactDetail;->newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v0

    .line 1112
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p7

    if-nez v1, :cond_1

    .line 1113
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    .line 1114
    const v1, 0x20802f4

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1122
    :cond_0
    :goto_0
    return-object v0

    .line 1115
    :cond_1
    const-wide/16 v1, 0x4

    cmp-long v1, v1, p7

    if-nez v1, :cond_2

    .line 1116
    const-wide/16 v1, 0x4

    iput-wide v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    .line 1117
    const v1, 0x20802f9

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    goto :goto_0

    .line 1118
    :cond_2
    const-wide/16 v1, 0x3

    cmp-long v1, v1, p7

    if-nez v1, :cond_0

    .line 1119
    const-wide/16 v1, 0x3

    iput-wide v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    .line 1120
    const v1, 0x20802fe

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    goto :goto_0
.end method

.method static newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "context"
    .parameter "label"
    .parameter "data"
    .parameter "isPrimary"
    .parameter "id"
    .parameter "sName"
    .parameter "facebook"

    .prologue
    .line 1102
    invoke-static/range {p0 .. p6}, Lcom/android/htccontacts/HtcViewContactDetail;->newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v0

    .line 1103
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz p7, :cond_0

    if-eqz v0, :cond_0

    .line 1104
    iput-boolean p7, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    .line 1105
    const v1, 0x20802f4

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1107
    :cond_0
    return-object v0
.end method

.method static newFindPostalEntry(Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "uri"
    .parameter "id"
    .parameter "leftIconId"
    .parameter "label"
    .parameter "address"
    .parameter "type"

    .prologue
    .line 1147
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1155
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1157
    iput-object p0, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1158
    iput p3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1159
    iput-object p4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1160
    iput-object p5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1161
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1166
    return-object v0
.end method

.method static newGroupEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 1306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    const/4 v0, 0x0

    .line 1317
    :goto_0
    return-object v0

    .line 1310
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1312
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1313
    iput-object p1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1314
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1315
    const/16 v1, 0x12

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    goto :goto_0
.end method

.method static newHtcEventEntry(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 13
    .parameter "context"
    .parameter "sLabel"
    .parameter "entryValues"
    .parameter "bShowFacebookIcon"

    .prologue
    .line 1411
    if-eqz p2, :cond_3

    .line 1412
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1413
    .local v2, calendar:Ljava/util/Calendar;
    const/4 v5, 0x0

    .line 1414
    .local v5, sData2:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 1416
    const-string v9, "data4"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 1417
    .local v6, time:Ljava/lang/Long;
    if-eqz v6, :cond_0

    .line 1418
    new-instance v7, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v7, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v7, timeAdjustForBDay:Landroid/text/format/Time;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v9, v10, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1421
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1422
    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1423
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getDateFormatShortWithoutWeekday(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1488
    .end local v6           #time:Ljava/lang/Long;
    .end local v7           #timeAdjustForBDay:Landroid/text/format/Time;
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    .line 1500
    .end local v2           #calendar:Ljava/util/Calendar;
    .end local v5           #sData2:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 1426
    .restart local v2       #calendar:Ljava/util/Calendar;
    .restart local v5       #sData2:Ljava/lang/String;
    :cond_1
    const-string v9, "data13"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1427
    .local v1, Imonth:Ljava/lang/Integer;
    const-string v9, "data14"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1428
    .local v0, Iday:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1430
    .local v4, month:I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1431
    .local v3, day:I
    const/4 v9, 0x2

    invoke-virtual {v2, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 1432
    const/4 v9, 0x5

    invoke-virtual {v2, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1433
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {p0, v9, v10}, Lcom/android/htccontacts/util/ContactsUtils;->getDateStringWithoutWeekday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1490
    .end local v0           #Iday:Ljava/lang/Integer;
    .end local v1           #Imonth:Ljava/lang/Integer;
    .end local v3           #day:I
    .end local v4           #month:I
    :cond_2
    new-instance v8, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v8}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1491
    .local v8, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p1, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1492
    iput-object v5, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1493
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1494
    const/4 v9, 0x6

    iput v9, v8, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    goto :goto_1

    .line 1500
    .end local v2           #calendar:Ljava/util/Calendar;
    .end local v5           #sData2:Ljava/lang/String;
    .end local v8           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method static newHtcEventEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 7
    .parameter "context"
    .parameter "sLabel"
    .parameter "sData"
    .parameter "bShowFacebookIcon"

    .prologue
    const/4 v4, 0x0

    .line 1505
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1506
    const-wide/16 v0, 0x0

    .line 1508
    .local v0, lData:J
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1513
    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->getDateStringWithoutWeekday(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 1514
    .local v3, sData2:Ljava/lang/String;
    new-instance v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v4}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1515
    .local v4, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p1, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1516
    iput-object v3, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1517
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1518
    const/4 v5, 0x6

    iput v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1519
    if-eqz p3, :cond_0

    .line 1520
    const v5, 0x20802f4

    iput v5, v4, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1524
    .end local v0           #lData:J
    .end local v3           #sData2:Ljava/lang/String;
    .end local v4           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_0
    :goto_0
    return-object v4

    .line 1509
    .restart local v0       #lData:J
    :catch_0
    move-exception v2

    .line 1510
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v5, "HtcViewContactDetail"

    const-string v6, "newHtcEventEntry"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static newImEntry(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "id"
    .parameter "label"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 1234
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1241
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1242
    iput-object p5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1244
    if-eqz p1, :cond_0

    .line 1245
    const-string v2, "contact_methods"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1246
    .local v1, methodsUri:Landroid/net/Uri;
    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1248
    .end local v1           #methodsUri:Landroid/net/Uri;
    :cond_0
    const/16 v2, 0xa

    iput v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1249
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1251
    return-object v0
.end method

.method static newImEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "context"
    .parameter "label"
    .parameter "data"
    .parameter "values"

    .prologue
    .line 1838
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1839
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1840
    iput-object p2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1841
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1842
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1843
    invoke-static {p3}, Lcom/android/htccontacts/util/ContactsUtils;->buildImIntent(Landroid/content/ContentValues;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1846
    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    invoke-static {p0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->isSupport(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1847
    const/16 v1, 0x25

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1848
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1855
    :cond_0
    return-object v0
.end method

.method static newImEntry(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "label"
    .parameter "data"
    .parameter "values"

    .prologue
    .line 1829
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1830
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p0, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1831
    iput-object p1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1832
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1833
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1834
    invoke-static {p2}, Lcom/android/htccontacts/util/ContactsUtils;->buildImIntent(Landroid/content/ContentValues;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1835
    return-object v0
.end method

.method static newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "string"

    .prologue
    .line 1395
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    const/4 v0, 0x0

    .line 1403
    :goto_0
    return-object v0

    .line 1399
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1400
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    sget-object v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 1401
    iput-object p0, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1402
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    goto :goto_0
.end method

.method static newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "notes_info"
    .parameter "uri"

    .prologue
    .line 1377
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1378
    const/4 v0, 0x0

    .line 1390
    :goto_0
    return-object v0

    .line 1381
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1383
    .local v0, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1384
    iput-object p1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1385
    iput-object p2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1386
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1387
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1388
    const/16 v1, 0x13

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    goto :goto_0
.end method

.method static newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 4
    .parameter "context"
    .parameter "data"
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 1361
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1362
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1363
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1364
    iput-object p1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1365
    iput-object p2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 1366
    int-to-long v2, p3

    iput-wide v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 1367
    const/16 v2, 0x13

    iput v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1368
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1370
    return-object v0
.end method

.method static newOrganizationEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "label"
    .parameter "data"
    .parameter "kind"

    .prologue
    .line 1344
    new-instance v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1345
    .local v1, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v2, 0x7f0a01b7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    .local v0, detailBuilder:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1348
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1352
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1355
    iput p3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1356
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1357
    return-object v1
.end method

.method static newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 5
    .parameter "context"
    .parameter "label"
    .parameter "number"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    const/4 v2, 0x0

    .line 954
    if-nez p0, :cond_0

    .line 985
    :goto_0
    return-object v2

    .line 958
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 965
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object v1, p1

    .line 967
    .local v1, localLabel:Ljava/lang/String;
    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 968
    iput-object p2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 969
    iput-wide p3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 970
    iput-object p5, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 971
    invoke-static {p6}, Lcom/android/htccontacts/HtcViewContactDetail;->getDrawableIdOfPhoneType(I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 972
    const/4 v3, 0x5

    iput v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 973
    if-eqz p7, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 975
    iput p6, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    .line 980
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v3, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 981
    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 982
    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const-string v3, "type_phone_type"

    iget v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->typeOfPhoneType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    iput-boolean p7, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    move-object v2, v0

    .line 985
    goto :goto_0
.end method

.method static newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZJ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3
    .parameter "context"
    .parameter "label"
    .parameter "number"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"
    .parameter "socialnetworkType"

    .prologue
    .line 930
    invoke-static/range {p0 .. p7}, Lcom/android/htccontacts/HtcViewContactDetail;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v0

    .line 931
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p8

    if-nez v1, :cond_1

    .line 932
    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    .line 933
    const v1, 0x20802f4

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 939
    :cond_0
    :goto_0
    return-object v0

    .line 934
    :cond_1
    const-wide/16 v1, 0x4

    cmp-long v1, v1, p8

    if-nez v1, :cond_2

    .line 935
    const-wide/16 v1, 0x4

    iput-wide v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    goto :goto_0

    .line 936
    :cond_2
    const-wide/16 v1, 0x3

    cmp-long v1, v1, p8

    if-nez v1, :cond_0

    .line 937
    const-wide/16 v1, 0x3

    iput-wide v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->socialnetworkType:J

    goto :goto_0
.end method

.method static newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "context"
    .parameter "label"
    .parameter "number"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"
    .parameter "facebook"

    .prologue
    .line 944
    invoke-static/range {p0 .. p7}, Lcom/android/htccontacts/HtcViewContactDetail;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v0

    .line 945
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz p8, :cond_0

    if-eqz v0, :cond_0

    .line 946
    iput-boolean p8, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromFacebook:Z

    .line 947
    const v1, 0x20802f4

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 949
    :cond_0
    return-object v0
.end method

.method static newSipAddressEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 6
    .parameter "context"
    .parameter "label"
    .parameter "address"
    .parameter "id"
    .parameter "uri"
    .parameter "type"
    .parameter "isPrimary"

    .prologue
    const/4 v2, 0x0

    .line 2013
    if-nez p0, :cond_0

    .line 2040
    :goto_0
    return-object v2

    .line 2016
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 2017
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object v1, p1

    .line 2018
    .local v1, localLabel:Ljava/lang/String;
    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 2019
    iput-object p2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 2020
    iput-wide p3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 2021
    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->uri:Landroid/net/Uri;

    .line 2022
    invoke-static {p6}, Lcom/android/htccontacts/HtcViewContactDetail;->getDrawableIdOfPhoneType(I)I

    move-result v3

    iput v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 2023
    const/16 v3, 0x26

    iput v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 2024
    if-eqz p7, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text4:Ljava/lang/String;

    .line 2026
    iput p6, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->type:I

    .line 2027
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "sip"

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 2029
    iget-object v2, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2031
    iput-boolean p7, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isPrimary:Z

    move-object v2, v0

    .line 2040
    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 2024
    goto :goto_1
.end method

.method static newSkypeCallEntry(Landroid/content/Context;Ljava/util/ArrayList;JLandroid/net/Uri;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 6
    .parameter "context"
    .parameter
    .parameter "rawContactId"
    .parameter "dataUri"
    .parameter "mimetype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;J",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;"
        }
    .end annotation

    .prologue
    .line 1945
    .local p1, imData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 1965
    :cond_1
    :goto_0
    return-object v3

    .line 1946
    :cond_2
    const/4 v3, 0x0

    .line 1947
    .local v3, skypeCallEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ImData;

    .line 1948
    .local v0, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidSkypeIm(Lcom/android/htccontacts/util/ImData;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1949
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getRawcontactId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, p2

    if-nez v4, :cond_3

    .line 1950
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .end local v3           #skypeCallEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1951
    .restart local v3       #skypeCallEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v4, 0x7f0a0374

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1952
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDiaplsyName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1953
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1954
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v4

    invoke-static {v4}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v4

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1955
    const/16 v4, 0x23

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1956
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1957
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1958
    .local v2, intentSkypeCall:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1959
    invoke-virtual {v2, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1960
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1961
    iput-object v2, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static newSkypeImEntry(Landroid/content/Context;Ljava/util/ArrayList;JLandroid/net/Uri;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 6
    .parameter "context"
    .parameter
    .parameter "rawContactId"
    .parameter "dataUri"
    .parameter "mimetype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;J",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;"
        }
    .end annotation

    .prologue
    .line 1987
    .local p1, imData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 2007
    :cond_1
    :goto_0
    return-object v3

    .line 1988
    :cond_2
    const/4 v3, 0x0

    .line 1989
    .local v3, skypeImEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ImData;

    .line 1990
    .local v0, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidSkypeIm(Lcom/android/htccontacts/util/ImData;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1991
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getRawcontactId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, p2

    if-nez v4, :cond_3

    .line 1992
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .end local v3           #skypeImEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1993
    .restart local v3       #skypeImEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v4, 0x7f0a0375

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1994
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDiaplsyName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1995
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1996
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v4

    invoke-static {v4}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v4

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1997
    const/16 v4, 0x24

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1998
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1999
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2000
    .local v2, intentSkypeIm:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2001
    invoke-virtual {v2, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2003
    iput-object v2, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static newSkypeVideoCallEntry(Landroid/content/Context;Ljava/util/ArrayList;JLandroid/net/Uri;Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "rawContactId"
    .parameter "dataUri"
    .parameter "mimetype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;J",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;"
        }
    .end annotation

    .prologue
    .line 1904
    .local p1, imData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 1923
    :cond_1
    :goto_0
    return-object v3

    .line 1905
    :cond_2
    const/4 v3, 0x0

    .line 1906
    .local v3, skypeVideoCallEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ImData;

    .line 1907
    .local v0, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v0}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidSkypeIm(Lcom/android/htccontacts/util/ImData;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1908
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v4

    if-lez v4, :cond_3

    .line 1909
    new-instance v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .end local v3           #skypeVideoCallEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-direct {v3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1910
    .restart local v3       #skypeVideoCallEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v4, 0x7f0a0373

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1911
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDiaplsyName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 1912
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1913
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v4

    invoke-static {v4}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v4

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 1914
    const/16 v4, 0x22

    iput v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1915
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1916
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1917
    .local v2, intentSkypeVideoCall:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    invoke-virtual {v2, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1919
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1920
    iput-object v2, v3, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static newTmoImChatEntry(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 8
    .parameter "sLabel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;"
        }
    .end annotation

    .prologue
    .local p1, tmoImData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v5, 0x0

    .line 1797
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-object v5

    .line 1799
    :cond_1
    const/4 v0, 0x0

    .line 1800
    .local v0, bValid:Z
    const/4 v4, -0x1

    .line 1801
    .local v4, nPresence:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ImData;

    .line 1802
    .local v1, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidTmoImChat(Lcom/android/htccontacts/util/ImData;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1803
    const/4 v0, 0x1

    .line 1804
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v3

    .line 1805
    .local v3, nCurrentPresence:I
    if-lez v3, :cond_3

    sget v6, Lcom/android/htccontacts/util/ImData;->IM_CHAT:I

    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getType()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1807
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getYahooImPresence()I

    move-result v3

    .line 1809
    :cond_3
    if-le v3, v4, :cond_2

    .line 1810
    move v4, v3

    goto :goto_1

    .line 1814
    .end local v1           #data:Lcom/android/htccontacts/util/ImData;
    .end local v3           #nCurrentPresence:I
    :cond_4
    if-eqz v0, :cond_0

    .line 1815
    if-lez v4, :cond_0

    .line 1817
    new-instance v5, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v5}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1818
    .local v5, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p0, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1819
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1820
    const/16 v6, 0x20

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1821
    const v6, 0x7f02000c

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1822
    const/4 v6, -0x1

    if-eq v6, v4, :cond_0

    .line 1823
    invoke-static {v4}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v6

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    goto :goto_0
.end method

.method static newTmoVideoCallEntry(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 7
    .parameter "sLabel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;"
        }
    .end annotation

    .prologue
    .local p1, tmoImData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v5, 0x0

    .line 1769
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-object v5

    .line 1771
    :cond_1
    const/4 v0, 0x0

    .line 1772
    .local v0, bValid:Z
    const/4 v4, -0x1

    .line 1773
    .local v4, nPresence:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ImData;

    .line 1774
    .local v1, data:Lcom/android/htccontacts/util/ImData;
    invoke-static {v1}, Lcom/android/htccontacts/HtcViewContactDetail;->isValidTmoVideoCall(Lcom/android/htccontacts/util/ImData;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1775
    const/4 v0, 0x1

    .line 1776
    invoke-virtual {v1}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v3

    .line 1777
    .local v3, nCurrentPresence:I
    if-le v3, v4, :cond_2

    .line 1778
    move v4, v3

    goto :goto_1

    .line 1783
    .end local v1           #data:Lcom/android/htccontacts/util/ImData;
    .end local v3           #nCurrentPresence:I
    :cond_3
    if-eqz v0, :cond_0

    .line 1784
    if-lez v4, :cond_0

    .line 1786
    new-instance v5, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v5}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1787
    .local v5, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p0, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1788
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1789
    const/16 v6, 0x1f

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1790
    const v6, 0x7f02000d

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1791
    const/4 v6, -0x1

    if-eq v6, v4, :cond_0

    .line 1792
    invoke-static {v4}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v6

    iput v6, v5, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    goto :goto_0
.end method


# virtual methods
.method protected addSeparatorHeader(I)V
    .locals 7
    .parameter "labelResId"

    .prologue
    const/4 v5, 0x0

    .line 261
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 262
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v3, 0x2090026

    iget-object v4, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    .line 263
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    sget-object v4, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    iget-object v3, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    const v4, 0x2020010

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 265
    .local v2, separaterTextView:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, ise:Ljava/lang/IllegalStateException;
    const-string v3, "HtcViewContactDetail"

    const-string v4, "addSeparatorHeader addHeaderView failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract buildEntries()V
.end method

.method protected callDefaultNumber()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract dataChanged()V
.end method

.method protected error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 231
    const-string v0, "HtcViewContactDetail"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->finish()V

    .line 233
    return-void
.end method

.method protected getAddSpeedDialIntent(JILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "phoneId"
    .parameter "defaultNumberType"
    .parameter "name"

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 257
    return-object v0
.end method

.method protected getAddSpeedDialIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "name"

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->getAddSpeedDialIntent(JILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getEditIntent()Landroid/content/Intent;
.end method

.method protected hasSeparatorHeader()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected launchAllPeopleAndFinish()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.BrowseLayerCarouselActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v1, "type"

    const-string v2, "contact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetail;->startActivity(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->finish()V

    .line 195
    return-void
.end method

.method protected newEditContactEntry(Landroid/content/res/Resources;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "res"

    .prologue
    .line 1552
    if-nez p1, :cond_0

    .line 1553
    const/4 v0, 0x0

    .line 1562
    :goto_0
    return-object v0

    .line 1556
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1558
    .local v0, result:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1559
    sget-object v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_EDIT:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 1560
    const v1, 0x7f0a0269

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1561
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->getEditIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetail;->requestWindowFeature(I)Z

    .line 92
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetail;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/HtcViewContactDetail;->mMarginLeftWithPhoto:I

    .line 94
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/HtcViewContactDetail;->mMarginLeftWithoutPhoto:I

    .line 96
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->setTitleBar()V

    .line 97
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-eqz v0, :cond_0

    .line 120
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    .line 128
    :cond_1
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {v2, p3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 157
    .local v1, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/4 v0, 0x0

    .line 158
    .local v0, actionIntent:Landroid/content/Intent;
    const/16 v2, 0x10

    iget v3, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    if-ne v2, v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->getEditIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    :cond_0
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewContactDetail;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0           #actionIntent:Landroid/content/Intent;
    .end local v1           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 146
    :pswitch_0
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[HtcViewContactDetail]All people"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->launchAllPeopleAndFinish()V

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onResume()V

    .line 109
    return-void
.end method

.method protected setDefaultItemIfNeeded()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetail;->newEditContactEntry(Landroid/content/res/Resources;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    return-void
.end method

.method protected setDefaultItemIfNeeded(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetail;->newEditContactEntry(Landroid/content/res/Resources;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v0

    .line 219
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iput-object p1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->action:Landroid/view/View$OnClickListener;

    .line 220
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v0           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_0
    return-void
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 100
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewContactDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 101
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 102
    return-void
.end method
