.class final Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LabelSettingsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/LabelSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/LabelSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;-><init>(Lcom/google/android/gm/LabelSettingsFragment;)V

    return-void
.end method

.method private getVibrateValueDisplayString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 444
    const/4 v0, 0x2

    .line 445
    .local v0, currentIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/LabelSettingsFragment;->access$100(Lcom/google/android/gm/LabelSettingsFragment;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/LabelSettingsFragment;->access$100(Lcom/google/android/gm/LabelSettingsFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/gm/LabelSettingsFragment;->access$1100(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    move v0, v1

    .line 452
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingDisplayValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/LabelSettingsFragment;->access$1300(Lcom/google/android/gm/LabelSettingsFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    return-object v2

    .line 445
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/gm/LabelSettingsFragment;->access$300(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/google/android/gm/LabelSettingsFragment$Pair;
    .locals 4
    .parameter "position"

    .prologue
    .line 360
    if-nez p1, :cond_0

    .line 361
    new-instance v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    sget v2, Lcom/google/android/gm/persistence/Persistence;->LABEL_SYNCHRONIZATION:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/LabelSettingsFragment$Pair;-><init>(Lcom/google/android/gm/LabelSettingsFragment;ILjava/lang/String;)V

    .line 363
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mAttributeList:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/gm/LabelSettingsFragment;->access$300(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelSettingsFragment$Pair;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->getItem(I)Lcom/google/android/gm/LabelSettingsFragment$Pair;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->getItem(I)Lcom/google/android/gm/LabelSettingsFragment$Pair;

    move-result-object v4

    .line 377
    .local v4, item:Lcom/google/android/gm/LabelSettingsFragment$Pair;
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    if-le v11, v12, :cond_5

    const v5, 0x7f040036

    .line 379
    .local v5, layout:I
    :goto_0
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$400(Lcom/google/android/gm/LabelSettingsFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 380
    .local v10, view:Landroid/view/View;
    const v11, 0x7f0f00a2

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 381
    .local v9, title:Landroid/widget/TextView;
    const v11, 0x7f0f00a0

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 382
    .local v1, description:Landroid/widget/TextView;
    const v11, 0x7f0f00a1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 385
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    if-eq v11, v12, :cond_0

    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    if-eq v11, v12, :cond_0

    .line 387
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 390
    :cond_0
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$600(Lcom/google/android/gm/LabelSettingsFragment;)Lcom/google/android/gm/LabelSettingsObservable;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gm/LabelSettingsObservable;->getIncludedLabels()Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/gm/LabelSettingsFragment;->access$500(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 391
    .local v6, syncAll:Z
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$600(Lcom/google/android/gm/LabelSettingsFragment;)Lcom/google/android/gm/LabelSettingsObservable;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gm/LabelSettingsObservable;->getPartialLabels()Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mLabel:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/gm/LabelSettingsFragment;->access$500(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 392
    .local v8, syncPartial:Z
    if-nez v6, :cond_6

    if-nez v8, :cond_6

    const/4 v7, 0x1

    .line 395
    .local v7, syncNone:Z
    :goto_1
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_SYNCHRONIZATION:I

    if-ne v11, v12, :cond_9

    .line 396
    const v11, 0x7f0c0161

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 398
    if-eqz v6, :cond_7

    .line 399
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$700(Lcom/google/android/gm/LabelSettingsFragment;)Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0162

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, descriptionText:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    .end local v2           #descriptionText:Ljava/lang/String;
    :cond_1
    :goto_3
    const/4 v3, 0x1

    .line 427
    .local v3, enabled:Z
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_SYNCHRONIZATION:I

    if-le v11, v12, :cond_2

    if-eqz v7, :cond_2

    .line 428
    const/4 v3, 0x0

    .line 430
    :cond_2
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    if-le v11, v12, :cond_3

    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$800(Lcom/google/android/gm/LabelSettingsFragment;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 431
    const/4 v3, 0x0

    .line 433
    :cond_3
    if-nez v3, :cond_4

    .line 434
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 435
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 436
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 440
    :cond_4
    return-object v10

    .line 377
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v1           #description:Landroid/widget/TextView;
    .end local v3           #enabled:Z
    .end local v5           #layout:I
    .end local v6           #syncAll:Z
    .end local v7           #syncNone:Z
    .end local v8           #syncPartial:Z
    .end local v9           #title:Landroid/widget/TextView;
    .end local v10           #view:Landroid/view/View;
    :cond_5
    const v5, 0x7f04003a

    goto/16 :goto_0

    .line 392
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    .restart local v1       #description:Landroid/widget/TextView;
    .restart local v5       #layout:I
    .restart local v6       #syncAll:Z
    .restart local v8       #syncPartial:Z
    .restart local v9       #title:Landroid/widget/TextView;
    .restart local v10       #view:Landroid/view/View;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 400
    .restart local v7       #syncNone:Z
    :cond_7
    if-eqz v8, :cond_8

    .line 401
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$400(Lcom/google/android/gm/LabelSettingsFragment;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f10001c

    iget-object v13, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;
    invoke-static {v13}, Lcom/google/android/gm/LabelSettingsFragment;->access$600(Lcom/google/android/gm/LabelSettingsFragment;)Lcom/google/android/gm/LabelSettingsObservable;

    move-result-object v13

    invoke-interface {v13}, Lcom/google/android/gm/LabelSettingsObservable;->getNumberOfSyncDays()I

    move-result v13

    invoke-static {v11, v12, v13}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #descriptionText:Ljava/lang/String;
    goto :goto_2

    .line 405
    .end local v2           #descriptionText:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mResources:Landroid/content/res/Resources;
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$700(Lcom/google/android/gm/LabelSettingsFragment;)Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0163

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #descriptionText:Ljava/lang/String;
    goto :goto_2

    .line 408
    .end local v2           #descriptionText:Ljava/lang/String;
    :cond_9
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ON:I

    if-ne v11, v12, :cond_a

    .line 409
    const v11, 0x7f0c00ab

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 410
    const v11, 0x7f0c00ad

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V

    .line 411
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mIsOn:Z
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$800(Lcom/google/android/gm/LabelSettingsFragment;)Z

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 412
    :cond_a
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_RINGTONE:I

    if-ne v11, v12, :cond_b

    .line 413
    const v11, 0x7f0c00d3

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    iget-object v12, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    iget-object v12, v12, Lcom/google/android/gm/LabelSettingsFragment;->mRingtone:Landroid/media/Ringtone;

    #calls: Lcom/google/android/gm/LabelSettingsFragment;->getRingtoneString(Landroid/media/Ringtone;)Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/google/android/gm/LabelSettingsFragment;->access$900(Lcom/google/android/gm/LabelSettingsFragment;Landroid/media/Ringtone;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 415
    :cond_b
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mCanVibrate:Z
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$1000(Lcom/google/android/gm/LabelSettingsFragment;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_VIBRATE:I

    if-ne v11, v12, :cond_c

    .line 416
    const v11, 0x7f0c00d2

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 418
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mVibrate:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$1100(Lcom/google/android/gm/LabelSettingsFragment;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->getVibrateValueDisplayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 419
    :cond_c
    iget v11, v4, Lcom/google/android/gm/LabelSettingsFragment$Pair;->key:I

    sget v12, Lcom/google/android/gm/persistence/Persistence;->LABEL_NOTIFICATION_ONCE:I

    if-ne v11, v12, :cond_1

    .line 420
    const v11, 0x7f0c00ae

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 421
    const v11, 0x7f0c00af

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v11, p0, Lcom/google/android/gm/LabelSettingsFragment$LabelSettingsAdapter;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mNotifyOnce:Z
    invoke-static {v11}, Lcom/google/android/gm/LabelSettingsFragment;->access$1200(Lcom/google/android/gm/LabelSettingsFragment;)Z

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3
.end method
