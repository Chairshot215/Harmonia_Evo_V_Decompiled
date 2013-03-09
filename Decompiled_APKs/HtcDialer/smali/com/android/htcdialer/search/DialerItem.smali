.class public Lcom/android/htcdialer/search/DialerItem;
.super Lcom/htc/widget/HtcListItem;
.source "DialerItem.java"


# static fields
.field private static BACK_GROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

.field private static BACK_GROUND_SPAN_COLOR:I

.field private static BACK_GROUND_WHITE_SPAN:Landroid/text/style/BackgroundColorSpan;


# instance fields
.field public isMyPhonebook:Z

.field public isSimContact:Z

.field public mContactId:J

.field public mMarkedName:Landroid/text/SpannableString;

.field public mMarkedNumber:Landroid/text/SpannableString;

.field public mNameAndNumberView:Lcom/htc/widget/HtcListItem2LineText;

.field public mNameView:Landroid/widget/TextView;

.field public mNumber:Ljava/lang/String;

.field public mPhones:[Lcom/android/htcdialer/search/SearchablePhone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/htcdialer/search/DialerItem;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/search/DialerItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/htc/widget/HtcListItemImageButton;

    if-nez v2, :cond_0

    .line 246
    invoke-virtual {v1, p1}, Landroid/view/View;->setPressed(Z)V

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/htc/widget/HtcListItem;->onFinishInflate()V

    .line 73
    return-void
.end method

.method public setIsMyPhonebook(Z)V
    .locals 0
    .parameter "isMyPhonebook"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/android/htcdialer/search/DialerItem;->isMyPhonebook:Z

    .line 238
    return-void
.end method

.method public setIsSimContact(Z)V
    .locals 0
    .parameter "isSimContact"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/android/htcdialer/search/DialerItem;->isSimContact:Z

    .line 222
    return-void
.end method

.method public setMarkedName(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "nameView"
    .parameter "markedName"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/htcdialer/search/DialerItem;->mNameView:Landroid/widget/TextView;

    .line 89
    instance-of v0, p2, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    .line 91
    check-cast p2, Landroid/text/SpannableString;

    .end local p2
    iput-object p2, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    .line 97
    :goto_0
    return-void

    .line 95
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    goto :goto_0
.end method

.method public setMarkedNumber(Lcom/htc/widget/HtcListItem2LineText;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "numberView"
    .parameter "markedNumber"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/htcdialer/search/DialerItem;->mNameAndNumberView:Lcom/htc/widget/HtcListItem2LineText;

    .line 104
    instance-of v0, p2, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    .line 106
    check-cast p2, Landroid/text/SpannableString;

    .end local p2
    iput-object p2, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    .line 112
    :goto_0
    return-void

    .line 110
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    goto :goto_0
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/htcdialer/search/DialerItem;->mNumber:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPersonId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/htcdialer/search/DialerItem;->mContactId:J

    .line 78
    return-void
.end method

.method public setPhones([Lcom/android/htcdialer/search/SearchablePhone;)V
    .locals 0
    .parameter "phones"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/htcdialer/search/DialerItem;->mPhones:[Lcom/android/htcdialer/search/SearchablePhone;

    .line 234
    return-void
.end method

.method public setSelected(Z)V
    .locals 9
    .parameter "selected"

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItem;->setSelected(Z)V

    .line 120
    if-eqz p1, :cond_6

    .line 122
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, v7, v5, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-eqz v4, :cond_2

    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 131
    .local v3, start:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 132
    .local v0, end:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    sget v6, Lcom/android/htcdialer/search/DialerItem;->BACK_GROUND_SPAN_COLOR:I

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v3, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .end local v1           #i:I
    .end local v2           #sps:[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameAndNumberView:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_5

    .line 147
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, v7, v5, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 149
    .restart local v2       #sps:[Ljava/lang/Object;
    if-eqz v2, :cond_5

    array-length v4, v2

    if-eqz v4, :cond_5

    .line 151
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 153
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 154
    .restart local v3       #start:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 156
    .restart local v0       #end:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    sget-object v5, Lcom/android/htcdialer/search/DialerItem;->BACK_GROUND_WHITE_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v4, v5, v3, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_3
    const/4 v1, 0x0

    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 161
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 164
    :cond_4
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameAndNumberView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 217
    .end local v1           #i:I
    .end local v2           #sps:[Ljava/lang/Object;
    :cond_5
    :goto_4
    return-void

    .line 171
    :cond_6
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameView:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 173
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, v7, v5, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 175
    .restart local v2       #sps:[Ljava/lang/Object;
    if-eqz v2, :cond_9

    array-length v4, v2

    if-eqz v4, :cond_9

    .line 177
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    array-length v4, v2

    if-ge v1, v4, :cond_7

    .line 179
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 180
    .restart local v3       #start:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 181
    .restart local v0       #end:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    sget v6, Lcom/android/htcdialer/search/DialerItem;->BACK_GROUND_SPAN_COLOR:I

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v3, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 184
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_7
    const/4 v1, 0x0

    :goto_6
    array-length v4, v2

    if-ge v1, v4, :cond_8

    .line 186
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 189
    :cond_8
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedName:Landroid/text/SpannableString;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .end local v1           #i:I
    .end local v2           #sps:[Ljava/lang/Object;
    :cond_9
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameAndNumberView:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v4, :cond_5

    .line 196
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v4, v7, v5, v6}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 198
    .restart local v2       #sps:[Ljava/lang/Object;
    if-eqz v2, :cond_5

    array-length v4, v2

    if-eqz v4, :cond_5

    .line 200
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    array-length v4, v2

    if-ge v1, v4, :cond_a

    .line 202
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 203
    .restart local v3       #start:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 205
    .restart local v0       #end:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    sget-object v5, Lcom/android/htcdialer/search/DialerItem;->BACK_GROUND_SPAN:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v4, v5, v3, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 208
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_a
    const/4 v1, 0x0

    :goto_8
    array-length v4, v2

    if-ge v1, v4, :cond_b

    .line 210
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 213
    :cond_b
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerItem;->mNameAndNumberView:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, p0, Lcom/android/htcdialer/search/DialerItem;->mMarkedNumber:Landroid/text/SpannableString;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method
