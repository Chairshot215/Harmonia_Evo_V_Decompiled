.class public Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;
.super Landroid/app/Activity;
.source "InsertSIMCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$1;,
        Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DATA_STORE_CURRENT_GROUP_ID:Ljava/lang/String; = "currentGroupId"

.field private static final DATA_STORE_CURRENT_SIM_ANIM_FRAME:Ljava/lang/String; = "currentSIMAnimationFrame"

.field private static final IMAGE_ACE_FRAME_NUMBER:I = 0x8

.field private static final IMAGE_FRAME_NUMBER:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_GROUP_NUMBER:I = 0x0

.field private static final IMAGE_SHOW_DURATION:I = 0x12c

.field private static final MESSAGE_CHANGE_IMAGE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "OOBE_InsertSIMCardActivity"

.field private static final marSIMCardImagetSet:[I

.field private static final marSIMSubTitleId:[I

.field private static final marSIMSubTitleIdForACE:[I


# instance fields
.field private mFrameNumber:I

.field private mHandler:Landroid/os/Handler;

.field private mInsertSIMAnimImage:Landroid/widget/ImageView;

.field private mLaunchByIcon:Z

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSIMSubTitle:[I

.field private mShowSubtitle:Landroid/widget/TextView;

.field private marSIMCardImageDrawable:[Landroid/graphics/drawable/Drawable;

.field private mbBackFinish:Z

.field private mbCheckedByAuto:Z

.field private mbPhoneFunc:Z

.field private mbShowNextButton:Z

.field private mnCurAnimatedId:I

.field private mnCurGroupId:I

.field private mnImageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImagetSet:[I

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMSubTitleId:[I

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMSubTitleIdForACE:[I

    .line 166
    sget-object v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImagetSet:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x6

    sput v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->IMAGE_GROUP_NUMBER:I

    return-void

    .line 115
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x23t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x2at 0x0t 0x2t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 146
    :array_1
    .array-data 0x4
        0x7t 0x0t 0xat 0x7ft
        0x8t 0x0t 0xat 0x7ft
        0x9t 0x0t 0xat 0x7ft
        0xat 0x0t 0xat 0x7ft
    .end array-data

    .line 153
    :array_2
    .array-data 0x4
        0x7t 0x0t 0xat 0x7ft
        0x9t 0x0t 0xat 0x7ft
        0xbt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mInsertSIMAnimImage:Landroid/widget/ImageView;

    .line 89
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 91
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$MyHandler;-><init>(Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity$1;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    .line 95
    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mShowSubtitle:Landroid/widget/TextView;

    .line 105
    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    .line 107
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbCheckedByAuto:Z

    .line 108
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbBackFinish:Z

    .line 109
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mLaunchByIcon:Z

    .line 110
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbShowNextButton:Z

    .line 111
    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbPhoneFunc:Z

    .line 160
    sget-object v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImagetSet:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnImageSize:I

    .line 161
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mFrameNumber:I

    .line 162
    sget-object v0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMSubTitleId:[I

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mSIMSubTitle:[I

    .line 164
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnImageSize:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImageDrawable:[Landroid/graphics/drawable/Drawable;

    .line 575
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->changeInsertSIMImage()V

    return-void
.end method

.method private changeInsertSIMImage()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 587
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mInsertSIMAnimImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 590
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnImageSize:I

    if-ge v0, v1, :cond_1

    .line 595
    :goto_0
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->updateAnimationImage(I)V

    .line 596
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->updateImageIndicator()V

    .line 597
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 600
    :cond_0
    return-void

    .line 592
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    goto :goto_0
.end method

.method private getFinalString(I)Ljava/lang/String;
    .locals 3
    .parameter "str_id"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, string:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isOpenChannelWorldPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "OOBE_InsertSIMCardActivity"

    const-string v2, "isOpenChannelWorldPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v1, "SIM"

    const-string v2, "UIM/SIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/OOBE_Project;->isCT:Z

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "OOBE_InsertSIMCardActivity"

    const-string v2, "CT Project"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v1, "SIM"

    const-string v2, "UIM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGroupId(I)I
    .locals 1
    .parameter "nCheckedId"

    .prologue
    .line 645
    const/4 v0, -0x1

    .line 646
    .local v0, nGroupId:I
    packed-switch p1, :pswitch_data_0

    .line 660
    :goto_0
    return v0

    .line 648
    :pswitch_0
    const/4 v0, 0x0

    .line 649
    goto :goto_0

    .line 651
    :pswitch_1
    const/4 v0, 0x1

    .line 652
    goto :goto_0

    .line 654
    :pswitch_2
    const/4 v0, 0x2

    .line 655
    goto :goto_0

    .line 657
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0024
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isDeviceNoBattery()Z
    .locals 1

    .prologue
    .line 677
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isAce:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isFlyer:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpress:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isExpressKT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isBliss:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCheckedChangeListener()V
    .locals 6

    .prologue
    const v5, 0x7f0d0027

    .line 513
    const v4, 0x7f0d0024

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 514
    .local v0, radioBtn1:Landroid/widget/RadioButton;
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 516
    const v4, 0x7f0d0025

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 517
    .local v1, radioBtn2:Landroid/widget/RadioButton;
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 519
    const v4, 0x7f0d0026

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 520
    .local v2, radioBtn3:Landroid/widget/RadioButton;
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 522
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->isDeviceNoBattery()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 525
    .local v3, radioBtn4:Landroid/widget/RadioButton;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 532
    :goto_0
    return-void

    .line 529
    .end local v3           #radioBtn4:Landroid/widget/RadioButton;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 530
    .restart local v3       #radioBtn4:Landroid/widget/RadioButton;
    invoke-virtual {v3, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private setClickListener()V
    .locals 4

    .prologue
    .line 394
    const v2, 0x7f0d0029

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 395
    .local v0, btnEmergencyCall:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbPhoneFunc:Z

    if-nez v2, :cond_0

    .line 398
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbBackFinish:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 400
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 410
    :cond_0
    :goto_0
    const v2, 0x7f0d002a

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 411
    .local v1, btnSkip:Landroid/widget/Button;
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbShowNextButton:Z

    if-eqz v2, :cond_2

    .line 413
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    :goto_1
    return-void

    .line 404
    .end local v1           #btnSkip:Landroid/widget/Button;
    :cond_1
    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 417
    .restart local v1       #btnSkip:Landroid/widget/Button;
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private setFocusView()V
    .locals 2

    .prologue
    .line 507
    const v1, 0x7f0d0024

    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 508
    .local v0, radioBtn1:Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/widget/RadioButton;->requestFocus()Z

    .line 509
    return-void
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 378
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 379
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 380
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 381
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 390
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 386
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 387
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showInsertSIMAnimation()V
    .locals 6

    .prologue
    .line 468
    const-string v2, "OOBE_InsertSIMCardActivity"

    const-string v3, "showInsertSIMAnimation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setContentView(I)V

    .line 472
    const/high16 v2, 0x7f0d

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 473
    .local v1, title:Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbPhoneFunc:Z

    if-nez v2, :cond_2

    .line 475
    const v2, 0x7f0a0006

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getFinalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_0
    const v2, 0x7f0d003f

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 481
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 482
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 483
    const/4 v2, 0x4

    invoke-static {p0, v0, v2}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 485
    const v2, 0x7f0d0028

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mShowSubtitle:Landroid/widget/TextView;

    .line 486
    const v2, 0x7f0d0022

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mInsertSIMAnimImage:Landroid/widget/ImageView;

    .line 488
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setClickListener()V

    .line 490
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setFocusView()V

    .line 492
    const v2, 0x7f0d0023

    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 493
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setCheckedChangeListener()V

    .line 496
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnImageSize:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    if-gez v2, :cond_1

    .line 498
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    .line 500
    :cond_1
    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->updateAnimationImage(I)V

    .line 501
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mShowSubtitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mSIMSubTitle:[I

    iget v4, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getFinalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 504
    return-void

    .line 477
    .end local v0           #layout:Landroid/widget/LinearLayout;
    :cond_2
    const v2, 0x7f0a0005

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getFinalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAnimationImage(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImageDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImageDrawable:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImagetSet:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, p1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mInsertSIMAnimImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMCardImageDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    return-void
.end method

.method private updateImageIndicator()V
    .locals 4

    .prologue
    .line 339
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    .line 340
    .local v0, nPreGroupId:I
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mFrameNumber:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    .line 353
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    if-le v1, v2, :cond_0

    .line 354
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbCheckedByAuto:Z

    .line 357
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    packed-switch v1, :pswitch_data_0

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mShowSubtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mSIMSubTitle:[I

    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getFinalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_0
    return-void

    .line 359
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0d0024

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0d0025

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0d0026

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 368
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSIMImageAfterClickRadio()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 432
    const-string v0, "OOBE_InsertSIMCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSIMImageAfterClickRadio mnCurAnimatedId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mnCurGroupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->updateAnimationImage(I)V

    .line 435
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mShowSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mSIMSubTitle:[I

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getFinalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 439
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 302
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 672
    const-string v0, "OOBE_InsertSIMCardActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 674
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 627
    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 628
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getGroupId(I)I

    move-result v0

    .line 629
    .local v0, nGroupId:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 630
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbCheckedByAuto:Z

    if-nez v1, :cond_1

    .line 631
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mFrameNumber:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    .line 632
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    .line 635
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->updateSIMImageAfterClickRadio()V

    .line 642
    .end local v0           #nGroupId:I
    :cond_0
    :goto_0
    return-void

    .line 637
    .restart local v0       #nGroupId:I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbCheckedByAuto:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbPhoneFunc:Z

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setResult(I)V

    .line 315
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->finish()V

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->showEmergencyDial()V

    goto :goto_0

    .line 322
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setResult(I)V

    .line 323
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->finish()V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x7f0d0029
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 220
    const-string v0, "OOBE_InsertSIMCardActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mInsertSIMAnimImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 223
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    .line 224
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    .line 225
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->showInsertSIMAnimation()V

    .line 227
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 200
    const-string v1, "OOBE_InsertSIMCardActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->requestWindowFeature(I)Z

    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->isDeviceNoBattery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/16 v1, 0x8

    iput v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mFrameNumber:I

    .line 206
    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->marSIMSubTitleIdForACE:[I

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mSIMSubTitle:[I

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 211
    const-string v1, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbBackFinish:Z

    .line 212
    const-string v1, "LaunchByIcon"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mLaunchByIcon:Z

    .line 213
    const-string v1, "ShowNextButton"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbShowNextButton:Z

    .line 214
    const-string v1, "PhoneFunction"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbPhoneFunc:Z

    .line 216
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 266
    const-string v0, "OOBE_InsertSIMCardActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 550
    const-string v1, "OOBE_InsertSIMCardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    sparse-switch p1, :sswitch_data_0

    .line 571
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 554
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mbBackFinish:Z

    if-nez v1, :cond_1

    .line 555
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setResult(I)V

    .line 556
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 557
    :cond_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mLaunchByIcon:Z

    if-ne v1, v0, :cond_0

    .line 558
    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setResult(I)V

    .line 559
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 568
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->showEmergencyDial()V

    goto :goto_0

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 537
    const-string v0, "OOBE_InsertSIMCardActivity"

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

    .line 538
    packed-switch p1, :pswitch_data_0

    .line 544
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 541
    :pswitch_0
    const v0, 0x7f0d0029

    const v1, 0x7f0d002a

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 259
    const-string v0, "OOBE_InsertSIMCardActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 272
    const-string v0, "currentSIMAnimationFrame"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    .line 273
    const-string v0, "currentGroupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    .line 276
    const-string v0, "OOBE_InsertSIMCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState mnCurAnimatedId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mnCurGroupId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 233
    const-string v0, "OOBE_InsertSIMCardActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mInsertSIMAnimImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->setFocusView()V

    .line 239
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    .line 244
    iput v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    .line 245
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->showInsertSIMAnimation()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 281
    const-string v0, "OOBE_InsertSIMCardActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState mnCurAnimatedId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mnCurGroupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, "currentSIMAnimationFrame"

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurAnimatedId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string v0, "currentGroupId"

    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mnCurGroupId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 252
    const-string v0, "OOBE_InsertSIMCardActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method protected onStartAnimation()V
    .locals 4

    .prologue
    .line 664
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 665
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 291
    const-string v0, "OOBE_InsertSIMCardActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method protected onStopAnimation()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/InsertSIMCardActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    return-void
.end method
