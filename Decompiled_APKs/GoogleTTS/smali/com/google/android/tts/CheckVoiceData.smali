.class public Lcom/google/android/tts/CheckVoiceData;
.super Landroid/app/Activity;
.source "CheckVoiceData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private filter(Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, in:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, constraint:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    .local v2, s:Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v2           #s:Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static/range {p0 .. p0}, Lcom/google/android/tts/GoogleTtsApplication;->get(Landroid/content/Context;)Lcom/google/android/tts/GoogleTtsApplication;

    move-result-object v1

    .line 26
    .local v1, app:Lcom/google/android/tts/GoogleTtsApplication;
    invoke-virtual {v1}, Lcom/google/android/tts/GoogleTtsApplication;->getVoiceDataManager()Lcom/google/android/tts/voicepack/VoiceDataManager;

    move-result-object v14

    .line 27
    .local v14, voiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;
    invoke-virtual {v1}, Lcom/google/android/tts/GoogleTtsApplication;->getMetadataManager()Lcom/google/android/tts/voicepack/MetadataManager;

    move-result-object v9

    .line 29
    .local v9, metadataManager:Lcom/google/android/tts/voicepack/MetadataManager;
    new-instance v7, Lcom/google/android/tts/local/LangCountryHelper;

    invoke-direct {v7, v14, v9}, Lcom/google/android/tts/local/LangCountryHelper;-><init>(Lcom/google/android/tts/voicepack/VoiceDataManager;Lcom/google/android/tts/voicepack/MetadataManager;)V

    .line 33
    .local v7, helper:Lcom/google/android/tts/local/LangCountryHelper;
    invoke-virtual {v7}, Lcom/google/android/tts/local/LangCountryHelper;->getLanguages()[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 36
    .local v3, availableLanguages:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v15, "eng-usa"

    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v15, "eng-gbr"

    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v9}, Lcom/google/android/tts/voicepack/MetadataManager;->forceEvictionAndUpdate()V

    .line 45
    invoke-virtual {v9}, Lcom/google/android/tts/voicepack/MetadataManager;->getDownloadableLocales()Ljava/util/Set;

    move-result-object v4

    .line 47
    .local v4, availableServerLangs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v15

    invoke-direct {v2, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .local v2, availableLangList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v13, unavailableLangList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 52
    .local v12, s:Ljava/lang/String;
    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 53
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v12           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/tts/CheckVoiceData;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "checkVoiceDataFor"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 62
    .local v5, checkFor:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 63
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 64
    .local v6, checkForSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/google/android/tts/CheckVoiceData;->filter(Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/google/android/tts/CheckVoiceData;->filter(Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v13

    .line 68
    .end local v6           #checkForSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v11, returnVal:Landroid/content/Intent;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 70
    const-string v15, "availableVoices"

    invoke-virtual {v11, v15, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 74
    :cond_3
    const/4 v10, 0x1

    .line 75
    .local v10, returnCode:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_5

    .line 78
    invoke-virtual {v14}, Lcom/google/android/tts/voicepack/VoiceDataManager;->hasDownloadedLocales()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 79
    const-string v15, ""

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_4
    :goto_1
    const-string v15, "unavailableVoices"

    invoke-virtual {v11, v15, v13}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 88
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/tts/CheckVoiceData;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/tts/CheckVoiceData;->finish()V

    .line 90
    return-void

    .line 82
    :cond_5
    const/4 v10, -0x2

    goto :goto_1
.end method
