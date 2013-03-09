.class public Lcom/android/mms/ui/RecipientDropDownListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecipientDropDownListAdapter.java"


# instance fields
.field private final mAddressList:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "addressList"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mAddressList:[Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mAddressList:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x0

    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, text:Lcom/htc/widget/HtcListItem2LineText;
    if-nez p2, :cond_1

    .line 55
    iget-object v4, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/android/mms/ui/HtcListItemComposer;->createStampListItem(Landroid/content/Context;Z)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v2

    .line 56
    .local v2, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object p2, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 57
    iget-object v4, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Stamp:Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem7Badges1LineBottomStamp;->setVisibility(I)V

    .line 58
    iget-object v3, v2, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 59
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 60
    const v4, 0x2030012

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 62
    move-object v1, v2

    .line 63
    .local v1, cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    .end local v2           #group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :goto_0
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mAddressList:[Ljava/lang/String;

    aget-object v6, v6, p1

    iget-object v7, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mAddressList:[Ljava/lang/String;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, ContactName:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mAddressList:[Ljava/lang/String;

    aget-object v6, v6, p1

    iget-object v7, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Badge:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/android/mms/util/ContactNameCache;->setContactPhoto(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 71
    iget-object v4, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mAddressList:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/RecipientDropDownListAdapter;->mAddressList:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 76
    return-object p2

    .line 65
    .end local v0           #ContactName:Ljava/lang/String;
    .end local v1           #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 66
    .restart local v1       #cache:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    iget-object v3, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    goto :goto_0
.end method
