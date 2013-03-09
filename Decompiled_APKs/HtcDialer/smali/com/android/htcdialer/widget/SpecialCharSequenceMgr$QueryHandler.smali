.class Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/widget/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "cr"

    .prologue
    .line 443
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 444
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 452
    move-object/from16 v9, p2

    check-cast v9, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;

    .line 455
    .local v9, sc:Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;
    iget-object v11, v9, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v11}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 458
    invoke-virtual {v9}, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v10

    .line 464
    .local v10, text:Landroid/widget/EditText;
    const/4 v7, 0x0

    .line 465
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 469
    .local v8, number:Ljava/lang/String;
    iget-object v11, v9, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v11}, Lcom/htc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 470
    .local v3, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 474
    .local v4, dialogFlag:Z
    if-eqz p3, :cond_5

    if-eqz v10, :cond_5

    .line 476
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 477
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 479
    :cond_0
    const-string v11, "recordNumber"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, mRecord:Ljava/lang/String;
    iget v11, v9, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 481
    const-string v11, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 482
    const-string v11, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 494
    .end local v5           #mRecord:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v8, :cond_4

    .line 496
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 498
    const v11, 0x7f09002d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 499
    const/4 v11, 0x0

    invoke-static {v3, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 514
    :goto_1
    const/4 v11, 0x1

    if-ne v4, v11, :cond_2

    .line 515
    const v11, 0x7f09000f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v9, Lcom/android/htcdialer/widget/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, messageStr:Ljava/lang/String;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v1, alert:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v11, 0x7f09000e

    invoke-virtual {v1, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 518
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 519
    const v11, 0x7f090039

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 520
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 521
    .local v2, alertDialog:Lcom/htc/widget/HtcAlertDialog;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 522
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 523
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 526
    .end local v1           #alert:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v2           #alertDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v6           #messageStr:Ljava/lang/String;
    :cond_2
    return-void

    .line 485
    .restart local v5       #mRecord:Ljava/lang/String;
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_0

    .line 503
    .end local v5           #mRecord:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 509
    :cond_5
    const/4 v4, 0x1

    goto :goto_1
.end method
