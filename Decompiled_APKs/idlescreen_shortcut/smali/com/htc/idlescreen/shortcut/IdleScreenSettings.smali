.class public Lcom/htc/idlescreen/shortcut/IdleScreenSettings;
.super Landroid/app/Activity;
.source "IdleScreenSettings.java"


# static fields
.field private static final DIALOG_WALLPAPER_CHOICE:I = 0x1

.field public static final FIRST_SET:Ljava/lang/String; = "first_set"

.field public static final IS_APPLY:Ljava/lang/String; = "is_apply"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelClick:Landroid/content/DialogInterface$OnCancelListener;

.field private mItemClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$1;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$1;-><init>(Lcom/htc/idlescreen/shortcut/IdleScreenSettings;)V

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->mCancelClick:Landroid/content/DialogInterface$OnCancelListener;

    .line 61
    new-instance v0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings$2;-><init>(Lcom/htc/idlescreen/shortcut/IdleScreenSettings;)V

    iput-object v0, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->mItemClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/shortcut/IdleScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->launchWallpaperChooser()V

    return-void
.end method

.method private getApply()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "is_apply"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "is_apply"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 87
    :cond_0
    return v1
.end method

.method private launchWallpaperChooser()V
    .locals 5

    .prologue
    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_LOCKSCREEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v2, "CAN_RESET_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launch set lock screen fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->getApply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->setResult(I)V

    .line 36
    invoke-virtual {p0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->finish()V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f04

    iget-object v2, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->mItemClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/shortcut/IdleScreenSettings;->mCancelClick:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
