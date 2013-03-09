.class public Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;
.super Landroid/app/Activity;
.source "FacebookAccountSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACCOUNT_TYPE_FACEBOOK:Ljava/lang/String; = "com.facebook.auth.login"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "OOBE_FacebookAccountSetupActivity"


# instance fields
.field private btnFacebook_authorize:Landroid/widget/Button;

.field private btnFacebook_setup:Landroid/widget/Button;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mbFinalPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "content://com.htc.socialnetwork.facebook/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->mbFinalPage:Z

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method private initialize()V
    .locals 21

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 133
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_0

    .line 135
    const-string v17, "FinalPage"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->mbFinalPage:Z

    .line 138
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->isFacebookSignedIn()Z

    move-result v12

    .line 139
    .local v12, isSignIn:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->isAuthorized()Z

    move-result v11

    .line 141
    .local v11, isAuthorized:Z
    if-eqz v12, :cond_1

    if-nez v11, :cond_5

    .line 143
    :cond_1
    const v17, 0x7f03000f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->setContentView(I)V

    .line 145
    const v17, 0x7f0d001b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->btnFacebook_setup:Landroid/widget/Button;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->btnFacebook_setup:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v17, 0x7f0d001c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->btnFacebook_authorize:Landroid/widget/Button;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->btnFacebook_authorize:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    if-eqz v12, :cond_2

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->btnFacebook_setup:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->btnFacebook_authorize:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 159
    .local v14, pm:Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/ComponentName;

    const-string v17, "com.htc.socialnetwork.facebook"

    const-string v18, "com.htc.socialnetwork.facebook.FacebookWallInput"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v7, component:Landroid/content/ComponentName;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v7, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 163
    .local v4, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 165
    .local v15, res:Landroid/content/res/Resources;
    sget-boolean v17, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isChaCha:Z

    if-eqz v17, :cond_4

    .line 166
    const-string v17, "user_cancel_msg_chacha"

    const-string v18, "string"

    const-string v19, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 171
    .local v16, resId:I
    :goto_0
    const v17, 0x7f0d001a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 172
    .local v8, desc:Landroid/widget/TextView;
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v7           #component:Landroid/content/ComponentName;
    .end local v8           #desc:Landroid/widget/TextView;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #res:Landroid/content/res/Resources;
    .end local v16           #resId:I
    :cond_2
    :goto_1
    const v17, 0x7f0d003f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 187
    .local v13, layout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 189
    const/16 v17, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v13, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 192
    const v17, 0x7f0d0003

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 193
    .local v5, btnBack:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v17, 0x7f0d0004

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 197
    .local v6, btnNext:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->mbFinalPage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 200
    const v17, 0x7f0a0013

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    .line 201
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_3
    return-void

    .line 169
    .end local v5           #btnBack:Landroid/widget/Button;
    .end local v6           #btnNext:Landroid/widget/Button;
    .end local v13           #layout:Landroid/widget/LinearLayout;
    .restart local v4       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v7       #component:Landroid/content/ComponentName;
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    .restart local v15       #res:Landroid/content/res/Resources;
    :cond_4
    :try_start_1
    const-string v17, "user_cancel_msg"

    const-string v18, "string"

    const-string v19, "com.htc.socialnetwork.facebook"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .restart local v16       #resId:I
    goto/16 :goto_0

    .line 174
    .end local v4           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v7           #component:Landroid/content/ComponentName;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #res:Landroid/content/res/Resources;
    .end local v16           #resId:I
    :catch_0
    move-exception v9

    .line 176
    .local v9, e:Ljava/lang/Exception;
    const-string v17, "OOBE_FacebookAccountSetupActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "initialize()::Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 182
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    const v17, 0x7f030010

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->setContentView(I)V

    goto/16 :goto_1
.end method

.method private isAuthorized()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 207
    const/4 v6, 0x0

    .line 210
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "defaultAccount=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    if-nez v6, :cond_0

    move v0, v9

    .line 240
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    const-string v0, "loginId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, loginId:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 219
    goto :goto_0

    .line 221
    :cond_1
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAuthorized() loginId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    const/4 v6, 0x0

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 225
    .end local v8           #loginId:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    const-string v1, "isAuthorized() no record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v9

    .line 227
    goto :goto_0

    .line 230
    :catch_0
    move-exception v7

    .line 232
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAuthorized()::Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v9

    .line 234
    goto :goto_0
.end method

.method private isFacebookSignedIn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.facebook.auth.login"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 249
    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 251
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 350
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "nRequestCode"
    .parameter "nResultCode"
    .parameter "intent"

    .prologue
    .line 355
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 259
    :sswitch_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.facebook.auth.login"

    iget-object v6, p0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->mHandler:Landroid/os/Handler;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 268
    :sswitch_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "com.htc.socialnetwork.facebook"

    const-string v1, "com.htc.socialnetwork.facebook.SingleSignOnActivity"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/high16 v0, 0x1080

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v8}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 277
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->finish()V

    goto :goto_0

    .line 282
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->setResult(I)V

    .line 283
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->finish()V

    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0003 -> :sswitch_3
        0x7f0d0004 -> :sswitch_2
        0x7f0d001b -> :sswitch_0
        0x7f0d001c -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->initialize()V

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 118
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 332
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sparse-switch p1, :sswitch_data_0

    .line 343
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 336
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->setResult(I)V

    .line 337
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 341
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 319
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    packed-switch p1, :pswitch_data_0

    .line 326
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 323
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 313
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 297
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 291
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/FacebookAccountSetupActivity;->initialize()V

    .line 292
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 302
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 307
    const-string v0, "OOBE_FacebookAccountSetupActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method
