.class public Lcom/android/settings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# static fields
.field static final DIALOG_CONFIRM_STOP:I = 0x1

.field static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field static final KEY_PROCESS:Ljava/lang/String; = "process"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final TAG:Ljava/lang/String; = "RunningServicesDetails"


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/settings/applications/RunningState;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 486
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 413
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 480
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 482
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 484
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter "comp"

    .prologue
    .line 469
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 470
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    .line 471
    .local v0, ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    .end local v0           #ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 469
    .restart local v0       #ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0           #ad:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 349
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 350
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 349
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 354
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 356
    iput-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 361
    iput-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 364
    :cond_2
    iput v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    .line 366
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_8

    .line 367
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 368
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 375
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v5, v2}, Lcom/android/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 378
    :cond_4
    const/4 v0, -0x1

    :goto_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 379
    if-gez v0, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 381
    .local v1, pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :goto_3
    iget v2, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_6

    .line 378
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 379
    .end local v1           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 385
    .restart local v1       #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_6
    if-gez v0, :cond_7

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_5

    .line 388
    .end local v1           #pi:Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_8
    return-void
.end method

.method addProcessDetailsView(Lcom/android/settings/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .parameter "pi"
    .parameter "isMain"

    .prologue
    const/4 v12, 0x0

    .line 288
    iget v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v9, :cond_0

    .line 289
    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040084

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 291
    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v10, 0x7f0c0b3b

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 294
    :cond_0
    iget v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 296
    new-instance v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 297
    .local v2, detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040081

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 299
    .local v5, root:Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    iput-object v5, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 301
    new-instance v9, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 302
    iget-object v9, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 304
    const v9, 0x7f080160

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 305
    .local v1, description:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 306
    const v9, 0x7f0c0b42

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void

    .line 308
    :cond_2
    const/4 v8, 0x0

    .line 309
    .local v8, textid:I
    const/4 v3, 0x0

    .line 310
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 311
    .local v6, rpi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 314
    .local v0, comp:Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 340
    :cond_3
    :goto_1
    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :pswitch_0
    const v8, 0x7f0c0b44

    .line 317
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 321
    .local v4, prov:Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 328
    .end local v4           #prov:Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0c0b43

    .line 329
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 331
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 333
    .local v7, serv:Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 335
    .end local v7           #serv:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 323
    :catch_1
    move-exception v9

    goto :goto_1

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addServiceDetailsView(Lcom/android/settings/applications/RunningState$ServiceItem;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 13
    .parameter "si"
    .parameter "mi"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 216
    iget v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v7, :cond_0

    .line 217
    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040084

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 219
    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v10, 0x7f0c0b3a

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    :cond_0
    iget v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mNumServices:I

    .line 224
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 226
    .local v0, bi:Lcom/android/settings/applications/RunningState$BaseItem;
    :goto_0
    new-instance v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 227
    .local v3, detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040082

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 229
    .local v6, root:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    iput-object v6, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 231
    iput-object p1, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 232
    new-instance v7, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 233
    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v11, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v0, v11}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 235
    if-eqz p1, :cond_1

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_1

    .line 236
    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v10, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v10}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 240
    :cond_1
    const v7, 0x7f080160

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    .local v2, description:Landroid/widget/TextView;
    if-eqz p1, :cond_3

    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v10, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v11, v11, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v12, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    const v7, 0x7f08018b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 265
    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v10, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_7

    const v7, 0x7f0c0b3d

    :goto_2
    invoke-virtual {v11, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v7, 0x7f08018c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 270
    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v10, 0x10403b0

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setText(I)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "send_action_app_error"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 275
    .local v4, enabled:I
    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v10, v11}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 279
    iget-object v10, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_8

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    :goto_4
    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    return-void

    .end local v0           #bi:Lcom/android/settings/applications/RunningState$BaseItem;
    .end local v2           #description:Landroid/widget/TextView;
    .end local v3           #detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .end local v4           #enabled:I
    .end local v6           #root:Landroid/view/View;
    :cond_2
    move-object v0, p2

    .line 224
    goto/16 :goto_0

    .line 246
    .restart local v0       #bi:Lcom/android/settings/applications/RunningState$BaseItem;
    .restart local v2       #description:Landroid/widget/TextView;
    .restart local v3       #detail:Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6       #root:Landroid/view/View;
    :cond_3
    iget-boolean v7, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_4

    .line 247
    const v7, 0x7f0c0b40

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 248
    :cond_4
    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_5

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v10, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 252
    .local v1, clientr:Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f0c0b41

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 255
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 258
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz p1, :cond_6

    const v7, 0x7f0c0b3e

    :goto_5
    invoke-virtual {v10, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    const v7, 0x7f0c0b3f

    goto :goto_5

    .line 266
    :cond_7
    const v7, 0x7f0c0b3c

    goto/16 :goto_2

    .restart local v4       #enabled:I
    :cond_8
    move v7, v9

    .line 279
    goto :goto_3

    .line 281
    :cond_9
    iget-object v7, v3, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 533
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 534
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 535
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->waitForData()V

    .line 544
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 546
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, item:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 197
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 198
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 199
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 200
    .local v2, mi:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    move-object v1, v2

    .line 208
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_3

    .line 209
    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 210
    const/4 v4, 0x1

    .line 212
    :goto_2
    return v4

    .line 195
    .end local v3           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 198
    .restart local v0       #i:I
    .restart local v2       #mi:Lcom/android/settings/applications/RunningState$MergedItem;
    .restart local v3       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 426
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mUid:I

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    .line 436
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 440
    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 442
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 443
    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 444
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    const v2, 0x10805cd

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 445
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 446
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    .line 452
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 459
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 460
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 559
    packed-switch p1, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 561
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 564
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 568
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 464
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 465
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->ensureData()V

    .line 466
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .parameter "dataChanged"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 p1, 0x1

    .line 394
    :cond_0
    if-eqz p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->addDetailViews()V

    .line 410
    :cond_1
    :goto_1
    return-void

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 400
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0c0b39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 405
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 549
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 552
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method
