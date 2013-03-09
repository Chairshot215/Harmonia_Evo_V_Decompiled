.class public final Lcom/htc/app/HtcRingtonePickerActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "HtcRingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final CLICKEDINDEX:Ljava/lang/String; = "mClickedIndex"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    new-instance v0, Lcom/htc/app/HtcRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcRingtonePickerActivity$1;-><init>(Lcom/htc/app/HtcRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/app/HtcRingtonePickerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/app/HtcRingtonePickerActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/app/HtcRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/app/HtcRingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1

    const v0, 0x10403d5

    invoke-direct {p0, p1, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1

    const v0, 0x10403d7

    invoke-direct {p0, p1, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x20900af

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private getListPosition(I)I
    .locals 1

    if-gez p1, :cond_0

    :goto_0
    return p1

    :cond_0
    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1

    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    if-eqz v0, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    iget-object v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Lcom/htc/app/HtcRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    :goto_2
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/htc/app/HtcRingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcRingtonePickerActivity$2;-><init>(Lcom/htc/app/HtcRingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->finish()V

    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/app/HtcRingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v4, "mClickedIndex"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    :cond_0
    const-string v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasDefaultItem:Z

    const-string v4, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_1

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :cond_1
    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasSilentItem:Z

    new-instance v4, Landroid/media/RingtoneManager;

    invoke-direct {v4, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    const-string v4, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v3}, Landroid/media/RingtoneManager;->setType(I)V

    :cond_2
    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->setVolumeControlStream(I)V

    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v4, "title"

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iput-boolean v5, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/app/HtcAlertController$AlertParams$OnPrepareListViewListener;

    const-string v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    const v4, 0x10403d8

    invoke-virtual {p0, v4}, Lcom/htc/app/HtcRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :cond_3
    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->setupAlert()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    invoke-direct {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/app/HtcRingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    :cond_0
    iget-boolean v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/htc/app/HtcRingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    :cond_1
    iget v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/app/HtcRingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    :cond_2
    iget-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mClickedIndex"

    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    invoke-direct {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->stopAnyPlayingRingtone()V

    invoke-virtual {p0}, Lcom/htc/app/HtcRingtonePickerActivity;->finish()V

    return-void
.end method

.method public run()V
    .locals 3

    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_2
    iget v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    :cond_3
    iget-object v0, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/htc/app/HtcRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/htc/app/HtcRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    goto :goto_1
.end method
