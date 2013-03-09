.class public Lcom/htc/opensense/album/util/DrmManager$DRMActionActivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DRMActionActivityBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1672
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1680
    .local v2, downloadUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$400()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$400()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1685
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Right downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const/4 v8, 0x1

    .line 1689
    .local v8, bCancel:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mimetype"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "entity"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1690
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 1694
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1696
    const-string v1, "status"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1697
    .local v14, status:I
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download status code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v1, "mimetype"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1699
    .local v11, mimetype:Ljava/lang/String;
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v1, "entity"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1701
    .local v15, url:Ljava/lang/String;
    const-string v1, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    invoke-static {v14}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1704
    const/16 v1, 0x191

    if-ne v14, v1, :cond_5

    .line 1705
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    .local v7, acquire:Landroid/content/Intent;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1707
    .local v13, righturi:Landroid/net/Uri;
    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1708
    const/high16 v1, 0x1000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1710
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    .end local v7           #acquire:Landroid/content/Intent;
    .end local v11           #mimetype:Ljava/lang/String;
    .end local v13           #righturi:Landroid/net/Uri;
    .end local v14           #status:I
    .end local v15           #url:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1749
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$600()Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1751
    if-eqz v8, :cond_9

    .line 1752
    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$600()Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1757
    :cond_4
    :goto_2
    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$500()Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1758
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager;->access$502(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 1759
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager;->access$402(Landroid/net/Uri;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 1713
    .restart local v11       #mimetype:Ljava/lang/String;
    .restart local v14       #status:I
    .restart local v15       #url:Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    .line 1715
    .local v12, rc:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.htc"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 1721
    :goto_3
    const v1, 0x20c0162

    :try_start_2
    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1745
    .end local v11           #mimetype:Ljava/lang/String;
    .end local v12           #rc:Landroid/content/res/Resources;
    .end local v14           #status:I
    .end local v15           #url:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1717
    .restart local v11       #mimetype:Ljava/lang/String;
    .restart local v12       #rc:Landroid/content/res/Resources;
    .restart local v14       #status:I
    .restart local v15       #url:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1719
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1727
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #rc:Landroid/content/res/Resources;
    :cond_6
    const-string v1, "text/html"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "application/xhtml+xml"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1728
    :cond_7
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1729
    .restart local v7       #acquire:Landroid/content/Intent;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1730
    .restart local v13       #righturi:Landroid/net/Uri;
    invoke-virtual {v7, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1731
    const/high16 v1, 0x1000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1733
    const-string v1, "com.android.browser.application_id"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1738
    .end local v7           #acquire:Landroid/content/Intent;
    .end local v13           #righturi:Landroid/net/Uri;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1754
    .end local v11           #mimetype:Ljava/lang/String;
    .end local v14           #status:I
    .end local v15           #url:Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$600()Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;->onRenewRight()V

    goto :goto_2
.end method
