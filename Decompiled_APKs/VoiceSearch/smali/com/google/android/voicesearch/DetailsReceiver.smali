.class public Lcom/google/android/voicesearch/DetailsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DetailsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DetailsReceiver;->isOrderedBroadcast()Z

    move-result v8

    if-nez v8, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v8, "android.speech.action.GET_LANGUAGE_DETAILS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v5

    .line 54
    .local v5, languagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;
    invoke-virtual {v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, languagePreference:Ljava/lang/String;
    const-string v8, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v8, "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    .line 61
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedLanguages()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v7, supportedLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "android.speech.extra.SUPPORTED_LANGUAGES"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    const-string v8, "android.speech.extra.HINT_CONTEXT"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, hintContext:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, hints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {p1, v6, v1}, Lcom/google/android/voicesearch/Hints;->getHints(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/Hints$HintData;

    .line 71
    .local v2, hintData:Lcom/google/android/voicesearch/Hints$HintData;
    invoke-virtual {v2}, Lcom/google/android/voicesearch/Hints$HintData;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v2           #hintData:Lcom/google/android/voicesearch/Hints$HintData;
    :cond_2
    const-string v8, "android.speech.extra.HINT_STRINGS"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    .end local v1           #hintContext:I
    .end local v3           #hints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #supportedLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DetailsReceiver;->setResultExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method
