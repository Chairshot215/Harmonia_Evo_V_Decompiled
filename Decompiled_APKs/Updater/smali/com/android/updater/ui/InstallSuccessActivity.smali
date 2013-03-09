.class public Lcom/android/updater/ui/InstallSuccessActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "InstallSuccessActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | InstallSuccessActivity"


# instance fields
.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mPositiveButtonId:I

.field private mTitleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/updater/ui/InstallSuccessActivity;->finish()V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v8, 0x7f060047

    iput v8, p0, Lcom/android/updater/ui/InstallSuccessActivity;->mTitleId:I

    .line 28
    invoke-virtual {p0}, Lcom/android/updater/ui/InstallSuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f02

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/updater/ui/InstallSuccessActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    const v8, 0x7f060024

    iput v8, p0, Lcom/android/updater/ui/InstallSuccessActivity;->mPositiveButtonId:I

    .line 31
    const/4 v7, 0x0

    .line 32
    .local v7, romVersion:Ljava/lang/String;
    const-string v8, "ro.product.version"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, productVersion:Ljava/lang/String;
    const-string v8, "ro.build.description"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, buildDescription:Ljava/lang/String;
    const-string v8, "ro.build.changelist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, chanelList:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 38
    move-object v7, v6

    .line 40
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 41
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 42
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, buildDescArray:[Ljava/lang/String;
    aget-object v7, v0, v11

    .line 49
    .end local v0           #buildDescArray:[Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, builder:Ljava/lang/StringBuilder;
    const v8, 0x7f060048

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/InstallSuccessActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f060049

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/updater/ui/InstallSuccessActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/updater/ui/InstallSuccessActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 58
    .local v5, params:Lcom/htc/app/HtcAlertController$AlertParams;
    iget v8, p0, Lcom/android/updater/ui/InstallSuccessActivity;->mTitleId:I

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/InstallSuccessActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 59
    iput-object v4, v5, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 60
    iget-object v8, p0, Lcom/android/updater/ui/InstallSuccessActivity;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v8, v5, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    iget v8, p0, Lcom/android/updater/ui/InstallSuccessActivity;->mPositiveButtonId:I

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/InstallSuccessActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v5, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 62
    iput-object p0, v5, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    invoke-virtual {p0}, Lcom/android/updater/ui/InstallSuccessActivity;->setupAlert()V

    .line 65
    return-void

    .line 45
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #params:Lcom/htc/app/HtcAlertController$AlertParams;
    :cond_3
    move-object v7, v3

    goto :goto_0
.end method
