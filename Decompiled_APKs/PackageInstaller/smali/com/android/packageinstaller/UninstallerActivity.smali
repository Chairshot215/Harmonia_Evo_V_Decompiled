.class public Lcom/android/packageinstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final DLG_APP_NOT_FOUND:I = 0x1

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_UNINSTALL_FAILED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UninstallerActivity"


# instance fields
.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field private mOk:Landroid/widget/Button;

.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->localLOGV:Z

    return-void
.end method

.method private startUninstallProgress()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    :cond_0
    const-class v1, Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    .line 110
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    .line 197
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->startUninstallProgress()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallerActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "icicle"

    .prologue
    .line 114
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 119
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 120
    .local v11, packageURI:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 121
    .local v10, packageName:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 122
    const-string v14, "UninstallerActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid package name:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    .line 184
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/UninstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 128
    const/4 v7, 0x0

    .line 130
    .local v7, errFlag:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x2000

    invoke-virtual {v14, v10, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    invoke-virtual {v11}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, className:Ljava/lang/String;
    const/4 v1, 0x0

    .line 138
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_1

    .line 140
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v10, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 146
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_2

    if-eqz v7, :cond_3

    .line 147
    :cond_2
    const-string v14, "UninstallerActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid packageName or componentName in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->showDialog(I)V

    goto :goto_0

    .line 131
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #className:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 132
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x1

    goto :goto_1

    .line 141
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v4       #className:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 142
    .restart local v6       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x1

    goto :goto_2

    .line 150
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_5

    const/4 v9, 0x1

    .line 152
    .local v9, isUpdate:Z
    :goto_3
    const v14, 0x7f030004

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->setContentView(I)V

    .line 154
    const v14, 0x7f070015

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 155
    .local v5, confirm:Landroid/widget/TextView;
    if-eqz v9, :cond_6

    .line 156
    const v14, 0x7f050023

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->setTitle(I)V

    .line 157
    const v14, 0x7f050026

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :goto_4
    if-eqz v1, :cond_4

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 167
    .local v2, activityLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 168
    const v14, 0x7f070013

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 169
    .local v3, activityText:Landroid/widget/TextView;
    const v14, 0x7f050024

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 170
    .local v13, text:Ljava/lang/CharSequence;
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    .end local v2           #activityLabel:Ljava/lang/CharSequence;
    .end local v3           #activityText:Landroid/widget/TextView;
    .end local v13           #text:Ljava/lang/CharSequence;
    :cond_4
    const v14, 0x7f070014

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 176
    .local v12, snippetView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;

    .line 179
    const v14, 0x7f07000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    .line 180
    const v14, 0x7f07000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mOk:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/packageinstaller/UninstallerActivity;->mCancel:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 150
    .end local v5           #confirm:Landroid/widget/TextView;
    .end local v9           #isUpdate:Z
    .end local v12           #snippetView:Landroid/view/View;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 159
    .restart local v5       #confirm:Landroid/widget/TextView;
    .restart local v9       #isUpdate:Z
    :cond_6
    const v14, 0x7f050022

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/packageinstaller/UninstallerActivity;->setTitle(I)V

    .line 160
    const v14, 0x7f050025

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f05001f

    const v6, 0x1080027

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 96
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 67
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050020

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050021

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/packageinstaller/UninstallerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallerActivity$1;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 81
    .local v0, appTitle:Ljava/lang/CharSequence;
    const v2, 0x7f05002c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, dlgText:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f050029

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/packageinstaller/UninstallerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/packageinstaller/UninstallerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallerActivity$2;-><init>(Lcom/android/packageinstaller/UninstallerActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
