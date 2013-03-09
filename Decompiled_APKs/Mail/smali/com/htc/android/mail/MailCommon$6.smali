.class Lcom/htc/android/mail/MailCommon$6;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon;)V
    .locals 0
    .parameter

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/Attachment;

    .line 1469
    .local v2, attach:Lcom/htc/android/mail/Attachment;
    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->setCurAttch(Lcom/htc/android/mail/Attachment;)V
    invoke-static {v8, v2}, Lcom/htc/android/mail/MailCommon;->access$1100(Lcom/htc/android/mail/MailCommon;Lcom/htc/android/mail/Attachment;)V

    .line 1470
    iget-object v0, v2, Lcom/htc/android/mail/Attachment;->attachName:Ljava/lang/String;

    .line 1472
    .local v0, _fileName:Ljava/lang/String;
    iget-object v8, v2, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v2, Lcom/htc/android/mail/Attachment;->attachMimeType:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1473
    .local v7, this_mimeType:Ljava/lang/String;
    :goto_0
    iget-object v1, v2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 1475
    .local v1, _filepath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "MailCommon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showAttachmentMenuDialog partId> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v2, Lcom/htc/android/mail/Attachment;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "MailCommon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filename, path> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "MailCommon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mimeType> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    :cond_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    .line 1480
    :cond_3
    sget-object v8, Lcom/htc/android/mail/Attachment$States;->unDownloaded:Lcom/htc/android/mail/Attachment$States;

    iput-object v8, v2, Lcom/htc/android/mail/Attachment;->attachStates:Lcom/htc/android/mail/Attachment$States;

    .line 1481
    iput-object p1, v2, Lcom/htc/android/mail/Attachment;->BtnView:Landroid/view/View;

    .line 1482
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1483
    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v9, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v9, v9, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v2}, Lcom/htc/android/mail/MailCommon;->updateAttachButtonIconAction(Landroid/content/Context;Lcom/htc/android/mail/Attachment;)V

    .line 1538
    :goto_1
    return-void

    .line 1472
    .end local v1           #_filepath:Ljava/lang/String;
    .end local v7           #this_mimeType:Ljava/lang/String;
    :cond_4
    const-string v7, ""

    goto/16 :goto_0

    .line 1486
    .restart local v1       #_filepath:Ljava/lang/String;
    .restart local v7       #this_mimeType:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->ifProhibitApk()Z
    invoke-static {v8}, Lcom/htc/android/mail/MailCommon;->access$1200(Lcom/htc/android/mail/MailCommon;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->checkIsApkFile(Ljava/lang/String;)Z
    invoke-static {v8, v0}, Lcom/htc/android/mail/MailCommon;->access$1300(Lcom/htc/android/mail/MailCommon;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1487
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "MailCommon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "return apk file>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_6
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v8, v8, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1489
    .local v4, dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    const v9, 0x7f0b002c

    #calls: Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;
    invoke-static {v8, v9}, Lcom/htc/android/mail/MailCommon;->access$1400(Lcom/htc/android/mail/MailCommon;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1490
    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    const v9, 0x7f0b002d

    #calls: Lcom/htc/android/mail/MailCommon;->getText(I)Ljava/lang/CharSequence;
    invoke-static {v8, v9}, Lcom/htc/android/mail/MailCommon;->access$1400(Lcom/htc/android/mail/MailCommon;I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1491
    const v8, 0x7f0b0291

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1492
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_1

    .line 1500
    .end local v4           #dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_7
    invoke-static {v0}, Lcom/htc/android/mail/MailCommon;->getSubFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1501
    .local v5, extension:Ljava/lang/String;
    new-instance v6, Lcom/htc/android/mail/MailCommon$SupportFileList;

    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v8, v8, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, v8}, Lcom/htc/android/mail/MailCommon$SupportFileList;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1502
    .local v6, fileList:Lcom/htc/android/mail/MailCommon$SupportFileList;
    const/4 v3, -0x1

    .line 1504
    .local v3, current_attach_type:I
    if-eqz v5, :cond_8

    const-string v8, "vcs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    const-string v8, "text/calendar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "text/x-vcalendar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1507
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "MailCommon"

    const-string v9, "vCalendar>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_a
    const/4 v3, 0x5

    .line 1532
    :goto_2
    const/4 v8, 0x1

    if-ne v3, v8, :cond_17

    .line 1533
    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v8, v8, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    const v9, 0x7f0b01a7

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1510
    :cond_b
    const-string v8, "text/x-vCard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz v5, :cond_c

    const-string v8, "vcf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    :cond_c
    if-eqz v5, :cond_f

    const-string v8, "vcard"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1513
    :cond_d
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "MailCommon"

    const-string v9, "vCard>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    :cond_e
    const/4 v3, 0x2

    goto :goto_2

    .line 1516
    :cond_f
    const-string v8, "application/zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "application/x-zip-compressed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "application/x-compressed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "multipart/x-zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    if-eqz v5, :cond_12

    const-string v8, "zip"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1518
    :cond_10
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v8, "MailCommon"

    const-string v9, "zip>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :cond_11
    const/4 v3, 0x6

    goto :goto_2

    .line 1521
    :cond_12
    invoke-virtual {v6}, Lcom/htc/android/mail/MailCommon$SupportFileList;->checkExtensionSupportable()Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v8, v8, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    const-string v9, "android.intent.action.VIEW"

    const-string v10, "content"

    invoke-static {v8, v9, v10, v7}, Lcom/htc/android/mail/MailCommon;->checkIsSupportType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1523
    :cond_13
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "MailCommon"

    const-string v9, "support file>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1527
    :cond_15
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v8

    if-eqz v8, :cond_16

    const-string v8, "MailCommon"

    const-string v9, "unsupportable file>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :cond_16
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1535
    :cond_17
    iget-object v8, p0, Lcom/htc/android/mail/MailCommon$6;->this$0:Lcom/htc/android/mail/MailCommon;

    #calls: Lcom/htc/android/mail/MailCommon;->openAttachment(ILandroid/view/View;)V
    invoke-static {v8, v3, p1}, Lcom/htc/android/mail/MailCommon;->access$1500(Lcom/htc/android/mail/MailCommon;ILandroid/view/View;)V

    goto/16 :goto_1
.end method
