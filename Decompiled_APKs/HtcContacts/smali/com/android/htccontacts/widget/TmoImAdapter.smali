.class public Lcom/android/htccontacts/widget/TmoImAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TmoImAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/util/ImData;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "TmoImAdapter"


# instance fields
.field private mImDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutRes:I

.field private mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 52
    iput v0, p0, Lcom/android/htccontacts/widget/TmoImAdapter;->mLayoutRes:I

    .line 53
    iput v0, p0, Lcom/android/htccontacts/widget/TmoImAdapter;->mTextViewResourceId:I

    .line 59
    iput p2, p0, Lcom/android/htccontacts/widget/TmoImAdapter;->mLayoutRes:I

    .line 60
    iput p3, p0, Lcom/android/htccontacts/widget/TmoImAdapter;->mTextViewResourceId:I

    .line 61
    iput-object p4, p0, Lcom/android/htccontacts/widget/TmoImAdapter;->mImDatas:Ljava/util/List;

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/widget/TmoImAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 66
    const-string v6, "TmoImAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView position: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v5, 0x0

    .line 68
    .local v5, view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    if-nez p2, :cond_1

    .line 69
    new-instance v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .end local v5           #view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/TmoImAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x195

    invoke-direct {v5, v6, v7}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 70
    .restart local v5       #view:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    new-instance v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;

    invoke-direct {v4}, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;-><init>()V

    .line 71
    .local v4, tag:Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v6

    iput-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->textWidget:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    .line 72
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getLeftImage()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v6

    iput-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->imageViewType:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getImageButton()Lcom/htc/widget/HtcListItemImageButton;

    move-result-object v6

    iput-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->imageViewStatus:Landroid/widget/ImageView;

    .line 74
    iget-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->textWidget:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setSecondaryText(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 81
    .end local v4           #tag:Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;
    :goto_0
    iget-object v6, p0, Lcom/android/htccontacts/widget/TmoImAdapter;->mImDatas:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ImData;

    .line 82
    .local v0, imData:Lcom/android/htccontacts/util/ImData;
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v3

    .line 83
    .local v3, nProtocol:I
    const-string v6, "TmoImAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView nProtocol: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getPresence()I

    move-result v2

    .line 85
    .local v2, nPresence:I
    const-string v6, "TmoImAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView nPresence: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v6, 0x2

    if-ne v6, v3, :cond_0

    sget v6, Lcom/android/htccontacts/util/ImData;->IM_CHAT:I

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getType()I

    move-result v7

    if-ne v6, v7, :cond_0

    if-lez v2, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getYahooImPresence()I

    move-result v2

    .line 90
    const-string v6, "TmoImAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView set nPresence: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    invoke-virtual {v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;

    .line 106
    .restart local v4       #tag:Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;
    iget-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->textWidget:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDiaplsyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    .line 108
    const/4 v6, -0x1

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v7

    if-ne v6, v7, :cond_2

    const-string v6, "com.qik.android.protocol"

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    iget-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->imageViewType:Landroid/widget/ImageView;

    const v7, 0x7f02004c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 124
    :goto_1
    iget-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->imageViewStatus:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    return-object v5

    .end local v0           #imData:Lcom/android/htccontacts/util/ImData;
    .end local v2           #nPresence:I
    .end local v3           #nProtocol:I
    .end local v4           #tag:Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;
    :cond_1
    move-object v5, p2

    .line 78
    check-cast v5, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    goto/16 :goto_0

    .line 112
    .restart local v0       #imData:Lcom/android/htccontacts/util/ImData;
    .restart local v2       #nPresence:I
    .restart local v3       #nProtocol:I
    .restart local v4       #tag:Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;
    :cond_2
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDataId()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    const-string v6, "TmoImAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IM Intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getDataId()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->imageViewType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/TmoImAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 121
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, v4, Lcom/android/htccontacts/widget/TmoImAdapter$ListItemTag;->imageViewType:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/TmoImAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/htccontacts/util/ImData;->getIntentIm()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/htccontacts/util/ContactsUtils;->getIntentIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
