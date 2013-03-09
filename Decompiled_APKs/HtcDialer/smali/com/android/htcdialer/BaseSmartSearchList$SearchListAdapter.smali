.class public Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseSmartSearchList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/BaseSmartSearchList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchListAdapter"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected final mLayoutId:I

.field protected mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;"
        }
    .end annotation
.end field

.field protected mPivot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htcdialer/BaseSmartSearchList;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/BaseSmartSearchList;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p5, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 651
    iput-object p2, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mContext:Landroid/content/Context;

    .line 652
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 653
    iput p3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mLayoutId:I

    .line 654
    iput-object p4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    .line 655
    iput-object p5, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mPivot:Ljava/util/HashMap;

    .line 656
    return-void
.end method

.method private getPhoneIndex(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 10
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-wide/16 v8, 0x0

    .line 915
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v0

    .line 916
    .local v0, callLogId:J
    sget-boolean v5, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v5, :cond_5

    .line 917
    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mPivot:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 918
    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 918
    goto :goto_0

    .line 920
    :cond_2
    iget-object v7, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mPivot:Ljava/util/HashMap;

    cmp-long v5, v0, v8

    if-lez v5, :cond_3

    neg-long v5, v0

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 921
    .local v2, phoneIndex:Ljava/lang/Integer;
    if-nez v2, :cond_4

    cmp-long v5, v0, v8

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 920
    .end local v2           #phoneIndex:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v5

    goto :goto_1

    .line 921
    .restart local v2       #phoneIndex:Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 924
    .end local v2           #phoneIndex:Ljava/lang/Integer;
    :cond_5
    cmp-long v4, v0, v8

    if-gtz v4, :cond_0

    iget v3, p1, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    goto :goto_0
.end method

.method private getSpannableString(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/CharSequence;
    .locals 10
    .parameter "appendedString"
    .parameter "number"
    .parameter "matchResult"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x21

    .line 1149
    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v0, p2

    .line 1188
    :cond_1
    :goto_0
    return-object v0

    .line 1152
    :cond_2
    aget v1, p3, v5

    .line 1153
    .local v1, firstMatchPos:I
    aget v2, p3, v9

    .line 1155
    .local v2, matchCount:I
    new-instance v0, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v6}, Lcom/android/htcdialer/BaseSmartSearchList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p2, p1, v6}, Lcom/android/htcdialer/util/DialerUtils;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1157
    .local v0, displayString:Landroid/text/SpannableString;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v5

    .line 1160
    .local v3, numberTypeOffset:I
    :goto_1
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v6}, Lcom/android/htcdialer/BaseSmartSearchList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-lez v3, :cond_3

    .line 1162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_3

    .line 1163
    const/4 v4, 0x1

    .line 1164
    .local v4, plusCount:I
    if-nez v1, :cond_5

    .line 1165
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$700()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1168
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$800()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1171
    if-eq v2, v9, :cond_1

    .line 1174
    add-int/lit8 v2, v2, -0x1

    .line 1182
    .end local v4           #plusCount:I
    :cond_3
    :goto_2
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$700()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v6, v1, v3

    add-int v7, v2, v3

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1185
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$800()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v1, v3

    add-int v7, v2, v3

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 1157
    .end local v3           #numberTypeOffset:I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto/16 :goto_1

    .line 1176
    .restart local v3       #numberTypeOffset:I
    .restart local v4       #plusCount:I
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private get_name_pos_from_pattern(Ljava/lang/String;I)I
    .locals 6
    .parameter "name_pattern"
    .parameter "pIndex"

    .prologue
    const/16 v5, 0x312f

    const/16 v4, 0x3100

    .line 1194
    const/4 v2, 0x0

    .line 1195
    .local v2, pos:I
    const/4 v1, 0x0

    .line 1196
    .local v1, isInCNPattern:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 1197
    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    .line 1199
    add-int/lit8 v2, v2, 0x1

    .line 1196
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1200
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1201
    add-int/lit8 v2, v2, 0x1

    .line 1202
    const/4 v1, 0x1

    goto :goto_1

    .line 1203
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1204
    const/4 v1, 0x0

    goto :goto_1

    .line 1207
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1208
    add-int/lit8 v2, v2, -0x1

    .line 1210
    .end local v2           #pos:I
    :cond_4
    return v2
.end method


# virtual methods
.method protected bindView(Landroid/view/View;I)V
    .locals 12
    .parameter "view"
    .parameter "position"

    .prologue
    .line 732
    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableObject;

    .line 733
    .local v2, data:Lcom/android/htcdialer/search/SearchableObject;
    const v8, 0x1020014

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 734
    .local v3, line1View:Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 736
    .local v4, line2View:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    const v9, 0x104000e

    invoke-virtual {v8, v9}, Lcom/android/htcdialer/BaseSmartSearchList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 737
    .local v6, text1:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 738
    .local v7, text2:Ljava/lang/String;
    iget v8, v2, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v8, :cond_2

    .line 739
    iget-object v0, v2, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 740
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    iget-object v7, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    .line 741
    iget-wide v8, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 742
    sget-object v8, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    iget-wide v9, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .line 743
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v1, :cond_0

    iget-object v8, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 744
    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    .line 746
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPhoneIndex(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v5

    .line 747
    .local v5, phoneIndex:I
    if-ltz v5, :cond_1

    iget v8, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v8, :cond_1

    .line 748
    iget-object v8, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v8, v8, v5

    iget-object v7, v8, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    .line 759
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v5           #phoneIndex:I
    :cond_1
    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    return-void

    .line 752
    :cond_2
    iget-object v1, v2, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .line 753
    .restart local v1       #contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v1, :cond_3

    iget-object v8, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 754
    iget-object v7, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    .line 756
    :cond_3
    iget-object v8, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    invoke-direct {p0, v2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPhoneIndex(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v7, v8, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getCallLogBearerType(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 1007
    iget v1, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 1008
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 1009
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_0

    .line 1010
    iget v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->bearerType:I

    .line 1013
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCallLogDate(Lcom/android/htcdialer/search/SearchableObject;)J
    .locals 3
    .parameter "data"

    .prologue
    .line 1017
    iget v1, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 1018
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 1019
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_0

    .line 1020
    iget-wide v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    .line 1023
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method protected getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J
    .locals 2
    .parameter "data"

    .prologue
    .line 981
    iget v0, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    iget-wide v0, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getCallLogMatchedPhone(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchablePhone;
    .locals 4
    .parameter "data"

    .prologue
    .line 864
    iget v3, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v3, :cond_1

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 866
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, number:Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 869
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v1, v3, :cond_1

    .line 870
    iget-object v3, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 872
    iget-object v3, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v3, v3, v1

    .line 877
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #i:I
    .end local v2           #number:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 869
    .restart local v0       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v1       #i:I
    .restart local v2       #number:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v0           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v1           #i:I
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected getCallLogPhoneId(Lcom/android/htcdialer/search/SearchableObject;)J
    .locals 3
    .parameter "data"

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogMatchedPhone(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchablePhone;

    move-result-object v0

    .line 882
    .local v0, sp:Lcom/android/htcdialer/search/SearchablePhone;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method protected getCallLogPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 886
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogMatchedPhone(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchablePhone;

    move-result-object v0

    .line 887
    .local v0, sp:Lcom/android/htcdialer/search/SearchablePhone;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/htcdialer/search/SearchablePhone;->type:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCallLogType(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 986
    iget v1, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 987
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 988
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_0

    .line 989
    iget v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->type:I

    .line 992
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCityId(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 1027
    iget v0, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    iget-object v0, v0, Lcom/android/htcdialer/search/SearchableCallLog;->cityId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCname(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 819
    iget v1, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 820
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 821
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->cname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 822
    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->cname:Ljava/lang/String;

    .line 825
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;
    .locals 5
    .parameter "data"

    .prologue
    .line 773
    iget v1, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_1

    .line 774
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 775
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .line 778
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :goto_0
    return-object v1

    .line 775
    .restart local v0       #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 778
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_1
    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    goto :goto_0
.end method

.method protected getContactId(Lcom/android/htcdialer/search/SearchableObject;)J
    .locals 5
    .parameter "data"

    .prologue
    const-wide/16 v1, 0x0

    .line 764
    iget v3, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v3, :cond_1

    .line 765
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 766
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_0

    iget-wide v3, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    iget-wide v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    .line 768
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_0
    :goto_0
    return-wide v1

    :cond_1
    iget-object v1, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    iget-wide v1, v1, Lcom/android/htcdialer/search/SearchableContact;->id:J

    goto :goto_0
.end method

.method protected getContactName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 814
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 815
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContactPhoneCount(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 971
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 972
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContactPhones(Lcom/android/htcdialer/search/SearchableObject;)[Lcom/android/htcdialer/search/SearchablePhone;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 906
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v2, :cond_0

    .line 907
    iget v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    new-array v1, v2, [Lcom/android/htcdialer/search/SearchablePhone;

    .line 908
    .local v1, phones:[Lcom/android/htcdialer/search/SearchablePhone;
    iget-object v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    iget v3, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    .end local v1           #phones:[Lcom/android/htcdialer/search/SearchablePhone;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getDateWithSystemFormat(J)Ljava/lang/String;
    .locals 8
    .parameter "date"

    .prologue
    .line 1033
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_2

    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$600()Ljava/text/SimpleDateFormat;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1036
    .local v3, time:J
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1037
    .local v0, curTime:Landroid/text/format/Time;
    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1038
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1039
    .local v2, oldTime:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1040
    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    iget-wide v6, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    sub-int v1, v5, v6

    .line 1043
    .local v1, diff:I
    if-nez v1, :cond_0

    .line 1044
    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    const v6, 0x1040078

    invoke-virtual {v5, v6}, Lcom/android/htcdialer/BaseSmartSearchList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1051
    .end local v0           #curTime:Landroid/text/format/Time;
    .end local v1           #diff:I
    .end local v2           #oldTime:Landroid/text/format/Time;
    .end local v3           #time:J
    :goto_0
    return-object v5

    .line 1045
    .restart local v0       #curTime:Landroid/text/format/Time;
    .restart local v1       #diff:I
    .restart local v2       #oldTime:Landroid/text/format/Time;
    .restart local v3       #time:J
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1046
    iget-object v5, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    const v6, 0x1040077

    invoke-virtual {v5, v6}, Lcom/android/htcdialer/BaseSmartSearchList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 1048
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$600()Ljava/text/SimpleDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1051
    .end local v0           #curTime:Landroid/text/format/Time;
    .end local v1           #diff:I
    .end local v2           #oldTime:Landroid/text/format/Time;
    .end local v3           #time:J
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getDialerIndex(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 1214
    iget v1, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 1215
    const/4 v1, 0x0

    .line 1218
    :goto_0
    return v1

    .line 1217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 1218
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 711
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 716
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getLastDialPhoneIntent(Lcom/android/htcdialer/search/SearchableObject;)Landroid/content/Intent;
    .locals 3
    .parameter "data"

    .prologue
    .line 891
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, number:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getMatchedPhoneIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 893
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method protected getMatchedPhoneIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "number"

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 899
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 900
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    return-object v0
.end method

.method protected getName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 806
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContactName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCname(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNameMarked(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/CharSequence;
    .locals 13
    .parameter "data"

    .prologue
    const/16 v12, 0x21

    .line 1064
    if-eqz p1, :cond_7

    .line 1065
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContactName(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1068
    const/4 v4, 0x0

    .line 1070
    .local v4, matchResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v10, v10, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-nez v10, :cond_1

    .line 1116
    .end local v4           #matchResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    .end local v5           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 1074
    .restart local v4       #matchResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    .restart local v5       #name:Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v10, v10, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SearchModule;->getSearchMode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v10, v10, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SearchModule;->getSearchMode()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v10, v10, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SearchModule;->getSearchMode()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    .line 1077
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getNamePosition(Lcom/android/htcdialer/search/SearchableObject;)[I

    move-result-object v6

    .line 1078
    .local v6, namePosition:[I
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v10, v10, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v6, v10}, Lcom/android/htcdialer/search/SearchModule;->nameMatchForHandWrite(Ljava/lang/String;[ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1080
    if-eqz v4, :cond_0

    .line 1081
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1082
    .local v1, displayString:Landroid/text/SpannableString;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1083
    .local v3, match:[I
    const/4 v10, 0x0

    aget v8, v3, v10

    .line 1084
    .local v8, pos0:I
    const/4 v10, 0x1

    aget v9, v3, v10

    .line 1085
    .local v9, pos1:I
    if-ge v8, v9, :cond_3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v10

    if-gt v9, v10, :cond_3

    .line 1086
    new-instance v10, Landroid/text/style/BackgroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$700()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v10, v8, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1089
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/BaseSmartSearchList;->access$800()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v10, v8, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .end local v3           #match:[I
    .end local v8           #pos0:I
    .end local v9           #pos1:I
    :cond_4
    move-object v5, v1

    .line 1094
    goto :goto_0

    .line 1097
    .end local v1           #displayString:Landroid/text/SpannableString;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #namePosition:[I
    :cond_5
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v10, v10, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v10}, Lcom/android/htcdialer/search/SearchModule;->getPatternList()[I

    move-result-object v7

    .line 1098
    .local v7, patternList:[I
    if-eqz v7, :cond_0

    .line 1099
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPattern(Lcom/android/htcdialer/search/SearchableObject;)[[[C

    move-result-object v10

    #calls: Lcom/android/htcdialer/BaseSmartSearchList;->getMarkedName([I[[[CLjava/lang/String;)Landroid/text/SpannableString;
    invoke-static {v7, v10, v5}, Lcom/android/htcdialer/BaseSmartSearchList;->access$900([I[[[CLjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 1101
    .restart local v1       #displayString:Landroid/text/SpannableString;
    if-eqz v1, :cond_0

    move-object v5, v1

    .line 1102
    goto/16 :goto_0

    .line 1108
    .end local v1           #displayString:Landroid/text/SpannableString;
    .end local v4           #matchResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    .end local v7           #patternList:[I
    :cond_6
    iget v10, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v10, :cond_7

    .line 1109
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 1110
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_7

    iget-object v10, v0, Lcom/android/htcdialer/search/SearchableCallLog;->cname:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1111
    iget-object v5, v0, Lcom/android/htcdialer/search/SearchableCallLog;->cname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1116
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v5           #name:Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    const v11, 0x104000e

    invoke-virtual {v10, v11}, Lcom/android/htcdialer/BaseSmartSearchList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected getNamePosition(Lcom/android/htcdialer/search/SearchableObject;)[I
    .locals 2
    .parameter "data"

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 831
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableContact;->namePosition:[I

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "isCallLog"

    .prologue
    const/4 v5, 0x0

    .line 843
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContactId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v2

    .line 844
    .local v2, contactId:J
    invoke-direct {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPhoneIndex(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v4

    .line 845
    .local v4, phoneIndex:I
    iget v6, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v6, :cond_3

    .line 846
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 847
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-nez v0, :cond_1

    .line 855
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_0
    :goto_0
    return-object v5

    .line 850
    .restart local v0       #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_1
    if-nez p2, :cond_2

    if-gez v4, :cond_3

    .line 851
    :cond_2
    iget-object v5, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    goto :goto_0

    .line 854
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_3
    sget-object v6, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/search/SearchableContact;

    .line 855
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v6, :cond_0

    iget v6, v1, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v4, v6, :cond_0

    iget-object v5, v1, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getNumberMarked(Lcom/android/htcdialer/search/SearchableObject;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "data"
    .parameter "appendString"

    .prologue
    .line 1120
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, number:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v3, v3, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    if-nez v3, :cond_0

    .line 1123
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v3}, Lcom/android/htcdialer/BaseSmartSearchList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/android/htcdialer/util/DialerUtils;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1144
    :goto_0
    return-object v3

    .line 1126
    :cond_0
    const/4 v0, 0x0

    .line 1127
    .local v0, matchResult:[I
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v3, v3, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SearchModule;->getSearchMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v3, v3, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SearchModule;->getSearchMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v3, v3, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SearchModule;->getSearchMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1131
    :cond_1
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v4, v4, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v4}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/htcdialer/search/SearchModule;->numberMatchForHandWrite(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1133
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1134
    invoke-direct {p0, p2, v1, v0}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getSpannableString(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 1137
    :cond_2
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v3, v3, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v3}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htcdialer/search/SearchModule;->getPatternList(Ljava/lang/String;)[I

    move-result-object v2

    .line 1138
    .local v2, patternList:[I
    invoke-static {v1, v2}, Lcom/android/htcdialer/search/SearchModule;->parseNumberMatch(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    if-ge v3, v4, :cond_3

    .line 1141
    invoke-direct {p0, p2, v1, v0}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getSpannableString(Ljava/lang/String;Ljava/lang/String;[I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 1144
    .end local v2           #patternList:[I
    :cond_3
    iget-object v3, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v3}, Lcom/android/htcdialer/BaseSmartSearchList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/android/htcdialer/util/DialerUtils;->createDisplayNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method protected getNumberTypeString(Lcom/android/htcdialer/search/SearchableObject;)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v0

    .line 966
    .local v0, phoneType:I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v1, v1, Lcom/android/htcdialer/BaseSmartSearchList;->mHtcContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method protected getPattern(Lcom/android/htcdialer/search/SearchableObject;)[[[C
    .locals 2
    .parameter "data"

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 839
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableContact;->pattern:[[[C

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    check-cast v1, [[[C

    goto :goto_0
.end method

.method protected getPhoneId(Lcom/android/htcdialer/search/SearchableObject;)J
    .locals 6
    .parameter "data"

    .prologue
    const-wide/16 v2, 0x0

    .line 929
    invoke-direct {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPhoneIndex(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v1

    .line 930
    .local v1, phoneIndex:I
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 931
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogPhoneId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v2

    .line 939
    :cond_0
    :goto_0
    return-wide v2

    .line 933
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 934
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v4, :cond_0

    iget v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v4, :cond_0

    .line 936
    iget-object v2, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    goto :goto_0
.end method

.method protected getPhoneType(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 5
    .parameter "data"

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 944
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-direct {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPhoneIndex(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v3

    .line 945
    .local v3, phoneIndex:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 946
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v4, :cond_2

    iget v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v3, v4, :cond_2

    .line 948
    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/android/htcdialer/search/SearchablePhone;->type:I

    .line 961
    :goto_0
    return v4

    .line 950
    :cond_0
    iget v4, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v4, :cond_2

    .line 951
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getNumber(Lcom/android/htcdialer/search/SearchableObject;Z)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v4, :cond_2

    .line 954
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v1, v4, :cond_2

    .line 955
    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 956
    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/htcdialer/search/SearchablePhone;->type:I

    goto :goto_0

    .line 954
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 961
    .end local v1           #i:I
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getPhotoId(Lcom/android/htcdialer/search/SearchableObject;)J
    .locals 3
    .parameter "data"

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 977
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/htcdialer/search/SearchableContact;->photoId:J

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method protected getTimeWithSystemFormat(J)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1056
    .local v0, formatter:Ljava/text/DateFormat;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1057
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1059
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 722
    if-nez p2, :cond_0

    .line 723
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 727
    .local v0, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->bindView(Landroid/view/View;I)V

    .line 728
    return-object v0

    .line 725
    .end local v0           #view:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method protected isBlacklist(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 783
    iget v2, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v2, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v1

    .line 786
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 787
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    .line 788
    iget v1, v0, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    goto :goto_0
.end method

.method protected isVT(Lcom/android/htcdialer/search/SearchableObject;)Z
    .locals 4
    .parameter "data"

    .prologue
    .line 996
    const/4 v1, 0x0

    .line 997
    .local v1, isVT:Z
    iget v2, p1, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v2, :cond_0

    .line 998
    iget-object v0, p1, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v0, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 999
    .local v0, callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v0, :cond_0

    .line 1000
    iget v2, v0, Lcom/android/htcdialer/search/SearchableCallLog;->bearerType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 1003
    .end local v0           #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_0
    :goto_0
    return v1

    .line 1000
    .restart local v0       #callLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isVip(Lcom/android/htcdialer/search/SearchableObject;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    .line 797
    .local v0, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v0, :cond_0

    .line 798
    iget v1, v0, Lcom/android/htcdialer/search/SearchableContact;->mVip:I

    .line 801
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public scrollPhoneNumber(Z)Z
    .locals 2
    .parameter "forwardRight"

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v1}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/search/SearchableObject;

    .line 676
    .local v0, data:Lcom/android/htcdialer/search/SearchableObject;
    invoke-virtual {p0, p1, v0}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->scrollPhoneNumber(ZLcom/android/htcdialer/search/SearchableObject;)Z

    move-result v1

    return v1
.end method

.method public scrollPhoneNumber(ZLcom/android/htcdialer/search/SearchableObject;)Z
    .locals 12
    .parameter "forwardRight"
    .parameter "data"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 680
    if-eqz p2, :cond_6

    .line 681
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getCallLogId(Lcom/android/htcdialer/search/SearchableObject;)J

    move-result-wide v0

    .line 682
    .local v0, callLogId:J
    invoke-virtual {p0, p2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContact(Lcom/android/htcdialer/search/SearchableObject;)Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v2

    .line 683
    .local v2, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v2, :cond_6

    iget-object v6, v2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v6, :cond_6

    iget v6, v2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v6, :cond_6

    .line 684
    iget v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    cmp-long v6, v0, v10

    if-lez v6, :cond_1

    move v6, v7

    :goto_0
    add-int v4, v9, v6

    .line 685
    .local v4, phoneCount:I
    invoke-direct {p0, p2}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getPhoneIndex(Lcom/android/htcdialer/search/SearchableObject;)I

    move-result v5

    .line 686
    .local v5, phoneIndex:I
    move v3, v5

    .line 687
    .local v3, oldIndex:I
    cmp-long v6, v0, v10

    if-lez v6, :cond_2

    move v6, v7

    :goto_1
    add-int v9, v3, v6

    if-eqz p1, :cond_3

    move v6, v7

    :goto_2
    add-int/2addr v6, v9

    add-int/2addr v6, v4

    rem-int v9, v6, v4

    cmp-long v6, v0, v10

    if-lez v6, :cond_4

    move v6, v7

    :goto_3
    sub-int v5, v9, v6

    .line 689
    if-eq v3, v5, :cond_6

    .line 690
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mPivot:Ljava/util/HashMap;

    if-nez v6, :cond_0

    .line 691
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mPivot:Ljava/util/HashMap;

    .line 693
    :cond_0
    iget-object v6, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mPivot:Ljava/util/HashMap;

    cmp-long v8, v0, v10

    if-lez v8, :cond_5

    neg-long v8, v0

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 699
    .end local v0           #callLogId:J
    .end local v2           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v3           #oldIndex:I
    .end local v4           #phoneCount:I
    .end local v5           #phoneIndex:I
    :goto_5
    return v7

    .restart local v0       #callLogId:J
    .restart local v2       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_1
    move v6, v8

    .line 684
    goto :goto_0

    .restart local v3       #oldIndex:I
    .restart local v4       #phoneCount:I
    .restart local v5       #phoneIndex:I
    :cond_2
    move v6, v8

    .line 687
    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_3

    .line 693
    :cond_5
    iget-wide v8, v2, Lcom/android/htcdialer/search/SearchableContact;->id:J

    goto :goto_4

    .end local v0           #callLogId:J
    .end local v2           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v3           #oldIndex:I
    .end local v4           #phoneCount:I
    .end local v5           #phoneIndex:I
    :cond_6
    move v7, v8

    .line 699
    goto :goto_5
.end method

.method public updateList(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    .local p2, pivot:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 663
    iput-object p1, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mList:Ljava/util/ArrayList;

    .line 664
    iput-object p2, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->mPivot:Ljava/util/HashMap;

    .line 665
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    iget-object v0, v0, Lcom/android/htcdialer/BaseSmartSearchList;->mListSearchModule:Lcom/android/htcdialer/search/SearchModule;

    invoke-virtual {v0}, Lcom/android/htcdialer/search/SearchModule;->getClicked()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 667
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 670
    iget-object v0, p0, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->this$0:Lcom/android/htcdialer/BaseSmartSearchList;

    invoke-virtual {v0}, Lcom/android/htcdialer/BaseSmartSearchList;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method
