.class public Lcom/android/providers/downloads/SizeLimitActivity;
.super Landroid/app/Activity;
.source "SizeLimitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCurrentIntent:Landroid/content/Intent;

.field private mCurrentUri:Landroid/net/Uri;

.field private mDialog:Landroid/app/Dialog;

.field private mDownloadsToShow:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDownloadsToShow:Ljava/util/Queue;

    return-void
.end method

.method private dialogClosed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDialog:Landroid/app/Dialog;

    .line 120
    iput-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentUri:Landroid/net/Uri;

    .line 121
    invoke-direct {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->showNextDialog()V

    .line 122
    return-void
.end method

.method private showDialog(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f03001a

    const/4 v7, 0x2

    .line 92
    const-string v5, "total_bytes"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 93
    .local v3, size:I
    int-to-long v5, v3

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, sizeString:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/providers/downloads/SizeLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, queueText:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "isWifiRequired"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 98
    .local v1, isWifiRequired:Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_0

    .line 100
    const v5, 0x7f030016

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f030017

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    aput-object v2, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/providers/downloads/SizeLimitActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f03001b

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDialog:Landroid/app/Dialog;

    .line 111
    return-void

    .line 105
    :cond_0
    const v5, 0x7f030018

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f030019

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v9

    aput-object v2, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/providers/downloads/SizeLimitActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f03001c

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showNextDialog()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDownloadsToShow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->finish()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDownloadsToShow:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentUri:Landroid/net/Uri;

    .line 78
    invoke-virtual {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty cursor for URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->dialogClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    :cond_2
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/providers/downloads/SizeLimitActivity;->showDialog(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->dialogClosed()V

    .line 116
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-object v2, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isWifiRequired"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 128
    .local v0, isRequired:Z
    if-eqz v0, :cond_1

    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->dialogClosed()V

    .line 136
    return-void

    .line 130
    :cond_1
    if-nez v0, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 131
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "bypass_recommended_size_limit"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/SizeLimitActivity;->setIntent(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDownloadsToShow:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/SizeLimitActivity;->setIntent(Landroid/content/Intent;)V

    .line 59
    invoke-direct {p0}, Lcom/android/providers/downloads/SizeLimitActivity;->showNextDialog()V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/providers/downloads/SizeLimitActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 64
    :cond_1
    return-void
.end method
