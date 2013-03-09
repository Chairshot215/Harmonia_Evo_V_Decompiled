.class public Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;
.super Landroid/widget/SimpleAdapter;
.source "HtcCountryCodePicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/HtcCountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountryCodeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/HtcCountryCodePicker;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/HtcCountryCodePicker;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 118
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 120
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mPositions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$400(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mSections:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$300(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 200
    .local v2, view:Landroid/view/View;
    const/4 v3, 0x3

    if-ge p1, v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;
    invoke-static {v3}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$500(Lcom/android/htcdialer/HtcCountryCodePicker;)Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 202
    .local v0, country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "mcc"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .local v1, mcc:Ljava/lang/String;
    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/htcdialer/assist/CountryTable;->containValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #setter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperatorPos:I
    invoke-static {v3, p1}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$702(Lcom/android/htcdialer/HtcCountryCodePicker;I)I

    .line 205
    new-instance v3, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v4, "header"

    invoke-direct {v3, v4}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    .end local v0           #country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #mcc:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 206
    .restart local v0       #country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #mcc:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/htcdialer/assist/CountryTable;->containValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #setter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperatorPos:I
    invoke-static {v3, p1}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$902(Lcom/android/htcdialer/HtcCountryCodePicker;I)I

    .line 208
    new-instance v3, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v4, "header"

    invoke-direct {v3, v4}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_1
    new-instance v3, Lcom/htc/widget/SimpleHtcListItemSeparable;

    const-string v4, "body"

    invoke-direct {v3, v4}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    .end local v0           #country:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #mcc:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->updateSections()V

    .line 193
    invoke-super {p0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 194
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 11
    .parameter "v"
    .parameter "text"

    .prologue
    const/16 v10, 0x21

    .line 125
    iget-object v8, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mPrefix:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$000(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 127
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    .local v0, displayString:Landroid/text/SpannableString;
    const-string v8, " "

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, words:[Ljava/lang/String;
    array-length v6, v7

    .line 130
    .local v6, wordCount:I
    const/4 v2, 0x0

    .line 132
    .local v2, pos:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 133
    aget-object v5, v7, v1

    .line 134
    .local v5, word:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mPrefix:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$000(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 135
    move v3, v2

    .line 136
    .local v3, pos0:I
    iget-object v8, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mPrefix:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$000(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v4, v3, v8

    .line 137
    .local v4, pos1:I
    if-ge v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    if-gt v4, v8, :cond_0

    .line 138
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$100()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v8, v3, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 140
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$200()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v8, v3, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    .end local v3           #pos0:I
    .end local v4           #pos1:I
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v5           #word:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0           #displayString:Landroid/text/SpannableString;
    .end local v1           #k:I
    .end local v2           #pos:I
    .end local v6           #wordCount:I
    .end local v7           #words:[Ljava/lang/String;
    :goto_1
    return-void

    .line 149
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateSections()V
    .locals 7

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->getCount()I

    move-result v0

    .line 161
    .local v0, count:I
    const-string v4, ""

    .line 162
    .local v4, sectionCache:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mSections:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$300(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v5, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mPositions:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$400(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 164
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 166
    .local v1, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "section"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, section:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mSections:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$300(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v5, p0, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mPositions:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$400(Lcom/android/htcdialer/HtcCountryCodePicker;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    move-object v4, v3

    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v1           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #section:Ljava/lang/String;
    :cond_1
    return-void
.end method
