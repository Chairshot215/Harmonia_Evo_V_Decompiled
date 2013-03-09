.class public Lcom/android/phone/HtcMCCallCardItem;
.super Landroid/widget/RelativeLayout;
.source "HtcMCCallCardItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HtcMCCallCardItem$1;,
        Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;,
        Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;,
        Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "HtcMCCallCardItem"


# instance fields
.field private mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

.field private mActionView:Landroid/widget/ImageView;

.field private mConnection:Lcom/android/internal/telephony/Connection;

.field private mIconView:Landroid/widget/ImageView;

.field private mNameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

.field private mNumber:Ljava/lang/String;

.field private mParent:Lcom/android/phone/HtcMCCallCard;

.field private mPersonId:J

.field private mRecordNum:J

.field private mUsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    sget-object v0, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->NONE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    iput-object v0, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcMCCallCardItem;->setUsed(Z)V

    .line 110
    return-void
.end method

.method private appendCityId(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "ci"
    .parameter "number"

    .prologue
    .line 643
    move-object v2, p2

    .line 645
    .local v2, result:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 646
    .local v0, cidInfo:Lcom/android/phone/CityIdInfo;
    if-nez v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCardItem;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/android/phone/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/Object;Z)Lcom/android/phone/CityIdInfo;

    .line 648
    invoke-static {p1}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Lcom/android/internal/telephony/CallerInfo;)Lcom/android/phone/CityIdInfo;

    move-result-object v0

    .line 651
    :cond_0
    if-eqz v0, :cond_1

    .line 652
    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/android/phone/CityIdInfo;->getCityIdDisplay(Landroid/widget/TextView;Lcom/htc/util/phone/CityIdInfo;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, cityId:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 655
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 662
    .end local v1           #cityId:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v2
.end method

.method private static getAddOrInsertIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "number"

    .prologue
    .line 610
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConferenceControlDialog(Z)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 15
    .parameter "canSeparate"

    .prologue
    .line 508
    const-string v1, "HtcMCCallCardItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create conference dialog: userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v10

    .line 512
    .local v10, context:Lcom/android/phone/InCallScreen;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v8, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    .line 516
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    iget-object v14, v9, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 517
    .local v14, name:Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-wide v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mRecordNum:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    :cond_0
    const/4 v12, 0x1

    .line 519
    .local v12, isContact:Z
    :goto_0
    if-eqz v12, :cond_4

    .line 520
    invoke-virtual {v8, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 527
    :goto_1
    const/4 v7, 0x1

    .line 529
    .local v7, actionNumber:I
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :goto_2
    add-int/2addr v7, v1

    .line 531
    if-eqz v12, :cond_6

    const/4 v1, 0x1

    :goto_3
    add-int/2addr v7, v1

    .line 534
    new-instance v0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    iget-wide v3, p0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    iget-wide v5, p0, Lcom/android/phone/HtcMCCallCardItem;->mRecordNum:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;-><init>(Lcom/android/phone/HtcMCCallCardItem;Lcom/android/internal/telephony/Connection;JJ)V

    .line 536
    .local v0, actionListener:Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;
    new-array v13, v7, [Ljava/lang/CharSequence;

    .line 537
    .local v13, itemsLabel:[Ljava/lang/CharSequence;
    const/4 v11, 0x0

    .line 538
    .local v11, index:I
    if-eqz p1, :cond_1

    .line 539
    const v1, 0x7f0e002b

    invoke-virtual {v10, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v13, v11

    .line 540
    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    invoke-virtual {v0, v1, v11}, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->setActionAt(Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;I)V

    .line 541
    add-int/lit8 v11, v11, 0x1

    .line 544
    :cond_1
    if-eqz v12, :cond_2

    .line 545
    const v1, 0x7f0e002c

    invoke-virtual {v10, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v13, v11

    .line 546
    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->VIEW:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    invoke-virtual {v0, v1, v11}, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->setActionAt(Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;I)V

    .line 547
    add-int/lit8 v11, v11, 0x1

    .line 550
    :cond_2
    const v1, 0x7f0e002d

    invoke-virtual {v10, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v13, v11

    .line 551
    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->FINISH:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    invoke-virtual {v0, v1, v11}, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->setActionAt(Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;I)V

    .line 553
    invoke-virtual {v8, v13, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 555
    return-object v8

    .line 517
    .end local v0           #actionListener:Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;
    .end local v7           #actionNumber:I
    .end local v11           #index:I
    .end local v12           #isContact:Z
    .end local v13           #itemsLabel:[Ljava/lang/CharSequence;
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 523
    .restart local v12       #isContact:Z
    :cond_4
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v10, v1}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_1

    .line 529
    .restart local v7       #actionNumber:I
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 531
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private getNumberWidth()I
    .locals 2

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCardItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initAssets(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 128
    return-void
.end method

.method private initIfNecessary(Z)V
    .locals 5
    .parameter "isActive"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mIconView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 309
    const v1, 0x202004c

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcMCCallCardItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mIconView:Landroid/widget/ImageView;

    .line 310
    const v1, 0x7f0800e9

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcMCCallCardItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mNameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    .line 312
    const v1, 0x7f0800ea

    invoke-virtual {p0, v1}, Lcom/android/phone/HtcMCCallCardItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    .line 314
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    invoke-static {v1, p1, p0}, Lcom/android/phone/HtcMCCallCardItem;->updateClickListener(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 319
    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {p0, v1, p0}, Lcom/android/phone/HtcMCCallCardItem;->updateClickListener(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 320
    if-nez p1, :cond_2

    :goto_1
    invoke-static {p0, v2, p0}, Lcom/android/phone/HtcMCCallCardItem;->updateTouchListener(Landroid/view/View;ZLandroid/view/View$OnTouchListener;)V

    .line 321
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v0

    .line 322
    .local v0, inCallScreen:Lcom/android/phone/InCallScreen;
    return-void

    .end local v0           #inCallScreen:Lcom/android/phone/InCallScreen;
    :cond_1
    move v1, v3

    .line 319
    goto :goto_0

    :cond_2
    move v2, v3

    .line 320
    goto :goto_1
.end method

.method private updateActionIcon(Z)V
    .locals 4
    .parameter "isActive"

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 358
    :cond_0
    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$1;->$SwitchMap$com$android$phone$HtcMCCallCardItem$MCItemActionMode:[I

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    invoke-virtual {v2}, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 370
    sget-object v1, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->ADD_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    if-ne v1, v2, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    :goto_1
    const-string v1, "common_button_small"

    const-string v2, "drawable"

    invoke-static {v1, v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, resid:I
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 380
    :goto_2
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    invoke-static {v1, p1, p0}, Lcom/android/phone/HtcMCCallCardItem;->updateClickListener(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 361
    .end local v0           #resid:I
    :pswitch_0
    const-string v1, "common_more_view"

    const-string v2, "drawable"

    invoke-static {v1, v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 362
    .restart local v0       #resid:I
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 363
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 373
    .end local v0           #resid:I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    const v2, 0x7f020094

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static updateClickListener(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "view"
    .parameter "isActive"
    .parameter "listener"

    .prologue
    .line 386
    if-nez p0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_0
    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private static updateTouchListener(Landroid/view/View;ZLandroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "view"
    .parameter "isActive"
    .parameter "listener"

    .prologue
    .line 400
    if-nez p0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 404
    :cond_0
    if-eqz p1, :cond_1

    .line 405
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 638
    iput-object v0, p0, Lcom/android/phone/HtcMCCallCardItem;->mParent:Lcom/android/phone/HtcMCCallCard;

    .line 639
    return-void
.end method

.method getPersonId()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    return-wide v0
.end method

.method isUsed()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/phone/HtcMCCallCardItem;->mUsed:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 416
    .local v6, viewId:I
    iget-object v9, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionView:Landroid/widget/ImageView;

    if-ne p1, v9, :cond_2

    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, actionIntent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 421
    .local v0, actionDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    sget-object v9, Lcom/android/phone/HtcMCCallCardItem$1;->$SwitchMap$com$android$phone$HtcMCCallCardItem$MCItemActionMode:[I

    iget-object v10, p0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    invoke-virtual {v10}, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 442
    :goto_0
    if-eqz v1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCardItem;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 490
    .end local v0           #actionDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #actionIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 423
    .restart local v0       #actionDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v1       #actionIntent:Landroid/content/Intent;
    :pswitch_0
    iget-wide v7, p0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    iget-wide v9, p0, Lcom/android/phone/HtcMCCallCardItem;->mRecordNum:J

    iget-object v11, p0, Lcom/android/phone/HtcMCCallCardItem;->mNumber:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/util/contacts/PhoneUtils;->getViewContactIntent(JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 426
    goto :goto_0

    .line 428
    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/HtcMCCallCardItem;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/phone/HtcMCCallCardItem;->getAddOrInsertIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 430
    goto :goto_0

    .line 432
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/phone/HtcMCCallCardItem;->getConferenceControlDialog(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 433
    goto :goto_0

    .line 435
    :pswitch_3
    invoke-direct {p0, v8}, Lcom/android/phone/HtcMCCallCardItem;->getConferenceControlDialog(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 436
    goto :goto_0

    .line 449
    :cond_1
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_1

    .line 453
    .end local v0           #actionDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #actionIntent:Landroid/content/Intent;
    :cond_2
    if-ne p1, p0, :cond_0

    .line 459
    iget-object v9, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v9, :cond_0

    .line 463
    iget-object v9, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 464
    .local v3, currentCall:Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_0

    .line 474
    iget-object v9, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->getPhoneTypeByConnection(Ljava/lang/Object;)I

    move-result v5

    .line 475
    .local v5, phoneType:I
    const/4 v2, 0x0

    .line 476
    .local v2, callIsHolding:Z
    const/4 v9, 0x2

    if-ne v5, v9, :cond_4

    .line 477
    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaCall;

    .end local v3           #currentCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcGetActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eq v9, v10, :cond_3

    move v2, v7

    .line 481
    :goto_2
    if-eqz v2, :cond_0

    .line 483
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 484
    .local v4, otherCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_0

    .line 485
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .end local v4           #otherCall:Lcom/android/internal/telephony/Call;
    :cond_3
    move v2, v8

    .line 477
    goto :goto_2

    .line 479
    .restart local v3       #currentCall:Lcom/android/internal/telephony/Call;
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_5

    move v2, v7

    :goto_3
    goto :goto_2

    :cond_5
    move v2, v8

    goto :goto_3

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    if-ne p1, p0, :cond_0

    .line 494
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 495
    .local v0, action:I
    const-string v1, "conf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch, action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-nez v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mParent:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v1, v5}, Lcom/android/phone/HtcMCCallCard;->setHoldCallPressed(Z)V

    .line 503
    .end local v0           #action:I
    :cond_0
    :goto_0
    return v4

    .line 498
    .restart local v0       #action:I
    :cond_1
    if-eq v5, v0, :cond_2

    const/4 v1, 0x4

    if-eq v1, v0, :cond_2

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCardItem;->mParent:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v1, v4}, Lcom/android/phone/HtcMCCallCard;->setHoldCallPressed(Z)V

    goto :goto_0
.end method

.method setParent(Lcom/android/phone/HtcMCCallCard;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/phone/HtcMCCallCardItem;->mParent:Lcom/android/phone/HtcMCCallCard;

    .line 634
    return-void
.end method

.method setUsed(Z)V
    .locals 1
    .parameter "inUse"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/phone/HtcMCCallCardItem;->mUsed:Z

    .line 336
    iget-boolean v0, p0, Lcom/android/phone/HtcMCCallCardItem;->mUsed:Z

    if-nez v0, :cond_0

    .line 337
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcMCCallCardItem;->setVisibility(I)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/HtcMCCallCardItem;->setVisibility(I)V

    goto :goto_0
.end method

.method updateByConnection(Lcom/android/internal/telephony/Connection;ZZ)V
    .locals 19
    .parameter "connection"
    .parameter "isConference"
    .parameter "canSeparate"

    .prologue
    .line 138
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    if-nez v14, :cond_0

    .line 141
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/HtcMCCallCardItem;->setUsed(Z)V

    .line 305
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/HtcMCCallCardItem;->setUsed(Z)V

    .line 146
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/HtcMCCallCardItem;->setVisibility(I)V

    .line 154
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getPhoneTypeByConnection(Ljava/lang/Object;)I

    move-result v12

    .line 155
    .local v12, phoneType:I
    const/4 v7, 0x0

    .line 156
    .local v7, isActive:Z
    const/4 v14, 0x2

    if-ne v12, v14, :cond_7

    .line 157
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 158
    .local v2, app:Lcom/android/phone/PhoneApp;
    if-eqz v2, :cond_5

    iget-object v14, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v14}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v14

    sget-object v15, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v14, v15, :cond_5

    .line 160
    const/4 v7, 0x1

    .line 172
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/HtcMCCallCardItem;->initIfNecessary(Z)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/HtcMCCallCardItem;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/HtcMCCallCardItem;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v14, v15}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 177
    .local v4, ci:Lcom/android/internal/telephony/CallerInfo;
    const/4 v3, 0x0

    .line 178
    .local v3, callerName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v9, numberString:Ljava/lang/StringBuilder;
    if-eqz v4, :cond_f

    .line 181
    iget-wide v14, v4, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    .line 182
    iget-wide v14, v4, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mRecordNum:J

    .line 184
    const-string v14, "HtcMCCallCardItem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " update for person id "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v14, "HtcMCCallCardItem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " update for person record number "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/HtcMCCallCardItem;->mRecordNum:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 189
    iget-object v14, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNumber:Ljava/lang/String;

    .line 191
    sget-boolean v14, Lcom/android/phone/CityIdInfo;->ENABLED:Z

    if-eqz v14, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/phone/HtcMCCallCardItem;->appendCityId(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNumber:Ljava/lang/String;

    .line 195
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/HtcMCCallCardItem;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v3

    .line 206
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNumber:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_3
    iget-boolean v14, v4, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v14, :cond_c

    iget-object v14, v4, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_c

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mIconView:Landroid/widget/ImageView;

    iget-object v15, v4, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :goto_3
    const-string v14, "HtcMCCallCardItem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " person name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", number: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 242
    const/4 v3, 0x0

    .line 245
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-nez v14, :cond_10

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    const-string v15, ""

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 264
    :goto_4
    const/4 v9, 0x0

    .line 267
    if-eqz p2, :cond_14

    .line 270
    const/4 v14, 0x2

    if-ne v12, v14, :cond_12

    .line 271
    sget-object v14, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->VIEW_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    .line 282
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 283
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getPhoneByConnection(Ljava/lang/Object;)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 285
    .local v11, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v11, :cond_4

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "com.movial.ipphone.IPPhone"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 287
    sget-object v14, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->VIEW_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v11           #phone:Lcom/android/internal/telephony/Phone;
    :cond_4
    :goto_6
    if-nez v7, :cond_15

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/HtcMCCallCardItem;->setClickable(Z)V

    .line 304
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/HtcMCCallCardItem;->updateActionIcon(Z)V

    goto/16 :goto_0

    .line 162
    .end local v3           #callerName:Ljava/lang/String;
    .end local v4           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v9           #numberString:Ljava/lang/StringBuilder;
    .restart local v2       #app:Lcom/android/phone/PhoneApp;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcGetActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v14, v0, :cond_6

    const/4 v7, 0x1

    :goto_8
    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_8

    .line 164
    .end local v2           #app:Lcom/android/phone/PhoneApp;
    :cond_7
    const/4 v14, 0x1

    if-eq v12, v14, :cond_8

    const/4 v14, 0x4

    if-eq v12, v14, :cond_8

    const/4 v14, 0x3

    if-ne v12, v14, :cond_a

    .line 168
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v14, v15, :cond_9

    const/4 v7, 0x1

    :goto_9
    goto/16 :goto_1

    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    .line 170
    :cond_a
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected phone type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 198
    .restart local v3       #callerName:Ljava/lang/String;
    .restart local v4       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v9       #numberString:Ljava/lang/StringBuilder;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/HtcMCCallCardItem;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v4, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v14, v15}, Lcom/android/phone/PhoneUtils;->getPhoneNumberTypeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, label:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 201
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v14, " "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 214
    .end local v8           #label:Ljava/lang/String;
    :cond_c
    iget v14, v4, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v14, :cond_d

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mIconView:Landroid/widget/ImageView;

    iget v15, v4, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto/16 :goto_3

    .line 218
    :cond_d
    const-wide/16 v14, 0x0

    iget-wide v0, v4, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_e

    const v13, 0x208025a

    .line 222
    .local v13, placeHolderId:I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/HtcMCCallCardItem;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/HtcMCCallCardItem;->mIconView:Landroid/widget/ImageView;

    sget-object v16, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/phone/HtcMCCallCardItem;->mPersonId:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v14, v15, v0, v13}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_3

    .line 218
    .end local v13           #placeHolderId:I
    :cond_e
    const v13, 0x2080846

    goto :goto_a

    .line 233
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/HtcMCCallCardItem;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/phone/PhoneUtils;->getDisplayNameIfNumberEmpty(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 248
    :cond_10
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, displayNumber:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_11

    .line 250
    sget-boolean v14, Lcom/android/phone/CityIdInfo;->ENABLED:Z

    if-eqz v14, :cond_11

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 252
    .local v10, numberView:Landroid/widget/TextView;
    if-eqz v10, :cond_11

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/HtcMCCallCardItem;->getNumberWidth()I

    move-result v15

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-static {v14, v5, v15, v0}, Lcom/android/phone/CityIdInfo;->ellipsizeStringBeforeSeparator(Landroid/graphics/Paint;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    .end local v10           #numberView:Landroid/widget/TextView;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mNameAndNumber:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v14, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 275
    .end local v5           #displayNumber:Ljava/lang/String;
    :cond_12
    if-eqz p3, :cond_13

    .line 276
    sget-object v14, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->CONFERENCE_OPTION_CAN_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    goto/16 :goto_5

    .line 278
    :cond_13
    sget-object v14, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->CONFERENCE_OPTION_NON_SEPARATE:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    goto/16 :goto_5

    .line 289
    .restart local v11       #phone:Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    const-string v14, "HtcMCCallCardItem"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 293
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #phone:Lcom/android/internal/telephony/Phone;
    :cond_14
    sget-object v14, Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;->VIEW_CONTACT:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/HtcMCCallCardItem;->mActionMode:Lcom/android/phone/HtcMCCallCardItem$MCItemActionMode;

    goto/16 :goto_6

    .line 303
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_7
.end method
