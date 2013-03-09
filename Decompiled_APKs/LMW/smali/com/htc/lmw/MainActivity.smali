.class public Lcom/htc/lmw/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static final EXTRA_DISPLAY_WARNING:Ljava/lang/String; = "display_warning"

.field public static instance:Lcom/htc/lmw/MainActivity;

.field public static isLowMode:Z

.field public static memoryAlreadyFreed:Z


# instance fields
.field public dialogActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sput-object p0, Lcom/htc/lmw/MainActivity;->instance:Lcom/htc/lmw/MainActivity;

    .line 48
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/lmw/Wizard;->transactionFinished()V

    .line 49
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v8

    .line 50
    .local v8, wizard:Lcom/htc/lmw/Wizard;
    invoke-virtual {p0}, Lcom/htc/lmw/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 51
    .local v5, intent:Landroid/content/Intent;
    if-nez v5, :cond_1

    const/4 v2, 0x0

    .line 53
    .local v2, extras:Landroid/os/Bundle;
    :goto_0
    invoke-static {}, Lcom/htc/lmw/AppManager;->getInstance()Lcom/htc/lmw/AppManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/lmw/AppManager;->getDataFreeBytes()J

    move-result-wide v9

    const-wide/32 v11, 0x100000

    div-long v3, v9, v11

    .line 54
    .local v3, freeBytes:J
    const-wide/16 v9, 0x14

    cmp-long v9, v3, v9

    if-gtz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Lcom/htc/lmw/Wizard;->setLowMemory(Z)V

    .line 56
    invoke-virtual {v8}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 57
    sget-object v9, Lcom/htc/lmw/Wizard;->phoneCriticalPages:[Ljava/lang/Class;

    sput-object v9, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    .line 62
    :goto_2
    if-eqz v2, :cond_4

    const-string v9, "display_warning"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v1, 0x1

    .line 63
    .local v1, displayWarning:Z
    :goto_3
    if-eqz v1, :cond_6

    .line 67
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/lmw/Wizard;->isLowMemory()Z

    move-result v6

    .line 69
    .local v6, isCritical:Z
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-nez v6, :cond_5

    .line 73
    const v9, 0x7f05001a

    invoke-static {v9}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 74
    invoke-virtual {p0}, Lcom/htc/lmw/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050006

    invoke-static {v10}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, warningMessage:Ljava/lang/String;
    :goto_4
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 84
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 86
    const v9, 0x104000a

    new-instance v10, Lcom/htc/lmw/MainActivity$1;

    invoke-direct {v10, p0}, Lcom/htc/lmw/MainActivity$1;-><init>(Lcom/htc/lmw/MainActivity;)V

    invoke-virtual {v0, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 99
    if-nez v6, :cond_0

    .line 101
    const/high16 v9, 0x104

    new-instance v10, Lcom/htc/lmw/MainActivity$2;

    invoke-direct {v10, p0}, Lcom/htc/lmw/MainActivity$2;-><init>(Lcom/htc/lmw/MainActivity;)V

    invoke-virtual {v0, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 118
    :cond_0
    new-instance v9, Lcom/htc/lmw/MainActivity$3;

    invoke-direct {v9, p0}, Lcom/htc/lmw/MainActivity$3;-><init>(Lcom/htc/lmw/MainActivity;)V

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 135
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/lmw/MainActivity;->dialogActive:Z

    .line 142
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v6           #isCritical:Z
    .end local v7           #warningMessage:Ljava/lang/String;
    :goto_5
    return-void

    .line 51
    .end local v1           #displayWarning:Z
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #freeBytes:J
    :cond_1
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_0

    .line 54
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v3       #freeBytes:J
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 59
    :cond_3
    sget-object v9, Lcom/htc/lmw/Wizard;->phonePages:[Ljava/lang/Class;

    sput-object v9, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    goto/16 :goto_2

    .line 62
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 78
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v1       #displayWarning:Z
    .restart local v6       #isCritical:Z
    :cond_5
    const v9, 0x7f05001c

    invoke-static {v9}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 79
    invoke-virtual {p0}, Lcom/htc/lmw/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f050007

    invoke-static {v10}, Lcom/htc/lmw/Customize;->convertStringId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #warningMessage:Ljava/lang/String;
    goto :goto_4

    .line 139
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v6           #isCritical:Z
    .end local v7           #warningMessage:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/htc/lmw/Wizard;->start(Landroid/app/Activity;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/lmw/MainActivity;->finish()V

    goto :goto_5
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/htc/lmw/MainActivity;->dialogActive:Z

    if-eqz v0, :cond_0

    .line 27
    sget-boolean v0, Lcom/htc/lmw/MainActivity;->memoryAlreadyFreed:Z

    if-nez v0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 36
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lmw/MainActivity;->instance:Lcom/htc/lmw/MainActivity;

    .line 38
    invoke-virtual {p0}, Lcom/htc/lmw/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lmw/MainActivity;->finish()V

    .line 39
    :cond_1
    return-void
.end method
