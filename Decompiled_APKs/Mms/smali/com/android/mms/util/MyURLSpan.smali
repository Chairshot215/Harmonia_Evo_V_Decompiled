.class public Lcom/android/mms/util/MyURLSpan;
.super Landroid/text/style/URLSpan;
.source "MyURLSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/MyURLSpan$IURLSpanOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyURLSpan"


# instance fields
.field mBrowser:Ljava/util/regex/Matcher;

.field mEmail:Ljava/util/regex/Matcher;

.field mLocation:Ljava/util/regex/Matcher;

.field mPhone:Ljava/util/regex/Matcher;

.field private mURLSpanOnClickLisnter:Lcom/android/mms/util/MyURLSpan$IURLSpanOnClickListener;

.field private p1:Ljava/util/regex/Pattern;

.field private p2:Ljava/util/regex/Pattern;

.field private p3:Ljava/util/regex/Pattern;

.field private p4:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 39
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p1:Ljava/util/regex/Pattern;

    .line 40
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->MMS_WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p2:Ljava/util/regex/Pattern;

    .line 43
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p3:Ljava/util/regex/Pattern;

    .line 48
    :goto_0
    sget-object v0, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p4:Ljava/util/regex/Pattern;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->mURLSpanOnClickLisnter:Lcom/android/mms/util/MyURLSpan$IURLSpanOnClickListener;

    .line 61
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p3:Ljava/util/regex/Pattern;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p1:Ljava/util/regex/Pattern;

    .line 40
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->MMS_WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p2:Ljava/util/regex/Pattern;

    .line 43
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p3:Ljava/util/regex/Pattern;

    .line 48
    :goto_0
    sget-object v0, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p4:Ljava/util/regex/Pattern;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->mURLSpanOnClickLisnter:Lcom/android/mms/util/MyURLSpan$IURLSpanOnClickListener;

    .line 56
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE:Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/android/mms/util/MyURLSpan;->p3:Ljava/util/regex/Pattern;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "widget"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/mms/util/MyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 66
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, tCS:Ljava/lang/CharSequence;
    const-string v10, "Juan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "implement onClick: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->p1:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mEmail:Ljava/util/regex/Matcher;

    .line 74
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->p2:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mBrowser:Ljava/util/regex/Matcher;

    .line 75
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->p3:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mPhone:Ljava/util/regex/Matcher;

    .line 76
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->p4:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mLocation:Ljava/util/regex/Matcher;

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 99
    invoke-static {}, Lcom/android/mms/MmsApp;->isPrimeProject()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 100
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v10, "com.htc.HtcLinkifyDispatcher"

    const-string v11, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    .end local v5           #intent:Landroid/content/Intent;
    :goto_0
    const-string v10, "Goven"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "implement onClick: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    return-void

    .line 107
    .restart local v5       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mEmail:Ljava/util/regex/Matcher;

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mailto:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 122
    const-string v10, "Juan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mEmail found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/util/MyURLSpan;->mEmail:Ljava/util/regex/Matcher;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportActionList()Z

    move-result v10

    if-nez v10, :cond_1

    .line 134
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    const-string v11, "mailto"

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "com.htc.android.mail"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 142
    .end local v5           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 143
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/android/mms/ui/ActionListActivity;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "id"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 150
    const-string v10, "isPhoneNum"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 157
    .end local v5           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mLocation:Ljava/util/regex/Matcher;

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 158
    const-string v10, "Juan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mLocation found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/util/MyURLSpan;->mLocation:Ljava/util/regex/Matcher;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x7b

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 160
    .local v2, index1:I
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 161
    .local v3, index2:I
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x7d

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 162
    .local v4, index3:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v11, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    .local v9, url:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 169
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 175
    .end local v5           #intent:Landroid/content/Intent;
    :catch_3
    move-exception v1

    .line 176
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #index1:I
    .end local v3           #index2:I
    .end local v4           #index3:I
    .end local v9           #url:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mBrowser:Ljava/util/regex/Matcher;

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 180
    const-string v10, "Juan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mBrowser found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/util/MyURLSpan;->mBrowser:Ljava/util/regex/Matcher;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_3
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 187
    .end local v5           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v1

    .line 188
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 195
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    iget-object v10, p0, Lcom/android/mms/util/MyURLSpan;->mPhone:Ljava/util/regex/Matcher;

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 196
    const-string v10, "Juan"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPhone found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/util/MyURLSpan;->mPhone:Ljava/util/regex/Matcher;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tel:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 210
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportActionList()Z

    move-result v10

    if-nez v10, :cond_6

    .line 211
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, phoneNumber:Ljava/lang/String;
    const-string v10, "tel:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 213
    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    :cond_5
    const/4 v10, 0x0

    invoke-static {v6, v10}, Lcom/android/mms/ui/MessageUtils;->getLauchDialerWithPhoneIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 219
    .end local v6           #phoneNumber:Ljava/lang/String;
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/android/mms/ui/ActionListActivity;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "id"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 221
    const-string v10, "isPhoneNum"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 232
    .end local v5           #intent:Landroid/content/Intent;
    :cond_7
    const-string v10, "Juan"

    const-string v11, "none found "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_4
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 239
    .end local v5           #intent:Landroid/content/Intent;
    :catch_5
    move-exception v1

    .line 240
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 249
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_8
    :try_start_5
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    .restart local v5       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 252
    .end local v5           #intent:Landroid/content/Intent;
    :catch_6
    move-exception v1

    .line 253
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public setURLSpanOnClickListener(Lcom/android/mms/util/MyURLSpan$IURLSpanOnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/mms/util/MyURLSpan;->mURLSpanOnClickLisnter:Lcom/android/mms/util/MyURLSpan$IURLSpanOnClickListener;

    .line 269
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 263
    return-void
.end method
