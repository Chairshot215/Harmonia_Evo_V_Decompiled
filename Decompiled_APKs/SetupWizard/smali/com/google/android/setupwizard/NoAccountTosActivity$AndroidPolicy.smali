.class Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;
.super Ljava/lang/Object;
.source "NoAccountTosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/NoAccountTosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidPolicy"
.end annotation


# instance fields
.field private final mFallbackUrl:Ljava/lang/String;

.field private final mGservicesProperty:Ljava/lang/String;

.field private final mTitleResourceId:I

.field final synthetic this$0:Lcom/google/android/setupwizard/NoAccountTosActivity;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/NoAccountTosActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "titleId"
    .parameter "gsProperty"
    .parameter "fallback"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->this$0:Lcom/google/android/setupwizard/NoAccountTosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p2, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mTitleResourceId:I

    .line 102
    iput-object p3, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public getPrettyUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "context"

    .prologue
    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->getSecureUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "context"

    .prologue
    .line 111
    iget-object v6, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, url:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    const-string v6, "SetupWizard"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    const-string v6, "SetupWizard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mGservicesProperty:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not in gservices, using: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v5, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mFallbackUrl:Ljava/lang/String;

    .line 122
    :cond_1
    const-string v6, "%m"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 125
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 126
    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v6, :cond_7

    .line 127
    const-string v6, "%m"

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 137
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_2
    :goto_0
    const-string v6, "%s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 139
    .local v1, locale:Ljava/util/Locale;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, tmp:Ljava/lang/String;
    const-string v6, "%s"

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .end local v1           #locale:Ljava/util/Locale;
    .end local v4           #tmp:Ljava/lang/String;
    :cond_3
    const-string v6, "%y"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 147
    .restart local v1       #locale:Ljava/util/Locale;
    const-string v6, "%y"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .end local v1           #locale:Ljava/util/Locale;
    :cond_4
    const-string v6, "%z"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 155
    :try_start_1
    const-string v6, "phone"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 157
    .local v3, telephony:Landroid/telephony/TelephonyManager;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 158
    .restart local v0       #config:Landroid/content/res/Configuration;
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 160
    if-eqz v3, :cond_8

    iget v6, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v6, :cond_8

    .line 161
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, simCountryIso:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 163
    const-string v2, "us"

    .line 165
    :cond_5
    const-string v6, "%z"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 177
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v2           #simCountryIso:Ljava/lang/String;
    .end local v3           #telephony:Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_1
    return-object v5

    .line 131
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_7
    :try_start_2
    const-string v6, "%m"

    const-string v7, "%s"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 170
    .restart local v3       #telephony:Landroid/telephony/TelephonyManager;
    :cond_8
    :try_start_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 171
    .restart local v1       #locale:Ljava/util/Locale;
    const-string v6, "%z"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    goto :goto_1

    .line 174
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #locale:Ljava/util/Locale;
    .end local v3           #telephony:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 133
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public getTitleResId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/setupwizard/NoAccountTosActivity$AndroidPolicy;->mTitleResourceId:I

    return v0
.end method
