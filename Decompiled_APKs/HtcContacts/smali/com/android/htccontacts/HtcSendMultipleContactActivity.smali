.class public Lcom/android/htccontacts/HtcSendMultipleContactActivity;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "HtcSendMultipleContactActivity.java"


# static fields
.field protected static final REQUEST_SELECT_MULTIPLE_CONTACTS:I = 0xf000

.field private static final TAG:Ljava/lang/String; = "HtcSendMultipleContactActivity"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private mEXTRA_EMAIL:Ljava/lang/String;

.field private mEXTRA_PHONE_NUMBER:Ljava/lang/String;

.field private mIdx:I

.field private mIntent:Landroid/content/Intent;

.field private mSelecteId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVCard0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mAccount:Landroid/accounts/Account;

    .line 40
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mSelecteId:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    .line 43
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mVCard0:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcSendMultipleContactActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->handleSendMultipleContacts(I)V

    return-void
.end method

.method private createVCardIntent()V
    .locals 12

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, composer:Lcom/android/vcard/VCardComposer;
    const-string v6, "_id in ("

    .line 337
    .local v6, selection:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mSelecteId:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 338
    .local v5, selectedSize:I
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mSelecteId:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    add-int/lit8 v9, v5, -0x1

    if-ge v4, v9, :cond_0

    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 338
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    :try_start_0
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 348
    new-instance v1, Lcom/android/vcard/VCardComposer;

    const v9, 0x18000008

    invoke-direct {v1, p0, v9}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;I)V

    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .local v1, composer:Lcom/android/vcard/VCardComposer;
    move-object v0, v1

    .line 354
    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Lcom/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 355
    const-string v9, "HtcSendMultipleContactActivity"

    const-string v10, "VCardComposer init failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 388
    :cond_3
    return-void

    .line 351
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/vcard/VCardComposer;

    sget v9, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {v1, p0, v9}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;I)V

    .end local v0           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #composer:Lcom/android/vcard/VCardComposer;
    move-object v0, v1

    .end local v1           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v0       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_1

    .line 357
    :cond_5
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v7

    .line 358
    .local v7, size:I
    const-string v9, "HtcSendMultipleContactActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Available entities:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_3
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, vcard:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 363
    const-string v9, "HtcSendMultipleContactActivity"

    const-string v10, "VCardComposer createOneEntry failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 384
    .end local v7           #size:I
    .end local v8           #vcard:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_6

    .line 385
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 384
    :cond_6
    throw v9

    .line 366
    .restart local v7       #size:I
    .restart local v8       #vcard:Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-virtual {p0, v8}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->onVcardEntryCreated(Ljava/lang/String;)Z

    .line 368
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->getContactName()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, contactName:Ljava/lang/String;
    if-nez v2, :cond_8

    .line 370
    const v9, 0x7f0a0022

    invoke-virtual {p0, v9}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->replaceInvalidFileChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    const-string v3, "name"

    .line 374
    .local v3, extraName:Ljava/lang/String;
    iget v9, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    if-lez v9, :cond_9

    .line 375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    :cond_9
    iget-object v9, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v9, "HtcSendMultipleContactActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "contactName_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget v9, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private displaySendContactDialog()V
    .locals 12

    .prologue
    const v11, 0x7f0a03ab

    const v10, 0x7f0a03aa

    const v9, 0x7f0a03a9

    const v8, 0x7f0a03a8

    .line 138
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v7, 0x103000c

    invoke-direct {v3, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 139
    .local v3, dialogContext:Landroid/content/Context;
    const-string v7, "layout_inflater"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 143
    .local v4, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$1;

    const v7, 0x2090007

    invoke-direct {v0, p0, p0, v7, v4}, Lcom/android/htccontacts/HtcSendMultipleContactActivity$1;-><init>(Lcom/android/htccontacts/HtcSendMultipleContactActivity;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 158
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-direct {p0, v8}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->isAppExists(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 164
    :goto_0
    invoke-direct {p0, v9}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->isAppExists(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 170
    :goto_1
    iget-object v7, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mSelecteId:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 171
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/vcard/VCardUtils;->isKDDI()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v10}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->isAppExists(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 172
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 177
    :goto_2
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v7

    if-nez v7, :cond_4

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd2

    if-eq v7, v8, :cond_4

    invoke-direct {p0, v11}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->isAppExists(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 178
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 184
    :cond_0
    :goto_3
    new-instance v1, Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity$2;-><init>(Lcom/android/htccontacts/HtcSendMultipleContactActivity;Landroid/widget/ArrayAdapter;)V

    .line 206
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Lcom/android/htccontacts/HtcSendMultipleContactActivity$3;

    invoke-direct {v5, p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity$3;-><init>(Lcom/android/htccontacts/HtcSendMultipleContactActivity;)V

    .line 212
    .local v5, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Lcom/android/htccontacts/HtcSendMultipleContactActivity$4;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity$4;-><init>(Lcom/android/htccontacts/HtcSendMultipleContactActivity;)V

    .line 225
    .local v6, onKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a03ac

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    invoke-virtual {v7, v8, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v0, v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 232
    .local v2, d:Landroid/app/Dialog;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 233
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 234
    return-void

    .line 161
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #d:Landroid/app/Dialog;
    .end local v5           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v6           #onKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    :cond_1
    const-string v7, "HtcSendMultipleContactActivity"

    const-string v8, "BT does not exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    :cond_2
    const-string v7, "HtcSendMultipleContactActivity"

    const-string v8, "Mail does not exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 174
    :cond_3
    const-string v7, "HtcSendMultipleContactActivity"

    const-string v8, "SMS vCard is not enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 180
    :cond_4
    const-string v7, "HtcSendMultipleContactActivity"

    const-string v8, "MMS vCard is not enabled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleSendMultipleContacts(I)V
    .locals 5
    .parameter "resId"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->createVCardIntent()V

    .line 238
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "result_num"

    iget v4, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v2, "HtcSendMultipleContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of created vCard entries:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.EMAIL"

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.PHONE_NUMBER"

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 281
    const-string v2, "HtcSendMultipleContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->finish()V

    .line 288
    return-void

    .line 250
    :pswitch_0
    const-string v2, "HtcSendMultipleContactActivity"

    const-string v3, "Send VCard via BlueTooth"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "com.android.bluetooth"

    const-string v4, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "text/x-vcard"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 256
    :pswitch_1
    const-string v2, "HtcSendMultipleContactActivity"

    const-string v3, "Send VCard via Email"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.ComposeActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "text/x-vCard"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 262
    :pswitch_2
    const-string v2, "HtcSendMultipleContactActivity"

    const-string v3, "Send VCard via SMS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 267
    .local v1, vcard:[B
    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->removePhotoData([B)[B

    move-result-object v1

    .line 268
    if-eqz v1, :cond_2

    .line 269
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "result"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 273
    .end local v1           #vcard:[B
    :pswitch_3
    const-string v2, "HtcSendMultipleContactActivity"

    const-string v3, "Send VCard via MMS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mVCard0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mSelecteId:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "text/x-vCard"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a03a8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isAppExists(I)Z
    .locals 9
    .parameter "resId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, i:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 121
    const-string v6, "HtcSendMultipleContactActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 128
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    move v4, v5

    .line 133
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    return v4

    .line 96
    :pswitch_0
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v6, "com.android.bluetooth"

    const-string v7, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v6, "text/x-vcard"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 101
    :pswitch_1
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v6, "com.htc.android.mail"

    const-string v7, "com.htc.android.mail.ComposeActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v6, "text/x-vCard"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 107
    :pswitch_2
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd2

    if-eq v6, v7, :cond_0

    .line 110
    const-string v6, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v6, "text/plain"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 114
    :pswitch_3
    const-string v6, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mVCard0:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.android.contacts/contacts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mSelecteId:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 117
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    const-string v6, "text/x-vCard"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x7f0a03a8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePhotoData([B)[B
    .locals 8
    .parameter "vcard"

    .prologue
    .line 291
    const/4 v5, 0x0

    .line 292
    .local v5, rtn:[B
    const/4 v1, 0x0

    .line 293
    .local v1, input:Ljava/lang/String;
    const/4 v2, 0x0

    .line 294
    .local v2, output:Ljava/lang/String;
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .end local v1           #input:Ljava/lang/String;
    const-string v6, "SHIFT_JIS"

    invoke-direct {v1, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .restart local v1       #input:Ljava/lang/String;
    :goto_0
    const-string v6, "\nPHOTO"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 307
    .local v4, photo_tag_start:I
    if-lez v4, :cond_0

    .line 308
    const-string v6, "\r\n\r\n"

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 309
    .local v3, photo_tag_end:I
    if-ge v4, v3, :cond_0

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    .end local v3           #photo_tag_end:I
    :cond_0
    if-nez v2, :cond_2

    .line 315
    const/4 v6, 0x0

    .line 329
    :goto_1
    return-object v6

    .line 297
    .end local v1           #input:Ljava/lang/String;
    .end local v4           #photo_tag_start:I
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "HtcSendMultipleContactActivity"

    const-string v7, "UnsupportedEncodingException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 300
    .restart local v1       #input:Ljava/lang/String;
    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1           #input:Ljava/lang/String;
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .restart local v1       #input:Ljava/lang/String;
    goto :goto_0

    .line 318
    .restart local v4       #photo_tag_start:I
    :cond_2
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    :try_start_1
    const-string v6, "SHIFT_JIS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_2
    move-object v6, v5

    .line 329
    goto :goto_1

    .line 321
    :catch_1
    move-exception v0

    .line 322
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "HtcSendMultipleContactActivity"

    const-string v7, "UnsupportedEncodingException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 324
    goto :goto_2

    .line 327
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    goto :goto_2
.end method

.method private replaceInvalidFileChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 418
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v2, out:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 421
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 423
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 436
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 420
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :sswitch_0
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 440
    .end local v0           #ch:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 76
    if-eqz p3, :cond_0

    .line 77
    const-string v1, "SELECTED_ID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object v0, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mSelecteId:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->displaySendContactDialog()V

    goto :goto_0

    .line 82
    .end local v0           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->finish()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0xf000
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_EMAIL:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mEXTRA_PHONE_NUMBER:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_PICK_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "filter_account_mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    const-string v1, "max_selected_contacts_count"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v1, "REQUEST_SET_BUTTON_STYLE"

    const-string v2, "send_cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const v1, 0xf000

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onDestroy()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onResume()V

    .line 55
    return-void
.end method

.method public onVcardEntryCreated(Ljava/lang/String;)Z
    .locals 4
    .parameter "vcard"

    .prologue
    .line 391
    const-string v1, "result"

    .line 392
    .local v1, resultName:Ljava/lang/String;
    iget v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    if-nez v2, :cond_0

    .line 393
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mVCard0:Ljava/lang/String;

    .line 396
    :cond_0
    iget v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    if-lez v2, :cond_1

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    :cond_1
    invoke-static {}, Lcom/android/vcard/VCardUtils;->isSBM()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "SHIFT_JIS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "HtcSendMultipleContactActivity"

    const-string v3, "UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    .line 409
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0
.end method
