.class public Lcom/google/android/voicesearch/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDictationErrorMessageId(I)I
    .locals 1
    .parameter "errorType"

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 154
    invoke-static {p0}, Lcom/google/android/voicesearch/StringUtils;->getErrorMessageId(I)I

    move-result v0

    :goto_0
    return v0

    .line 152
    :pswitch_0
    const v0, 0x7f0a0709

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorMessageId(I)I
    .locals 1
    .parameter "errorType"

    .prologue
    .line 125
    packed-switch p0, :pswitch_data_0

    .line 142
    :pswitch_0
    const v0, 0x7f0a070a

    :goto_0
    return v0

    .line 128
    :pswitch_1
    const v0, 0x7f0a0704

    goto :goto_0

    .line 130
    :pswitch_2
    const v0, 0x7f0a0706

    goto :goto_0

    .line 132
    :pswitch_3
    const v0, 0x7f0a0705

    goto :goto_0

    .line 134
    :pswitch_4
    const v0, 0x7f0a0708

    goto :goto_0

    .line 136
    :pswitch_5
    const v0, 0x7f0a0703

    goto :goto_0

    .line 138
    :pswitch_6
    const v0, 0x7f0a0707

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getStringResourceOrGservicesOverride(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 109
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 112
    .local v0, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, resourceName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/GservicesHelper;->getStringResourceOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, override:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 117
    .end local v1           #override:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #override:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "language"
    .parameter "prefix"
    .parameter "actionPrefix"
    .parameter "slotSuffix"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v3

    .line 66
    .local v3, helper:Lcom/google/android/voicesearch/GservicesHelper;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x2d

    const/16 v9, 0x5f

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, stringName:Ljava/lang/String;
    if-eqz p4, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    :cond_0
    invoke-virtual {v3, v6}, Lcom/google/android/voicesearch/GservicesHelper;->getStringResourceOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, gservicesOverride:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p4

    .line 100
    .end local p4
    :cond_1
    :goto_0
    return-object p4

    .line 82
    .restart local p4
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 83
    .local v5, res:Landroid/content/res/Resources;
    const-string v7, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 84
    .local v4, id:I
    if-eqz v4, :cond_1

    .line 91
    :try_start_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    .local v0, charSequence:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object p4, v0

    .line 100
    goto :goto_0

    .line 92
    .end local v0           #charSequence:Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v0, ""

    .restart local v0       #charSequence:Ljava/lang/CharSequence;
    goto :goto_1
.end method
