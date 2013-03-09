.class public Lcom/htc/store/activity/landing/DeleteMarkedItem;
.super Lcom/htc/store/activity/BaseActivity;
.source "DeleteMarkedItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;,
        Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;,
        Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE_ERROR:I = 0x0

.field private static final MENU_SELECT_ALL:I = 0x0

.field private static final MENU_UNSELECT_ALL:I = 0x1

.field private static final PROGRESS_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessHelper:Lcom/htc/store/provider/AccessHelper;

.field mCancelClickListener:Landroid/view/View$OnClickListener;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteFailAmount:I

.field private mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

.field private mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

.field private mHeaderBarText:Lcom/htc/widget/HeaderBarText;

.field private mHtcFooterButtonCancel:Lcom/htc/widget/HtcFooterButton;

.field private mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

.field private mImageCacheMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/store/module/vo/ImageCacheMappingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/htc/widget/HtcListView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRestHelper:Lcom/htc/store/module/rest/RestHelper;

.field private mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I

    .line 140
    new-instance v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$1;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$1;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$2;

    invoke-direct {v0, p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$2;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mCancelClickListener:Landroid/view/View$OnClickListener;

    .line 424
    return-void
.end method

.method static synthetic access$100(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->doConfirm()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/store/activity/landing/DeleteMarkedItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/store/activity/landing/DeleteMarkedItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/store/activity/landing/DeleteMarkedItem;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->enableDeleteButton(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->disableDeleteButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->doDelete()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/store/activity/landing/DeleteMarkedItem;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/provider/AccessHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Lcom/htc/store/module/rest/RestHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/store/activity/landing/DeleteMarkedItem;Lcom/htc/store/module/rest/RestHelper;)Lcom/htc/store/module/rest/RestHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/store/activity/landing/DeleteMarkedItem;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getMarkedItemList()V

    return-void
.end method

.method private disableDeleteButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a000e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method private doConfirm()V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 188
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006a

    new-instance v2, Lcom/htc/store/activity/landing/DeleteMarkedItem$4;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$4;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 199
    return-void
.end method

.method private doDelete()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->showDialog(I)V

    .line 204
    new-instance v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;Lcom/htc/store/activity/landing/DeleteMarkedItem$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method private enableDeleteButton(I)V
    .locals 5
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 276
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a000e

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method private getMarkedItemList()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 355
    iget-object v8, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v8}, Lcom/htc/store/module/rest/RestHelper;->getMarkedItemsList()Lcom/htc/store/module/rest/RestResult;

    move-result-object v5

    .line 356
    .local v5, result:Lcom/htc/store/module/rest/RestResult;
    iget v8, v5, Lcom/htc/store/module/rest/RestResult;->mResultCode:I

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_9

    .line 358
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v6, tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v7, tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v2, v5, Lcom/htc/store/module/rest/RestResult;->mResultList:Ljava/util/ArrayList;

    .line 363
    .local v2, markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    iget-object v8, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsIdsByStatus(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 366
    .local v4, onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 368
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/MyActivityItem;

    .line 369
    .local v1, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 370
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getStatus()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 373
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :goto_1
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_0
    iget-object v8, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v8, v1}, Lcom/htc/store/provider/AccessHelper;->isUpdate(Lcom/htc/store/module/vo/MyActivityItem;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, needUpdateAndOriginalVersion:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 378
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getOnlineMarkedId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/store/module/vo/MyActivityItem;->setOnlineMarkedId(Ljava/lang/String;)V

    .line 379
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Lcom/htc/store/module/vo/MyActivityItem;->setStatus(I)V

    .line 380
    invoke-virtual {v1, v3}, Lcom/htc/store/module/vo/MyActivityItem;->setItemVersionName(Ljava/lang/String;)V

    .line 382
    :cond_1
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    .end local v3           #needUpdateAndOriginalVersion:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/htc/store/module/vo/MyActivityItem;->setTimestamp(J)V

    .line 388
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v1           #item:Lcom/htc/store/module/vo/MyActivityItem;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 395
    iget-object v8, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v8, v7}, Lcom/htc/store/provider/AccessHelper;->updateMyActivityMarkedItems(Ljava/util/ArrayList;)I

    .line 399
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 400
    iget-object v8, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v8, v6}, Lcom/htc/store/provider/AccessHelper;->addMyActivityItems(Ljava/util/ArrayList;)I

    .line 404
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 406
    iget-object v8, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v8, v4}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemByOnlilneIds(Ljava/util/ArrayList;)I

    .line 409
    :cond_6
    sget-object v8, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "marked items tempToUpdate array : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    sget-object v8, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "marked items add array : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    sget-object v8, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "marked items delete array : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v4           #onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v7           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_7
    :goto_2
    return-void

    .line 413
    .restart local v2       #markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v4       #onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .restart local v7       #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_8
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 414
    sget-object v8, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "online has no marked item, but in db there have at least one marked item"

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v8, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {v8, v4}, Lcom/htc/store/provider/AccessHelper;->removeMyActivityMarkedItemByOnlilneIds(Ljava/util/ArrayList;)I

    .line 416
    sget-object v8, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "marked items delete array : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 420
    .end local v2           #markedItemsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v4           #onlineItemIdsOfMarkedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tempToAdd:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    .end local v7           #tempToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/store/module/vo/MyActivityItem;>;"
    :cond_9
    sget-object v8, Lcom/htc/store/activity/landing/DeleteMarkedItem;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "Before deleting marked items, fail to call marked item list API"

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItems(I)Landroid/database/Cursor;

    move-result-object v0

    .line 135
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    const v2, 0x7f030015

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    .line 136
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 138
    return-void
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    .line 115
    new-instance v0, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    .line 116
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 117
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHeaderBarMiddle:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHeaderBarText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 121
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    .line 122
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a000e

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonCancel:Lcom/htc/widget/HtcFooterButton;

    .line 125
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonCancel:Lcom/htc/widget/HtcFooterButton;

    const v1, 0x7f0a0063

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonCancel:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonCancel:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 130
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mList:Lcom/htc/widget/HtcListView;

    .line 131
    return-void
.end method


# virtual methods
.method public getDeleteMarkedItemError(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 5
    .parameter "context"
    .parameter "amount"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 516
    const-string v0, ""

    .line 517
    .local v0, message:Ljava/lang/CharSequence;
    if-le p2, v2, :cond_0

    .line 518
    const v1, 0x7f0a0011

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a006a

    new-instance v3, Lcom/htc/store/activity/landing/DeleteMarkedItem$6;

    invoke-direct {v3, p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$6;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/store/activity/landing/DeleteMarkedItem$5;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$5;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1

    .line 520
    :cond_0
    const v1, 0x7f0a0012

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->setContentView(I)V

    .line 75
    new-instance v0, Lcom/htc/store/provider/AccessHelper;

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;

    .line 78
    invoke-direct {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->initAdapter()V

    .line 81
    new-instance v0, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;Lcom/htc/store/activity/landing/DeleteMarkedItem$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem$GetImageCacheMappingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, result:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 181
    invoke-super {p0, p1, p2}, Lcom/htc/store/activity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 183
    :cond_1
    return-object v0

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteFailAmount:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getDeleteMarkedItemError(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    .line 163
    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 167
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a000f

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 169
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 170
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/htc/store/activity/landing/DeleteMarkedItem$3;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem$3;-><init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 175
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    const v0, 0x7f0a006e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    const v0, 0x7f0a0072

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    invoke-virtual {v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 92
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonDelete:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonCancel:Lcom/htc/widget/HtcFooterButton;

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mHtcFooterButtonCancel:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    if-eqz v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mRestHelper:Lcom/htc/store/module/rest/RestHelper;

    invoke-virtual {v1}, Lcom/htc/store/module/rest/RestHelper;->destroy()V

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 106
    iget-object v1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mImageCacheMapping:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 108
    :cond_5
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 245
    .local v2, itemId:I
    packed-switch v2, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 261
    .local v1, count:I
    if-lez v1, :cond_2

    .line 262
    invoke-direct {p0, v1}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->enableDeleteButton(I)V

    .line 266
    :goto_1
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    invoke-virtual {v3}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->notifyDataSetInvalidated()V

    .line 267
    return v5

    .line 247
    .end local v1           #count:I
    :pswitch_0
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/store/provider/AccessHelper;->findMyActivityItems(I)Landroid/database/Cursor;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 253
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v3, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 264
    .restart local v1       #count:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->disableDeleteButton()V

    goto :goto_1

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 220
    iget-object v2, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mSelectedMarkedItemsProductIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 221
    .local v0, count:I
    const/4 v1, 0x0

    .line 222
    .local v1, total:I
    iget-object v2, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem;->mDeleteMarkItemsAdapter:Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;

    invoke-virtual {v2}, Lcom/htc/store/activity/landing/DeleteMarkedItem$DeleteMarkedItemsAdapter;->getCount()I

    move-result v1

    .line 225
    :cond_0
    if-nez v1, :cond_1

    .line 226
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 227
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 238
    :goto_0
    return v3

    .line 228
    :cond_1
    if-ne v0, v1, :cond_2

    .line 229
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 230
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 231
    :cond_2
    if-nez v0, :cond_3

    .line 232
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 233
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 235
    :cond_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 236
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
