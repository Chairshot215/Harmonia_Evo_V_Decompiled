.class public Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "ConfigUpdatesAndEventsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;,
        Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigValues;,
        Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;
    }
.end annotation


# static fields
.field private static final DIALOG_PICK_DAYS:I = 0x3e8

.field private static final ENABLE_STATUS_OFF:I = 0x0

.field private static final ENABLE_STATUS_ON:I = 0x1

.field private static final ENABLE_STATUS_UNKNOWN:I = -0x1

.field private static final EVENT_QUERY_1_DAY:I = 0x1

.field private static final EVENT_QUERY_30_DAYS:I = 0x1e

.field private static final EVENT_QUERY_3_DAYS:I = 0x3

.field private static final EVENT_QUERY_7_DAYS:I = 0x7

.field private static ITEM_COUNT:I = 0x0

.field public static POS_EVENT_DAY_SELECT:I = 0x0

.field public static POS_EVENT_NOTIFY:I = 0x0

.field public static POS_SETTINGS:I = 0x0

.field public static POS_UPDATE_NOTIFY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConfigUpdatesAndEventsActivity"


# instance fields
.field private mCurEventQueryDays:I

.field private mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    sput v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->ITEM_COUNT:I

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_EVENT_DAY_SELECT:I

    .line 95
    const/4 v0, 0x1

    sput v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->POS_SETTINGS:I

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mCurEventQueryDays:I

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;)Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mCurEventQueryDays:I

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->ITEM_COUNT:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070002

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 330
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->showDialog(I)V

    .line 333
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->setContentView(I)V

    .line 296
    const v3, 0x7f0a003f

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->setGenericTitleBar(I)V

    .line 298
    const v3, 0x7f070017

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 300
    .local v2, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    .line 301
    .local v0, button1:Lcom/htc/widget/HtcFooterButton;
    new-instance v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$1;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$1;-><init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v1

    .line 310
    .local v1, button2:Lcom/htc/widget/HtcFooterButton;
    new-instance v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$2;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$2;-><init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)V

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    new-instance v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;

    invoke-direct {v3, p0, p0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;-><init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;Landroid/content/Context;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 317
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 339
    const/16 v2, 0x3e8

    if-ne v2, p1, :cond_4

    .line 340
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 341
    .local v1, dayPick:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a003a

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 346
    const/4 v0, 0x1

    .line 347
    .local v0, checkedItem:I
    iget v2, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mCurEventQueryDays:I

    if-ne v5, v2, :cond_1

    .line 348
    const/4 v0, 0x0

    .line 356
    :cond_0
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0a003b

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f0a003c

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const v4, 0x7f0a003d

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const v3, 0x7f0a003e

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$3;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$3;-><init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 379
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 381
    .end local v0           #checkedItem:I
    .end local v1           #dayPick:Lcom/htc/widget/HtcAlertDialog$Builder;
    :goto_1
    return-object v2

    .line 349
    .restart local v0       #checkedItem:I
    .restart local v1       #dayPick:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_1
    iget v2, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mCurEventQueryDays:I

    if-ne v6, v2, :cond_2

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :cond_2
    const/4 v2, 0x7

    iget v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mCurEventQueryDays:I

    if-ne v2, v3, :cond_3

    .line 352
    const/4 v0, 0x2

    goto :goto_0

    .line 353
    :cond_3
    const/16 v2, 0x1e

    iget v3, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mCurEventQueryDays:I

    if-ne v2, v3, :cond_0

    .line 354
    const/4 v0, 0x3

    goto :goto_0

    .line 381
    .end local v0           #checkedItem:I
    .end local v1           #dayPick:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_4
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_1
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->mListAdapter:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$ConfigListAdapter;->doOnItemClicked(II)V

    .line 326
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 387
    return-void
.end method
