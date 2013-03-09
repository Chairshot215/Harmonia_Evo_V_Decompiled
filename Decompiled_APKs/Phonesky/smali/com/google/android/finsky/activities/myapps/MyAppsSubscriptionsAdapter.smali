.class public Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsSubscriptionsAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;
    }
.end annotation


# static fields
.field private static final sSubscriptionAbcCollator:Ljava/text/Collator;

.field private static final sSubscriptionAbcSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mHasDocumentView:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private final mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcCollator:Ljava/text/Collator;

    .line 69
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$1;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;ZLcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "inflater"
    .parameter "hasDocumentView"
    .parameter "bitmapLoader"
    .parameter "listener"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    .line 99
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 102
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 103
    iput-boolean p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mHasDocumentView:Z

    .line 104
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcCollator:Ljava/text/Collator;

    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)V
    .locals 2
    .parameter "libEntry"
    .parameter "doc"
    .parameter "parent"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->notifyDataSetChanged()V

    .line 211
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "position"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 129
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mHasDocumentView:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    const v19, 0x7f040061

    :goto_0
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 140
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    .line 141
    .local v15, subsEntry:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;
    iget-object v6, v15, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionOwnership:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    .line 142
    .local v6, libEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    iget-object v14, v15, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    .line 143
    .local v14, subsDoc:Lcom/google/android/finsky/api/model/Document;
    iget-object v9, v15, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    .line 144
    .local v9, parentDoc:Lcom/google/android/finsky/api/model/Document;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 147
    .local v12, res:Landroid/content/res/Resources;
    const v19, 0x7f08001f

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/DocImageView;

    .line 149
    .local v16, thumbnail:Lcom/google/android/finsky/layout/DocImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 151
    const v19, 0x7f080022

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 152
    .local v17, title:Landroid/widget/TextView;
    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v19, 0x7f080023

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 155
    .local v4, appTitle:Landroid/widget/TextView;
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const v19, 0x7f080024

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 158
    .local v11, plusOne:Landroid/view/View;
    if-eqz v11, :cond_1

    .line 159
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_1
    const v19, 0x7f080020

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 163
    .local v13, status:Landroid/widget/TextView;
    const v19, 0x7f08015e

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 164
    .local v5, extraInfo:Landroid/widget/TextView;
    iget-boolean v0, v6, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->isAutoRenewing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 166
    .local v7, now:J
    iget-wide v0, v6, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->trialUntilTimestampMs:J

    move-wide/from16 v19, v0

    cmp-long v19, v7, v19

    if-gez v19, :cond_4

    .line 167
    const v19, 0x7f070147

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :goto_1
    if-eqz v5, :cond_2

    .line 172
    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;->getSubscriptionPeriod()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const v10, 0x7f07013e

    .line 175
    .local v10, periodId:I
    :goto_2
    const v19, 0x7f07013b

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    .end local v7           #now:J
    .end local v10           #periodId:I
    :cond_2
    :goto_3
    invoke-virtual {v13}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-object p2

    .line 135
    .end local v4           #appTitle:Landroid/widget/TextView;
    .end local v5           #extraInfo:Landroid/widget/TextView;
    .end local v6           #libEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .end local v9           #parentDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v11           #plusOne:Landroid/view/View;
    .end local v12           #res:Landroid/content/res/Resources;
    .end local v13           #status:Landroid/widget/TextView;
    .end local v14           #subsDoc:Lcom/google/android/finsky/api/model/Document;
    .end local v15           #subsEntry:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;
    .end local v16           #thumbnail:Lcom/google/android/finsky/layout/DocImageView;
    .end local v17           #title:Landroid/widget/TextView;
    :cond_3
    const v19, 0x7f040081

    goto/16 :goto_0

    .line 169
    .restart local v4       #appTitle:Landroid/widget/TextView;
    .restart local v5       #extraInfo:Landroid/widget/TextView;
    .restart local v6       #libEntry:Lcom/google/android/finsky/library/LibrarySubscriptionEntry;
    .restart local v7       #now:J
    .restart local v9       #parentDoc:Lcom/google/android/finsky/api/model/Document;
    .restart local v11       #plusOne:Landroid/view/View;
    .restart local v12       #res:Landroid/content/res/Resources;
    .restart local v13       #status:Landroid/widget/TextView;
    .restart local v14       #subsDoc:Lcom/google/android/finsky/api/model/Document;
    .restart local v15       #subsEntry:Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;
    .restart local v16       #thumbnail:Lcom/google/android/finsky/layout/DocImageView;
    .restart local v17       #title:Landroid/widget/TextView;
    :cond_4
    const v19, 0x7f070146

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 172
    :cond_5
    const v10, 0x7f07013f

    goto :goto_2

    .line 180
    .end local v7           #now:J
    :cond_6
    const v19, 0x7f070148

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(I)V

    .line 181
    if-eqz v5, :cond_2

    .line 182
    new-instance v19, Ljava/util/Date;

    iget-wide v0, v6, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;->validUntilTimestampMs:J

    move-wide/from16 v20, v0

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 184
    .local v18, validUntil:Ljava/lang/String;
    const v19, 0x7f070142

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method sortDocs()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcSorter:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    return-void
.end method
