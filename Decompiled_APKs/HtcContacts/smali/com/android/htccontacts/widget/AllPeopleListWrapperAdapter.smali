.class public Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;
.super Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;
.source "AllPeopleListWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAvailableAsyncQuery;,
        Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;,
        Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;
    }
.end annotation


# static fields
.field private static final MSG_REFRESH_MY_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AllPeopleListWrapperAdapter"


# instance fields
.field private isHideAddContactItem:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIsAvailableMyContact:Z

.field protected mMyContactView:Landroid/view/View;

.field protected mMyContactViewType:I

.field private mRefListActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseListActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mWarningDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/BaseListActivity;Lcom/htc/widget/InsertNewListAdapterInterface;)V
    .locals 4
    .parameter "listActivity"
    .parameter "adapter"

    .prologue
    const/4 v3, 0x0

    .line 331
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactViewType:I

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    .line 75
    iput-boolean v3, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->isHideAddContactItem:Z

    .line 89
    new-instance v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;-><init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mHandler:Landroid/os/Handler;

    .line 332
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    .line 333
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/android/htccontacts/app/BaseListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 335
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030035

    invoke-virtual {p1}, Lcom/android/htccontacts/app/BaseListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    .line 338
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->initMyContactView(Landroid/view/View;)V

    .line 339
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    new-instance v2, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v2, v3, v3}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 347
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .line 342
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    new-instance v2, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v3, "MyContactEntry"

    invoke-direct {v2, v3}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mWarningDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private initMyContactView(Landroid/view/View;)V
    .locals 9
    .parameter "myContactView"

    .prologue
    const/4 v8, 0x0

    .line 265
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const v6, 0x2020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 272
    .local v4, primaryTextView:Landroid/widget/TextView;
    const v6, 0x2020014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 273
    .local v5, secondaryTextView:Landroid/widget/TextView;
    const v6, 0x202004c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 274
    .local v3, photoView:Landroid/widget/ImageView;
    const v6, 0x7f0a0024

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v6, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 276
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_2

    .line 277
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x205004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v8, v8, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 279
    :cond_2
    const v6, 0x7f0a0025

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 280
    const v6, 0x2080846

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 282
    const v6, 0x7f070071

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 283
    .local v0, actionView:Landroid/widget/ImageView;
    if-eqz v0, :cond_3

    .line 284
    const v6, 0x7f020003

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/app/BaseListActivity;

    .line 288
    .local v1, activity:Lcom/android/htccontacts/app/BaseListActivity;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 289
    new-instance v6, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;

    invoke-direct {v6, p0, v1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$2;-><init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;Lcom/android/htccontacts/app/BaseListActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0}, Lcom/htc/widget/InsertNewListAdapterInterface;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method createShareMyContactInavailableDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"

    .prologue
    .line 312
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a03a4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 314
    const v1, 0x7f0a03a5

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 315
    const v1, 0x104000a

    new-instance v2, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$3;-><init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 325
    const v1, 0x7f0a0161

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 368
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v0, :cond_1

    .line 370
    add-int/lit8 p1, p1, -0x1

    .line 372
    :cond_1
    if-nez p1, :cond_2

    .line 373
    new-instance v0, Ljava/lang/String;

    const-string v1, "MyContact"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 377
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapterItemCount:I

    if-ge p1, v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    const-wide/16 v0, 0x0

    .line 385
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-wide v0

    .line 387
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_2

    .line 388
    add-int/lit8 p1, p1, -0x1

    .line 390
    :cond_2
    if-nez p1, :cond_3

    .line 392
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 394
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 396
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapterItemCount:I

    if-ge p1, v2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, -0x1

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, returnType:I
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 406
    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertViewType:I

    if-ne v2, v3, :cond_0

    .line 407
    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertViewType:I

    .line 409
    :cond_0
    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertViewType:I

    .line 430
    :goto_0
    return v2

    .line 410
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_2

    .line 411
    add-int/lit8 p1, p1, -0x1

    .line 413
    :cond_2
    if-nez p1, :cond_4

    .line 414
    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactViewType:I

    if-ne v2, v3, :cond_3

    .line 415
    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactViewType:I

    .line 417
    :cond_3
    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactViewType:I

    goto :goto_0

    .line 419
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 421
    if-ltz p1, :cond_5

    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapterItemCount:I

    if-ge p1, v2, :cond_5

    .line 422
    iget-object v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v2, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItemViewType(I)I

    move-result v1

    .line 423
    .local v1, type:I
    iget-object v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 424
    iget-object v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v1           #type:I
    :cond_5
    :goto_1
    move v2, v0

    .line 430
    goto :goto_0

    .line 426
    .restart local v1       #type:I
    :cond_6
    iget v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInternalViewTypeCount:I

    .end local v0           #returnType:I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInternalViewTypeCount:I

    .line 427
    .restart local v0       #returnType:I
    iget-object v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdaptersViewTypeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getMyContactContactId()J
    .locals 2

    .prologue
    .line 108
    sget-wide v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v7, 0x20200fd

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 435
    move v2, p1

    .line 436
    .local v2, org_position:I
    iget-boolean v6, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v6, :cond_7

    if-nez p1, :cond_7

    .line 437
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    if-nez v4, :cond_3

    .line 438
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v4, p2, p3}, Lcom/htc/widget/InsertNewListAdapterInterface;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    .line 440
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, btnAdd:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    :goto_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 480
    .end local v0           #btnAdd:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    .line 517
    :goto_2
    return-object v3

    .line 444
    .restart local v0       #btnAdd:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 450
    :cond_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    new-instance v6, Lcom/htc/widget/HtcListItemSeparableType;

    iget-boolean v7, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    invoke-direct {v6, v5, v7}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 455
    .end local v0           #btnAdd:Landroid/view/View;
    :cond_3
    if-nez p2, :cond_4

    .line 456
    const-string v4, "AllPeopleListWrapperAdapter"

    const-string v6, "get view : get insert view : convertview is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_4
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v4, p2, p3}, Lcom/htc/widget/InsertNewListAdapterInterface;->getInsertView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    .line 459
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 461
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 462
    .restart local v0       #btnAdd:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 463
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    .end local v0           #btnAdd:Landroid/view/View;
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 470
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 473
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v4

    if-nez v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    new-instance v6, Lcom/htc/widget/HtcListItemSeparableType;

    iget-boolean v7, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    invoke-direct {v6, v5, v7}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 465
    .restart local v0       #btnAdd:Landroid/view/View;
    :cond_6
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mInsertView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 481
    .end local v0           #btnAdd:Landroid/view/View;
    :cond_7
    iget-boolean v6, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v6, :cond_8

    .line 482
    add-int/lit8 p1, p1, -0x1

    .line 484
    :cond_8
    if-nez p1, :cond_11

    .line 485
    iget-object v6, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    if-nez v6, :cond_9

    .line 488
    iget-object v6, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    :cond_9
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 504
    :cond_a
    :goto_4
    iget-object v3, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    goto :goto_2

    .line 496
    :cond_b
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v6

    if-nez v6, :cond_a

    .line 497
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_e

    .line 498
    iget-object v6, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    new-instance v7, Lcom/htc/widget/HtcListItemSeparableType;

    iget-boolean v8, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    if-nez v8, :cond_c

    iget-boolean v8, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->isHideAddContactItem:Z

    if-eqz v8, :cond_d

    :cond_c
    move v4, v5

    :cond_d
    invoke-direct {v7, v4, v5}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 501
    :cond_e
    iget-object v6, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mMyContactView:Landroid/view/View;

    new-instance v7, Lcom/htc/widget/HtcListItemSeparableType;

    iget-boolean v8, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mEnableAddItemSeparable:Z

    if-nez v8, :cond_f

    iget-boolean v8, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->isHideAddContactItem:Z

    if-eqz v8, :cond_10

    :cond_f
    :goto_5
    invoke-direct {v7, v5, v4}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    :cond_10
    move v5, v4

    goto :goto_5

    .line 506
    :cond_11
    add-int/lit8 p1, p1, -0x1

    .line 508
    if-ltz p1, :cond_12

    iget v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapterItemCount:I

    if-ge p1, v4, :cond_12

    .line 509
    const/4 v3, 0x0

    .line 511
    .local v3, view:Landroid/view/View;
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v4, p1, p2, p3}, Lcom/htc/widget/InsertNewListAdapterInterface;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_2

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "AllPeopleListWrapperAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #view:Landroid/view/View;
    :cond_12
    move-object v3, p2

    .line 517
    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x2

    .line 525
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v0}, Lcom/htc/widget/InsertNewListAdapterInterface;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 540
    const/4 v0, 0x1

    .line 541
    .local v0, isEnanbled:Z
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 543
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_2

    .line 544
    add-int/lit8 p1, p1, -0x1

    .line 546
    :cond_2
    if-eqz p1, :cond_0

    .line 550
    add-int/lit8 p1, p1, -0x1

    .line 552
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapterItemCount:I

    if-ge p1, v2, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    if-nez v1, :cond_3

    .line 554
    const/4 v1, 0x0

    goto :goto_0

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v1, p1}, Lcom/htc/widget/InsertNewListAdapterInterface;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method

.method public refreshMyContactCard()V
    .locals 2

    .prologue
    .line 352
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->refreshMyContactCard(J)V

    .line 353
    return-void
.end method

.method public refreshMyContactCard(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    return-void
.end method

.method public setHideAddContactFlag(Z)V
    .locals 0
    .parameter "isHide"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;->isHideAddContactItem:Z

    .line 85
    return-void
.end method
