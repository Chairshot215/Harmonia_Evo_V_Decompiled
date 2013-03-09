.class public Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "BackupOptionVzwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;
    }
.end annotation


# static fields
.field private static final CONNECTION_TYPE:I = 0x1

.field private static final KEY_CONNECTION_TYPE:Ljava/lang/String; = "connection_type"

.field private static final KEY_MUSIC:Ljava/lang/String; = "key_music"

.field private static final KEY_PICTURES:Ljava/lang/String; = "key_pictures"

.field private static final KEY_UPDATE_SCHEDULE:Ljava/lang/String; = "scheduled_sync"

.field private static final KEY_VIDEOS:Ljava/lang/String; = "key_videos"

.field private static final SYNC_AFTERNOON:I = 0x2

.field private static final SYNC_EVENING:I = 0x3

.field private static final SYNC_LATENIGHT:I = 0x4

.field private static final SYNC_MORNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OOBE_BackupOptionVzwActivity"

.field private static final UPDATE_SCHEDULE:I = 0x2

.field private static final WIFI_MOBILE_BOTH:I = 0x3

.field private static final WIFI_ONLY:I = 0x1


# instance fields
.field private mBtnNext:Landroid/widget/Button;

.field private mIsMusicSync:Z

.field private mIsPictureSync:Z

.field private mIsRemind:Z

.field private mIsVideoSync:Z

.field private mMusicCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPictureLastBackupTime:Ljava/util/Date;

.field private mPicturesCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

.field private mRadioOff:I

.field private mRadioOn:I

.field private mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

.field private mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

.field private mUpdateSchedule:I

.field private mUpdateScheduleDialog:Landroid/app/Dialog;

.field private mUseNetworkSelect:I

.field private mUseNetworksDialog:Landroid/app/Dialog;

.field private mVideoLastBackupTime:Ljava/util/Date;

.field private mVideosCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mbLaunchByIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 86
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    .line 94
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mbLaunchByIcon:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    .line 98
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsMusicSync:Z

    .line 99
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsPictureSync:Z

    .line 100
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsVideoSync:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    .line 104
    iput-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z

    .line 106
    invoke-static {}, Lcom/htc/android/htcsetupwizard/MainActivity;->getVMMInterface()Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    .line 274
    return-void
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z

    return p1
.end method

.method private addList(Ljava/util/List;III)V
    .locals 3
    .parameter
    .parameter "title"
    .parameter "summary"
    .parameter "radio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;III)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, listStr:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "title"

    invoke-direct {p0, p2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getFinalTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "summary"

    invoke-virtual {p0, p3}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "radio"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method private createRemindDialog()V
    .locals 7

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 438
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030031

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 439
    .local v0, checkboxLayout:Landroid/view/View;
    const v5, 0x7f0d005a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 440
    .local v4, mDontRimindMe:Landroid/widget/CheckBox;
    iget-boolean v5, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 442
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    .local v1, helpBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f0a00c9

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 444
    const v5, 0x7f0a00ca

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 445
    const v5, 0x1080027

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 447
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 448
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;

    invoke-direct {v6, p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;Landroid/view/View;)V

    invoke-virtual {v1, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 462
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 463
    .local v2, helpDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 464
    return-void

    .line 440
    .end local v1           #helpBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #helpDialog:Landroid/app/Dialog;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private createUpdateScheduleDialog()Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v5, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 350
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUpdateScheduleDialog, updateSchedule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, listStr:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .line 356
    .local v7, radio:I
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    if-gt v1, v5, :cond_0

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    if-ge v1, v8, :cond_1

    :cond_0
    iput v8, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    .line 359
    :cond_1
    const v3, 0x7f0a00cd

    const v4, 0x7f0a00ce

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    if-ne v1, v8, :cond_2

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOn:I

    :goto_0
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->addList(Ljava/util/List;III)V

    .line 364
    const v3, 0x7f0a00cf

    const v4, 0x7f0a00d0

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    if-ne v1, v10, :cond_3

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOn:I

    :goto_1
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->addList(Ljava/util/List;III)V

    .line 369
    const v3, 0x7f0a00d1

    const v4, 0x7f0a00d2

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    if-ne v1, v9, :cond_4

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOn:I

    :goto_2
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->addList(Ljava/util/List;III)V

    .line 374
    const v3, 0x7f0a00d3

    const v4, 0x7f0a00d4

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    if-ne v1, v5, :cond_5

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOn:I

    :goto_3
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->addList(Ljava/util/List;III)V

    .line 378
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;

    const v3, 0x7f030019

    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const-string v1, "summary"

    aput-object v1, v4, v8

    const-string v1, "radio"

    aput-object v1, v4, v10

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 385
    .local v0, simple:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0a00c5

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 392
    .local v6, dialog:Landroid/app/Dialog;
    return-object v6

    .line 359
    .end local v0           #simple:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_2
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOff:I

    goto :goto_0

    .line 364
    :cond_3
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOff:I

    goto :goto_1

    .line 369
    :cond_4
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOff:I

    goto :goto_2

    .line 374
    :cond_5
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOff:I

    goto :goto_3

    .line 378
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x1t
        0x10t 0x0t 0x2t 0x1t
        0x0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private createUseNetworkDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 315
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUseNetworkDialog, mUseNetworkSelect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v2, listStr:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .line 322
    .local v7, radio:I
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    if-ne v1, v9, :cond_0

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOn:I

    .line 323
    :goto_0
    const v1, 0x7f0a00c6

    const v3, 0x7f0a010a

    invoke-direct {p0, v2, v1, v3, v7}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->addList(Ljava/util/List;III)V

    .line 327
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    if-ne v1, v8, :cond_1

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOn:I

    .line 328
    :goto_1
    const v1, 0x7f0a00c7

    const v3, 0x7f0a0108

    invoke-direct {p0, v2, v1, v3, v7}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->addList(Ljava/util/List;III)V

    .line 331
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;

    const v3, 0x7f030019

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const-string v1, "summary"

    aput-object v1, v4, v9

    const/4 v1, 0x2

    const-string v5, "radio"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 336
    .local v0, simple:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;
    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;->setNoSummary()V

    .line 339
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0a00c4

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 345
    .local v6, dialog:Landroid/app/Dialog;
    return-object v6

    .line 322
    .end local v0           #simple:Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity$MySimpleAdapter;
    .end local v6           #dialog:Landroid/app/Dialog;
    :cond_0
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOff:I

    goto :goto_0

    .line 327
    :cond_1
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOff:I

    goto :goto_1

    .line 331
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x1t
        0x10t 0x0t 0x2t 0x1t
        0x0t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private getFinalTitle(I)Ljava/lang/String;
    .locals 3
    .parameter "str_id"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, title:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 258
    const-string v1, "OOBE_BackupOptionVzwActivity"

    const-string v2, "CHS Language"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v1, "Wi-Fi"

    const-string v2, "WLAN"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_0
    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    const-string v3, "common_radiobutton_on"

    const v4, 0x2080078

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOn:I

    .line 130
    const-string v3, "common_radiobutton_off"

    const v4, 0x2080076

    invoke-static {p0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mRadioOff:I

    .line 132
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 133
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 135
    const-string v3, "LaunchByIcon"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mbLaunchByIcon:Z

    .line 137
    :cond_0
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->setContentView(I)V

    .line 139
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 140
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 142
    const v3, 0x7f0d000a

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 143
    .local v0, divider:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    const v3, 0x7f0d0009

    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mBtnNext:Landroid/widget/Button;

    .line 146
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mBtnNext:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_1
    const-string v3, "OOBE_BackupOptionVzwActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mServer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    if-eqz v3, :cond_2

    .line 153
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    invoke-interface {v3}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->getPreferenceSettings()Lcom/htc/vmm/api/newbay/bean/Settings;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    .line 155
    :cond_2
    const-string v3, "OOBE_BackupOptionVzwActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "OOBE_BackupOptionVzwActivity"

    const-string v4, "getPreferenceSettings RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onCreatePreferences()V
    .locals 3

    .prologue
    .line 163
    const-string v1, "OOBE_BackupOptionVzwActivity"

    const-string v2, "onCreatePreferences"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, MMM dd, yyyy hh:mm aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, dateFormat:Ljava/text/DateFormat;
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->addPreferencesFromResource(I)V

    .line 167
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    .line 169
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "key_music"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mMusicCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 170
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mMusicCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 171
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mMusicCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsMusicSync:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 172
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideoLastBackupTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mMusicCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideoLastBackupTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "key_pictures"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPicturesCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 177
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPicturesCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0a00d6

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 178
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPicturesCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsPictureSync:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPictureLastBackupTime:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPicturesCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPictureLastBackupTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "key_videos"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideosCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 184
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideosCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 185
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideosCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsVideoSync:Z

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideoLastBackupTime:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideosCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideoLastBackupTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    :cond_2
    return-void
.end method

.method private setDefaultValue()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    if-nez v0, :cond_0

    .line 589
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "setDefaultValue mSettings is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->isMusicSync()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsMusicSync:Z

    .line 594
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->isVideoSync()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsVideoSync:Z

    .line 595
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->isPictureSync()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsPictureSync:Z

    .line 597
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->getVideoLastBackupTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideoLastBackupTime:Ljava/util/Date;

    .line 598
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->getPictureLastBackupTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPictureLastBackupTime:Ljava/util/Date;

    .line 599
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->getUseNetwork()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    .line 601
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->getUpdateSchedule()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    .line 603
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v0}, Lcom/htc/vmm/api/newbay/bean/Settings;->isRemind()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z

    .line 604
    const-string v0, "OOBE_BackupOptionVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read success!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferenceCategoryStatus()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "updatePreferenceCategoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->updateUseNetworksDisplay()V

    .line 195
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->updateUpdateScheduledDisplay()V

    .line 196
    return-void
.end method

.method private updateUpdateScheduledDisplay()V
    .locals 4

    .prologue
    .line 221
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "scheduled_sync"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 223
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUpdateScheduledDisplay, updateSchedule = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 225
    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 227
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    packed-switch v1, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 229
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00cd

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00ce

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00cf

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00d0

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00d1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00d2

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a00d3

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00d4

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateUseNetworksDisplay()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPreferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;

    const-string v2, "connection_type"

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 203
    .local v0, pref:Lcom/htc/preference/HtcPreference;
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUseNetworksDisplay, mUseNetworkSelect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 207
    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 208
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private writeDataBack()V
    .locals 4

    .prologue
    .line 522
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeDataBack settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mMusicCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/vmm/api/newbay/bean/Settings;->setMusicSync(Z)V

    .line 526
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPicturesCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/vmm/api/newbay/bean/Settings;->setPictureSync(Z)V

    .line 527
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideosCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/vmm/api/newbay/bean/Settings;->setVideoSync(Z)V

    .line 528
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    invoke-virtual {v1, v2}, Lcom/htc/vmm/api/newbay/bean/Settings;->setUseNetwork(I)V

    .line 529
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    invoke-virtual {v1, v2}, Lcom/htc/vmm/api/newbay/bean/Settings;->setUpdateSchedule(I)V

    .line 530
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z

    invoke-virtual {v1, v2}, Lcom/htc/vmm/api/newbay/bean/Settings;->setRemind(Z)V

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mServer:Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mSettings:Lcom/htc/vmm/api/newbay/bean/Settings;

    invoke-interface {v1, v2}, Lcom/htc/vmm/service/IVMMForOOBEServiceInterface;->setPreferenceSettings(Lcom/htc/vmm/api/newbay/bean/Settings;)V

    .line 536
    :cond_0
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write setMusicSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mMusicCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write setPictureSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mPicturesCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write setVideoSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mVideosCheckBoxPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write setUseNetwork:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write setUpdateSchedule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v1, "OOBE_BackupOptionVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write setRemind:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_1
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OOBE_BackupOptionVzwActivity"

    const-string v2, "mServer.setPreferenceSettings RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 551
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "finish start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->writeDataBack()V

    .line 553
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 554
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "finish end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "item_idx"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 469
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworksDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 471
    const-string v0, "OOBE_BackupOptionVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick()::mUseNetworksDialog, item_idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    packed-switch p2, :pswitch_data_0

    .line 482
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->updateUseNetworksDisplay()V

    .line 483
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->removeDialog(I)V

    .line 506
    :cond_0
    :goto_1
    return-void

    .line 475
    :pswitch_0
    iput v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    goto :goto_0

    .line 478
    :pswitch_1
    iput v5, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworkSelect:I

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateScheduleDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 487
    const-string v0, "OOBE_BackupOptionVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick()::mUpdateScheduleDialog, item_idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    packed-switch p2, :pswitch_data_1

    .line 503
    :goto_2
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->updateUpdateScheduledDisplay()V

    .line 504
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->removeDialog(I)V

    goto :goto_1

    .line 491
    :pswitch_2
    iput v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    goto :goto_2

    .line 494
    :pswitch_3
    iput v4, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    goto :goto_2

    .line 497
    :pswitch_4
    iput v5, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    goto :goto_2

    .line 500
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateSchedule:I

    goto :goto_2

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 488
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 513
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->setResult(I)V

    .line 514
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->finish()V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x7f0d0009
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 122
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->initialize()V

    .line 124
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 112
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->initialize()V

    .line 115
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->setDefaultValue()V

    .line 116
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->onCreatePreferences()V

    .line 117
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 398
    const-string v0, "OOBE_BackupOptionVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    packed-switch p1, :pswitch_data_0

    .line 409
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 402
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->createUseNetworkDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworksDialog:Landroid/app/Dialog;

    .line 403
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUseNetworksDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 406
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->createUpdateScheduleDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateScheduleDialog:Landroid/app/Dialog;

    .line 407
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mUpdateScheduleDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 630
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 573
    const-string v0, "OOBE_BackupOptionVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sparse-switch p1, :sswitch_data_0

    .line 582
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 580
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 575
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 560
    const-string v0, "OOBE_BackupOptionVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    packed-switch p1, :pswitch_data_0

    .line 567
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 564
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0009

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 623
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 624
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 416
    const-string v0, "OOBE_BackupOptionVzwActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick(), screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connection_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->mIsRemind:Z

    if-eqz v0, :cond_1

    .line 422
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->createRemindDialog()V

    .line 432
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreferenceActivity;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    return v0

    .line 425
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->showDialog(I)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduled_sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 609
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 610
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->setDefaultValue()V

    .line 612
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/BackupOptionVzwActivity;->updatePreferenceCategoryStatus()V

    .line 613
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 617
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStart()V

    .line 618
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 635
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 636
    const-string v0, "OOBE_BackupOptionVzwActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void
.end method
