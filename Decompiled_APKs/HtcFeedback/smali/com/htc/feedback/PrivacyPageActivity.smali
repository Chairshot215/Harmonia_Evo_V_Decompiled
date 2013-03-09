.class public Lcom/htc/feedback/PrivacyPageActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "PrivacyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/feedback/PrivacyPageActivity$Client;,
        Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;
    }
.end annotation


# static fields
.field public static final DISPLAY_ERROR_REPORT_TOS:Ljava/lang/String; = "display_error_report_tos"

.field public static final LOCAL_PRIVACY_STATEMENT:Ljava/lang/String; = "local_privacy_statement"

.field private static final LOG:Z = false

.field public static final PRELOAD_TOS_VERSION:Ljava/lang/String; = "1.1"

.field public static final READ_EXP_TOS:Ljava/lang/String; = "read_exp_tos"

.field public static final RESULT_CODE_ACCEPT:I = 0x7d0

.field public static final RESULT_CODE_BACK:I = 0x7d2

.field public static final RESULT_CODE_DECLINE:I = 0x7d1

.field public static final RESULT_CODE_SETTING:I = 0x7d3

.field public static final REVIEW_ACCEPTED_TOS:Ljava/lang/String; = "review_accepted_tos"

.field private static final SHOW_ACCEPT_DECLINE_BUTTON:I = 0x2

.field private static final SHOW_CLOSE_BUTTON:I = 0x1

.field private static final SHOW_SETTING_CANCEL_BUTTON:I = 0x3

.field private static final SHOW_UI_COMPONENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PrivacyPageActivity"

.field private static URL1:Ljava/lang/String;

.field private static URL2:Ljava/lang/String;

.field private static URL3:Ljava/lang/String;

.field private static final sPrivacyVersionPattern:Ljava/util/regex/Pattern;

.field private static final sURLencodePattern:Ljava/util/regex/Pattern;


# instance fields
.field private errorReportTOS:Z

.field private hasNetwork:Z

.field private isActivityDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mParentPanel:Landroid/view/View;

.field private mTitleDivider:Landroid/view/View;

.field private mURL:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

.field private readExpTos:Z

.field private reviewAcceptedTOS:Z

.field private showOobeTos:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 54
    const-string v0, "https://www.htcsense.com/"

    sput-object v0, Lcom/htc/feedback/PrivacyPageActivity;->URL1:Ljava/lang/String;

    .line 55
    const-string v0, "/static/privacy-tell-htc"

    sput-object v0, Lcom/htc/feedback/PrivacyPageActivity;->URL2:Ljava/lang/String;

    .line 56
    const-string v0, ".html?region="

    sput-object v0, Lcom/htc/feedback/PrivacyPageActivity;->URL3:Ljava/lang/String;

    .line 74
    const-string v0, "%u?([0-9a-f]{2,4})|%[^0-9a-f]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/feedback/PrivacyPageActivity;->sURLencodePattern:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "Privacy Statement version (\\d+.\\d+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/feedback/PrivacyPageActivity;->sPrivacyVersionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->isActivityDestroyed:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->reviewAcceptedTOS:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->hasNetwork:Z

    .line 88
    iput-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->errorReportTOS:Z

    .line 89
    iput-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->showOobeTos:Z

    .line 90
    iput-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->readExpTos:Z

    .line 92
    new-instance v0, Lcom/htc/feedback/PrivacyPageActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/feedback/PrivacyPageActivity$1;-><init>(Lcom/htc/feedback/PrivacyPageActivity;)V

    iput-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/htc/feedback/PrivacyPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->isActivityDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mParentPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/feedback/PrivacyPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/feedback/PrivacyPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/feedback/PrivacyPageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/htc/feedback/PrivacyPageActivity;->sPrivacyVersionPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/feedback/PrivacyPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/feedback/PrivacyPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/feedback/PrivacyPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->readExpTos:Z

    return v0
.end method

.method public static decodeURLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "urlString"

    .prologue
    const/4 v9, 0x1

    .line 468
    sget-object v7, Lcom/htc/feedback/PrivacyPageActivity;->sURLencodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 469
    .local v4, m:Ljava/util/regex/Matcher;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .local v6, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 471
    const-string v3, ""

    .line 472
    .local v3, escapedCode:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, code:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, number:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 476
    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 477
    .local v1, character:I
    new-array v0, v9, [C

    .line 478
    .local v0, chArray:[C
    const/4 v7, 0x0

    int-to-char v8, v1

    aput-char v8, v0, v7

    .line 479
    new-instance v3, Ljava/lang/String;

    .end local v3           #escapedCode:Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 484
    .end local v0           #chArray:[C
    .end local v1           #character:I
    .restart local v3       #escapedCode:Ljava/lang/String;
    :goto_1
    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 485
    const-string v3, "%25"

    .line 487
    :cond_0
    invoke-virtual {v4, v6, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 481
    :cond_1
    move-object v3, v2

    goto :goto_1

    .line 489
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #escapedCode:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private generateUrlWithSpecificVersion(Z)V
    .locals 8
    .parameter "isSpecificVersion"

    .prologue
    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, language:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, country:Ljava/lang/String;
    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL3:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, endStr:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, version:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2d

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    .line 317
    .end local v4           #version:Ljava/lang/String;
    :goto_1
    const-string v5, "PrivacyPageActivity"

    iget-object v6, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #endStr:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    :goto_2
    return-void

    .line 309
    .restart local v0       #country:Ljava/lang/String;
    .restart local v3       #language:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL3:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #endStr:Ljava/lang/String;
    goto :goto_0

    .line 316
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #endStr:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 319
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "PrivacyPageActivity"

    const-string v6, "fail to get language or country code"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/feedback/PrivacyPageActivity;->URL3:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "US"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    goto :goto_2
.end method

.method private getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_profile_privacy_version"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 398
    .local v1, version:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 394
    .end local v1           #version:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PrivacyPageActivity"

    const-string v3, "error in getting accepted version"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v1, "1.1"

    .restart local v1       #version:Ljava/lang/String;
    goto :goto_0
.end method

.method private initButtonLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "review_accepted_tos"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->reviewAcceptedTOS:Z

    .line 249
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "display_error_report_tos"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->errorReportTOS:Z

    .line 250
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "local_privacy_statement"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->showOobeTos:Z

    .line 251
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "read_exp_tos"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->readExpTos:Z

    .line 253
    iget-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->errorReportTOS:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->showOobeTos:Z

    if-eqz v3, :cond_2

    .line 254
    :cond_0
    invoke-direct {p0, v7}, Lcom/htc/feedback/PrivacyPageActivity;->setButtonLayout(I)V

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->setupAlert()V

    .line 278
    return-void

    .line 256
    :cond_2
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 258
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->hasNetwork:Z

    .line 259
    iget-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->reviewAcceptedTOS:Z

    if-eqz v3, :cond_6

    .line 260
    invoke-direct {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, version:Ljava/lang/String;
    const-string v3, "1.1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    invoke-direct {p0, v4}, Lcom/htc/feedback/PrivacyPageActivity;->setButtonLayout(I)V

    goto :goto_0

    .end local v2           #version:Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 258
    goto :goto_1

    .line 264
    .restart local v2       #version:Ljava/lang/String;
    :cond_4
    iget-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->hasNetwork:Z

    if-nez v3, :cond_5

    .line 265
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->setButtonLayout(I)V

    goto :goto_0

    .line 267
    :cond_5
    invoke-direct {p0, v4}, Lcom/htc/feedback/PrivacyPageActivity;->setButtonLayout(I)V

    .line 268
    invoke-direct {p0, v4}, Lcom/htc/feedback/PrivacyPageActivity;->generateUrlWithSpecificVersion(Z)V

    goto :goto_0

    .line 271
    .end local v2           #version:Ljava/lang/String;
    :cond_6
    iget-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->readExpTos:Z

    if-eqz v3, :cond_1

    .line 272
    invoke-direct {p0, v7}, Lcom/htc/feedback/PrivacyPageActivity;->setButtonLayout(I)V

    .line 273
    iget-boolean v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->hasNetwork:Z

    if-eqz v3, :cond_1

    .line 274
    invoke-direct {p0, v5}, Lcom/htc/feedback/PrivacyPageActivity;->generateUrlWithSpecificVersion(Z)V

    goto :goto_0
.end method

.method private loadNoDataConnectionPage()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/feedback/PrivacyPageActivity;->generateUrlWithSpecificVersion(Z)V

    .line 359
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->setInitialScale(I)V

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v0, "<html><body>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/htc/feedback/PrivacyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v0, "</body></html>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/feedback/PrivacyPageActivity;->decodeURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private loadPrivacyPage(I)V
    .locals 12
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v11, sb:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 372
    .local v8, input:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 374
    .end local v8           #input:Ljava/io/InputStreamReader;
    .local v9, input:Ljava/io/InputStreamReader;
    const/16 v0, 0x2000

    :try_start_1
    new-array v6, v0, [C

    .line 375
    .local v6, buf:[C
    :goto_0
    invoke-virtual {v9, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    .local v10, num:I
    if-lez v10, :cond_1

    .line 376
    const/4 v0, 0x0

    invoke-virtual {v11, v6, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 377
    .end local v6           #buf:[C
    .end local v10           #num:I
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 378
    .end local v9           #input:Ljava/io/InputStreamReader;
    .local v7, e:Ljava/io/IOException;
    .restart local v8       #input:Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    const-string v0, "PrivacyPageActivity"

    const-string v2, "failed to load TOS"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    if-eqz v8, :cond_0

    .line 382
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 386
    .end local v7           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    const-string v0, "1.1"

    iput-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/feedback/PrivacyPageActivity;->decodeURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void

    .line 380
    .end local v8           #input:Ljava/io/InputStreamReader;
    .restart local v6       #buf:[C
    .restart local v9       #input:Ljava/io/InputStreamReader;
    .restart local v10       #num:I
    :cond_1
    if-eqz v9, :cond_3

    .line 382
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v9

    .line 384
    .end local v9           #input:Ljava/io/InputStreamReader;
    .restart local v8       #input:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 383
    .end local v8           #input:Ljava/io/InputStreamReader;
    .restart local v9       #input:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v0

    move-object v8, v9

    .line 384
    .end local v9           #input:Ljava/io/InputStreamReader;
    .restart local v8       #input:Ljava/io/InputStreamReader;
    goto :goto_2

    .line 380
    .end local v6           #buf:[C
    .end local v10           #num:I
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_2

    .line 382
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 384
    :cond_2
    :goto_4
    throw v0

    .line 383
    .restart local v7       #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    goto :goto_4

    .line 380
    .end local v8           #input:Ljava/io/InputStreamReader;
    .restart local v9       #input:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #input:Ljava/io/InputStreamReader;
    .restart local v8       #input:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 377
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v8           #input:Ljava/io/InputStreamReader;
    .restart local v6       #buf:[C
    .restart local v9       #input:Ljava/io/InputStreamReader;
    .restart local v10       #num:I
    :cond_3
    move-object v8, v9

    .end local v9           #input:Ljava/io/InputStreamReader;
    .restart local v8       #input:Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private setButtonLayout(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 281
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 285
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 286
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 290
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 294
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 295
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 296
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 5
    .parameter "version"

    .prologue
    .line 403
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 404
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_profile_privacy_version"

    invoke-static {v2, v3, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    const-string v2, "PrivacyPageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, e1:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_profile_privacy_version"

    const-string v4, "1.0"

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 409
    const-string v2, "PrivacyPageActivity"

    const-string v3, "error in setting parsed version"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 410
    :catch_1
    move-exception v1

    .line 411
    .local v1, e2:Ljava/lang/Exception;
    const-string v2, "PrivacyPageActivity"

    const-string v3, "error in setting default version(1.0)"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v3, 0x7d0

    .line 434
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 435
    iget-boolean v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->showOobeTos:Z

    if-eqz v2, :cond_1

    .line 436
    const-string v2, "1.1"

    invoke-direct {p0, v2}, Lcom/htc/feedback/PrivacyPageActivity;->setVersion(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->setResult(I)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-boolean v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->errorReportTOS:Z

    if-eqz v2, :cond_2

    .line 439
    invoke-virtual {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->setResult(I)V

    goto :goto_0

    .line 440
    :cond_2
    iget-boolean v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->reviewAcceptedTOS:Z

    if-eqz v2, :cond_3

    .line 442
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1           #i:Landroid/content/Intent;
    :goto_1
    const/16 v2, 0x7d3

    invoke-virtual {p0, v2}, Lcom/htc/feedback/PrivacyPageActivity;->setResult(I)V

    goto :goto_0

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PrivacyPageActivity"

    const-string v3, "fail to start wireless setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 448
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-boolean v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->readExpTos:Z

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->mVersion:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/feedback/PrivacyPageActivity;->setVersion(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->setResult(I)V

    goto :goto_0

    .line 452
    :cond_4
    const/4 v2, -0x3

    if-ne p2, v2, :cond_5

    .line 453
    const/16 v2, 0x7d2

    invoke-virtual {p0, v2}, Lcom/htc/feedback/PrivacyPageActivity;->setResult(I)V

    goto :goto_0

    .line 454
    :cond_5
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 455
    const/16 v2, 0x7d1

    invoke-virtual {p0, v2}, Lcom/htc/feedback/PrivacyPageActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 215
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 218
    .local v0, layout:Landroid/widget/RelativeLayout;
    const v3, 0x7f0a0017

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    iput-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    .line 219
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    new-instance v4, Lcom/htc/feedback/PrivacyPageActivity$Client;

    invoke-direct {v4, p0}, Lcom/htc/feedback/PrivacyPageActivity$Client;-><init>(Lcom/htc/feedback/PrivacyPageActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 220
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    invoke-virtual {v3, v6}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->setVisibility(I)V

    .line 221
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const v4, 0x7f070003

    invoke-virtual {p0, v4}, Lcom/htc/feedback/PrivacyPageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 222
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    iput-object v0, v3, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 223
    invoke-direct {p0}, Lcom/htc/feedback/PrivacyPageActivity;->initButtonLayout()V

    .line 225
    const-string v3, "tell_htc.use_stage"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    sget-object v3, Lcom/htc/feedback/PrivacyPageActivity;->URL1:Ljava/lang/String;

    const-string v4, "www"

    const-string v5, "stage"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/htc/feedback/PrivacyPageActivity;->URL1:Ljava/lang/String;

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 230
    .local v1, parentLayout:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 235
    const v3, 0x20200aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mTitleDivider:Landroid/view/View;

    .line 236
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mTitleDivider:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mTitleDivider:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_2
    const v3, 0x20200a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mParentPanel:Landroid/view/View;

    .line 240
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mParentPanel:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/htc/feedback/PrivacyPageActivity;->mParentPanel:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->showDialog(I)V

    .line 245
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 495
    new-instance v0, Lcom/htc/feedback/PrivacyPageActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/htc/feedback/PrivacyPageActivity$2;-><init>(Lcom/htc/feedback/PrivacyPageActivity;Landroid/content/Context;)V

    .line 500
    .local v0, progressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 502
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 503
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 428
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 429
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    invoke-virtual {v0}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->destroy()V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->isActivityDestroyed:Z

    .line 431
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/high16 v3, 0x7f05

    .line 327
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 328
    iget-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->errorReportTOS:Z

    if-nez v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->setInitialScale(I)V

    .line 331
    :cond_0
    iget-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->errorReportTOS:Z

    if-eqz v1, :cond_2

    .line 332
    const v1, 0x7f050001

    invoke-direct {p0, v1}, Lcom/htc/feedback/PrivacyPageActivity;->loadPrivacyPage(I)V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->showOobeTos:Z

    if-eqz v1, :cond_3

    .line 334
    invoke-direct {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->loadPrivacyPage(I)V

    goto :goto_0

    .line 335
    :cond_3
    iget-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->reviewAcceptedTOS:Z

    if-eqz v1, :cond_6

    .line 336
    invoke-direct {p0}, Lcom/htc/feedback/PrivacyPageActivity;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, version:Ljava/lang/String;
    const-string v1, "1.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    invoke-direct {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->loadPrivacyPage(I)V

    goto :goto_0

    .line 340
    :cond_4
    iget-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->hasNetwork:Z

    if-nez v1, :cond_5

    .line 341
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->setInitialScale(I)V

    .line 342
    invoke-direct {p0}, Lcom/htc/feedback/PrivacyPageActivity;->loadNoDataConnectionPage()V

    goto :goto_0

    .line 345
    :cond_5
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v0           #version:Ljava/lang/String;
    :cond_6
    iget-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->readExpTos:Z

    if-eqz v1, :cond_1

    .line 349
    iget-boolean v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->hasNetwork:Z

    if-nez v1, :cond_7

    .line 350
    invoke-direct {p0, v3}, Lcom/htc/feedback/PrivacyPageActivity;->loadPrivacyPage(I)V

    goto :goto_0

    .line 352
    :cond_7
    iget-object v1, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    iget-object v2, p0, Lcom/htc/feedback/PrivacyPageActivity;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 421
    iget-object v0, p0, Lcom/htc/feedback/PrivacyPageActivity;->mWebView:Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;

    invoke-virtual {v0}, Lcom/htc/feedback/PrivacyPageActivity$FeedbackWebView;->stopLoading()V

    .line 422
    return-void
.end method
