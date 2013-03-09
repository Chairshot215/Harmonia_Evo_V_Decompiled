.class public Lcom/google/android/feedback/FeedbackActivity;
.super Landroid/app/Activity;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/feedback/SystemLogFetcher$Listener;


# static fields
.field private static final mHandler:Landroid/os/Handler;

.field private static mSessionStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/feedback/FeedbackSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsUifRequest:Z

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/android/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mIsUifRequest:Z

    .line 88
    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    return-void
.end method

.method private configureOptionalUiFields(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "data"

    .prologue
    const v4, 0x7f08000f

    const/4 v3, 0x0

    const v2, 0x7f08000d

    const/16 v1, 0x8

    .line 197
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->isUifReport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0, v4}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    if-nez p1, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private createFeedbackSession(Landroid/content/Intent;Landroid/os/Parcelable;Landroid/app/ApplicationErrorReport;)V
    .locals 7
    .parameter "intent"
    .parameter "parcelledData"
    .parameter "report"

    .prologue
    .line 168
    const/4 v3, 0x0

    .line 170
    .local v3, screenshot:Lcom/google/android/feedback/FeedbackSession$Screenshot;
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->isUifReport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p3, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 174
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_0

    .line 175
    move-object v0, p2

    check-cast v0, Lcom/google/android/feedback/FeedbackSession$Screenshot;

    move-object v3, v0

    .line 177
    :cond_0
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v4, p3, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->configureOptionalUiFields(Landroid/os/Parcelable;)V

    .line 190
    invoke-direct {p0, p3, v3}, Lcom/google/android/feedback/FeedbackActivity;->pushSession(Landroid/app/ApplicationErrorReport;Lcom/google/android/feedback/FeedbackSession$Screenshot;)V

    .line 191
    :cond_2
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 183
    sget-object v4, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->finish()V

    goto :goto_0
.end method

.method public static getReport()Lcom/google/android/feedback/ExtendedErrorReport;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->getReport()Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentView(Landroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 4
    .parameter "intent"
    .parameter "parcelledData"

    .prologue
    .line 122
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->setContentView(I)V

    .line 124
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 128
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 131
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v2, 0x7f080009

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, row:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-direct {p0, p2}, Lcom/google/android/feedback/FeedbackActivity;->configureOptionalUiFields(Landroid/os/Parcelable;)V

    .line 145
    return-void
.end method

.method public static isCurrentSession(Lcom/google/android/feedback/FeedbackSession;)Z
    .locals 2
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 373
    sget-object v1, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pushSession(Landroid/app/ApplicationErrorReport;Lcom/google/android/feedback/FeedbackSession$Screenshot;)V
    .locals 3
    .parameter "report"
    .parameter "screenshot"

    .prologue
    .line 216
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/FeedbackSession;

    .line 218
    .local v1, top:Lcom/google/android/feedback/FeedbackSession;
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {v1}, Lcom/google/android/feedback/FeedbackSession;->onStop()V

    .line 223
    .end local v1           #top:Lcom/google/android/feedback/FeedbackSession;
    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Lcom/google/android/feedback/FeedbackSession;

    invoke-direct {v0, p0, p1}, Lcom/google/android/feedback/FeedbackSession;-><init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/app/ApplicationErrorReport;)V

    .line 225
    .local v0, newSession:Lcom/google/android/feedback/FeedbackSession;
    :goto_0
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    .line 229
    :cond_1
    return-void

    .line 223
    .end local v0           #newSession:Lcom/google/android/feedback/FeedbackSession;
    :cond_2
    new-instance v0, Lcom/google/android/feedback/FeedbackSession;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/feedback/FeedbackSession;-><init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/app/ApplicationErrorReport;Lcom/google/android/feedback/FeedbackSession$Screenshot;)V

    goto :goto_0
.end method

.method private showPrivacyPolicy()V
    .locals 5

    .prologue
    .line 384
    new-instance v0, Landroid/text/SpannableString;

    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 385
    .local v0, msgString:Landroid/text/SpannableString;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 386
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060019

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 390
    .local v1, privacyMessage:Landroid/app/AlertDialog;
    const/4 v2, -0x1

    const-string v3, "OK"

    new-instance v4, Lcom/google/android/feedback/FeedbackActivity$1;

    invoke-direct {v4, p0}, Lcom/google/android/feedback/FeedbackActivity$1;-><init>(Lcom/google/android/feedback/FeedbackActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 398
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 399
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 400
    return-void
.end method

.method private showTosOnFirstRun()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-virtual {p0, v2}, Lcom/google/android/feedback/FeedbackActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tos_accepted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/feedback/ShowTosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/feedback/FeedbackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 413
    :cond_0
    return-void
.end method


# virtual methods
.method public isUifReport()Z
    .locals 1

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mIsUifRequest:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 417
    if-ne p2, v2, :cond_0

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/feedback/FeedbackActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tos_accepted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/feedback/FeedbackActivity;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 330
    :pswitch_0
    sget-object v1, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    sget-object v1, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {v1, p1}, Lcom/google/android/feedback/FeedbackSession;->onClick(Landroid/view/View;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 317
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackActivity;->showPrivacyPolicy()V

    goto :goto_0

    .line 320
    :pswitch_2
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 321
    .local v0, check:Landroid/widget/Checkable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_0

    .line 325
    .end local v0           #check:Landroid/widget/Checkable;
    :pswitch_3
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 326
    .restart local v0       #check:Landroid/widget/Checkable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x7f080009
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    sput-object v3, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    .line 95
    invoke-static {p0}, Lcom/google/android/feedback/SystemLogFetcher;->setListener(Lcom/google/android/feedback/SystemLogFetcher$Listener;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.feedback.SCREENSHOT_EXTRA"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 99
    .local v1, parcelledData:Landroid/os/Parcelable;
    const-string v3, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationErrorReport;

    .line 101
    .local v2, report:Landroid/app/ApplicationErrorReport;
    iget v3, v2, Landroid/app/ApplicationErrorReport;->type:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/feedback/FeedbackActivity;->mIsUifRequest:Z

    .line 103
    invoke-direct {p0, v0, v1}, Lcom/google/android/feedback/FeedbackActivity;->initContentView(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 105
    invoke-direct {p0}, Lcom/google/android/feedback/FeedbackActivity;->showTosOnFirstRun()V

    .line 107
    if-nez p1, :cond_0

    .line 108
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/FeedbackActivity;->createFeedbackSession(Landroid/content/Intent;Landroid/os/Parcelable;Landroid/app/ApplicationErrorReport;)V

    .line 110
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/feedback/SystemLogFetcher;->setListener(Lcom/google/android/feedback/SystemLogFetcher$Listener;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    return-void
.end method

.method public onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "systemLog"
    .parameter "eventLog"

    .prologue
    .line 357
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/FeedbackSession;

    .line 358
    .local v1, session:Lcom/google/android/feedback/FeedbackSession;
    invoke-virtual {v1, p1, p2}, Lcom/google/android/feedback/FeedbackSession;->onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    .end local v1           #session:Lcom/google/android/feedback/FeedbackSession;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 343
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->popSession()V

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 153
    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationErrorReport;

    .line 154
    .local v0, report:Landroid/app/ApplicationErrorReport;
    iget v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/feedback/FeedbackActivity;->mIsUifRequest:Z

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 157
    iget-boolean v1, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-nez v1, :cond_0

    .line 158
    const-string v1, "com.android.feedback.SCREENSHOT_EXTRA"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/feedback/FeedbackActivity;->createFeedbackSession(Landroid/content/Intent;Landroid/os/Parcelable;Landroid/app/ApplicationErrorReport;)V

    .line 161
    :cond_0
    return-void

    .line 154
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, cnt:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "feedback.SESSION_BUNDLE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 305
    iget-boolean v3, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    sget-object v3, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {v3}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    .line 308
    :cond_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 301
    .local v2, stateBundle:Landroid/os/Bundle;
    sget-object v3, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/feedback/FeedbackSession;

    invoke-direct {v4, p0, v2}, Lcom/google/android/feedback/FeedbackSession;-><init>(Lcom/google/android/feedback/FeedbackActivity;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    add-int/lit8 v0, v0, 0x1

    .line 303
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, cnt:I
    sget-object v5, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/feedback/FeedbackSession;

    .line 279
    .local v3, session:Lcom/google/android/feedback/FeedbackSession;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v4, stateBundle:Landroid/os/Bundle;
    invoke-virtual {v3, v4}, Lcom/google/android/feedback/FeedbackSession;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feedback.SESSION_BUNDLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 284
    goto :goto_0

    .line 285
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #session:Lcom/google/android/feedback/FeedbackSession;
    .end local v4           #stateBundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 266
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    .line 269
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 257
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->onStop()V

    .line 260
    :cond_0
    return-void
.end method

.method public popSession()V
    .locals 3

    .prologue
    .line 236
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/FeedbackSession;

    .line 238
    .local v0, oldTop:Lcom/google/android/feedback/FeedbackSession;
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/google/android/feedback/FeedbackSession;->onStop()V

    .line 243
    .end local v0           #oldTop:Lcom/google/android/feedback/FeedbackSession;
    :cond_0
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/google/android/feedback/FeedbackActivity;->finish()V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    sget-object v2, Lcom/google/android/feedback/FeedbackActivity;->mSessionStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/FeedbackSession;

    .line 247
    .local v1, top:Lcom/google/android/feedback/FeedbackSession;
    iget-boolean v2, p0, Lcom/google/android/feedback/FeedbackActivity;->mStarted:Z

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v1}, Lcom/google/android/feedback/FeedbackSession;->onStart()V

    goto :goto_0
.end method

.method public runSendService()V
    .locals 2

    .prologue
    .line 433
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/feedback/FeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/feedback/FeedbackActivity$2;-><init>(Lcom/google/android/feedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method sendErrorReport(Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 1
    .parameter "report"

    .prologue
    .line 406
    new-instance v0, Lcom/google/android/feedback/SaveReportThread;

    invoke-direct {v0, p0, p1}, Lcom/google/android/feedback/SaveReportThread;-><init>(Lcom/google/android/feedback/FeedbackActivity;Lcom/google/android/feedback/ExtendedErrorReport;)V

    invoke-virtual {v0}, Lcom/google/android/feedback/SaveReportThread;->start()V

    .line 407
    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 460
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 461
    .local v2, viewChooser:Landroid/widget/FrameLayout;
    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, progressBar:Landroid/view/View;
    const v3, 0x7f080007

    invoke-virtual {p0, v3}, Lcom/google/android/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, feedbackView:Landroid/view/View;
    if-eqz p1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 466
    return-void

    :cond_0
    move v3, v5

    .line 464
    goto :goto_0

    :cond_1
    move v5, v4

    .line 465
    goto :goto_1
.end method

.method public showToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 451
    sget-object v0, Lcom/google/android/feedback/FeedbackActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/feedback/FeedbackActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/feedback/FeedbackActivity$3;-><init>(Lcom/google/android/feedback/FeedbackActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method
