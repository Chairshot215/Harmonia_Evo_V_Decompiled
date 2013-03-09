.class public Lcom/android/settings/framework/widget/HtcAboutDialogButton;
.super Landroid/widget/Button;
.source "HtcAboutDialogButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HTC_APP_DETAIL:Ljava/lang/String; = "htc_app_detail"

.field private static final HTC_APP_VERSION_ID:Ljava/lang/String; = "ap_version_id"

.field private static final HTC_PRIVATE_APP:Ljava/lang/String; = "htc_private_app"


# instance fields
.field private mAboutDialog:Landroid/app/Dialog;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mOrientationChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->initialize()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->initialize()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->initialize()V

    .line 49
    return-void
.end method

.method private prepareAboutDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 134
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 140
    .local v6, res:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 143
    .local v1, appName:Ljava/lang/CharSequence;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":string/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ap_version_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 147
    .local v7, resId:I
    if-nez v7, :cond_1

    .line 148
    const-string v2, ""

    .line 154
    .local v2, appVersion:Ljava/lang/CharSequence;
    :goto_0
    const-string v8, "ro.build.changelist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, changeList:Ljava/lang/CharSequence;
    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 156
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 157
    move-object v2, v3

    .line 164
    :cond_0
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":string/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "htc_app_detail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 168
    if-nez v7, :cond_3

    .line 169
    const-string v0, ""

    .line 174
    .local v0, appDescription:Ljava/lang/CharSequence;
    :goto_2
    new-instance v8, Lcom/htc/widget/AboutDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/widget/AboutDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1}, Lcom/htc/widget/AboutDialog$Builder;->setAppName(Ljava/lang/CharSequence;)Lcom/htc/widget/AboutDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/widget/AboutDialog$Builder;->setAppVersion(Ljava/lang/CharSequence;)Lcom/htc/widget/AboutDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/htc/widget/AboutDialog$Builder;->setAppDescription(Ljava/lang/CharSequence;)Lcom/htc/widget/AboutDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/AboutDialog$Builder;->create()Lcom/htc/widget/AboutDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    .line 179
    .end local v0           #appDescription:Ljava/lang/CharSequence;
    .end local v1           #appName:Ljava/lang/CharSequence;
    .end local v2           #appVersion:Ljava/lang/CharSequence;
    .end local v3           #changeList:Ljava/lang/CharSequence;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #resId:I
    :goto_3
    return-void

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3

    .line 150
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #appName:Ljava/lang/CharSequence;
    .restart local v6       #res:Landroid/content/res/Resources;
    .restart local v7       #resId:I
    :cond_1
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #appVersion:Ljava/lang/CharSequence;
    goto :goto_0

    .line 159
    .restart local v3       #changeList:Ljava/lang/CharSequence;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #appDescription:Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private supportAboutDialog(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .parameter "appInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 99
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .local v2, res:Landroid/content/res/Resources;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":string/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "htc_private_app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 114
    .local v3, resId:I
    if-eqz v3, :cond_0

    .line 115
    const/4 v4, 0x1

    .line 117
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resId:I
    :cond_0
    :goto_0
    return v4

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public dismissAndShowAgain()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->prepareAboutDialog()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    .line 207
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0c0355

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->setText(I)V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->prepareAboutDialog()V

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 194
    return-void

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->prepareAboutDialog()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mOrientationChanged:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->dismissAndShowAgain()V

    .line 227
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 214
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 215
    iput-object v0, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAboutDialog:Landroid/app/Dialog;

    .line 216
    return-void
.end method

.method public setAutoVisibility(Landroid/content/pm/ApplicationInfo;)I
    .locals 4
    .parameter "appInfo"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 67
    if-nez p1, :cond_0

    .line 68
    const-string v0, "The parameter appInfo should not be null."

    .line 69
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->supportAboutDialog(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->setVisibility(I)V

    .line 81
    :goto_0
    return v1

    .line 80
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->setVisibility(I)V

    move v1, v2

    .line 81
    goto :goto_0
.end method
