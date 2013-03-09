.class public Lcom/google/android/voicesearch/Hints;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/Hints$HintData;
    }
.end annotation


# static fields
.field private static final HIDE_HINTS_BROADCAST:Landroid/content/Intent;

.field private static final QSB_WIDGET_COMPONENT:Landroid/content/ComponentName;

.field private static final SHOW_HINTS_BROADCAST:Landroid/content/Intent;

.field private static final sAppropriateContextsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sVerboseHintContexts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "com.google.android.googlequicksearchbox/.SearchWidgetProvider"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/Hints;->QSB_WIDGET_COMPONENT:Landroid/content/ComponentName;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quicksearchbox.action.HIDE_VOICE_SEARCH_HINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/voicesearch/Hints;->QSB_WIDGET_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/Hints;->HIDE_HINTS_BROADCAST:Landroid/content/Intent;

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quicksearchbox.action.SHOW_VOICE_SEARCH_HINT_NOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/voicesearch/Hints;->QSB_WIDGET_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/Hints;->SHOW_HINTS_BROADCAST:Landroid/content/Intent;

    .line 65
    invoke-static {}, Lcom/google/android/voicesearch/Hints;->buildVerboseHintContexts()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/Hints;->sVerboseHintContexts:Ljava/util/HashSet;

    .line 76
    invoke-static {}, Lcom/google/android/voicesearch/Hints;->buildAppropriateContextsMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/Hints;->sAppropriateContextsMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method private static final buildAppropriateContextsMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v0
.end method

.method private static final buildVerboseHintContexts()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v0
.end method

.method private static getHintIfAppropriate(IILjava/util/Map;Lcom/google/android/voicesearch/actions/ActionCounter;I)Lcom/google/android/voicesearch/Hints$HintData;
    .locals 6
    .parameter "actionType"
    .parameter "hintContext"
    .parameter
    .parameter "actionCounter"
    .parameter "maxActionCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;",
            "Lcom/google/android/voicesearch/actions/ActionCounter;",
            "I)",
            "Lcom/google/android/voicesearch/Hints$HintData;"
        }
    .end annotation

    .prologue
    .local p2, actionsSupportedOnDevice:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/voicesearch/Hints$HintData;>;"
    const/4 v1, 0x0

    .line 210
    sget-object v2, Lcom/google/android/voicesearch/Hints;->sAppropriateContextsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 211
    .local v0, appropriateContexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v1

    .line 214
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    invoke-virtual {p3, p0}, Lcom/google/android/voicesearch/actions/ActionCounter;->getActionPerformedCount(I)J

    move-result-wide v2

    int-to-long v4, p4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 226
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/Hints$HintData;

    goto :goto_0
.end method

.method public static getHints(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "language"
    .parameter "hintContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/Hints$HintData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static/range {p0 .. p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v6

    .line 165
    .local v6, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-static/range {p0 .. p0}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v10

    .line 168
    .local v10, languagePrefManager:Lcom/google/android/voicesearch/LanguagePrefManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v8, hints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/Hints$HintData;>;"
    const/4 v15, 0x3

    move/from16 v0, p2

    if-ne v0, v15, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/google/android/voicesearch/Hints;->shouldShowHintsOnSearch(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 204
    :cond_0
    return-object v8

    .line 176
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/voicesearch/GservicesHelper;->getAdvancedFeaturesEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 182
    invoke-virtual {v10}, Lcom/google/android/voicesearch/LanguagePrefManager;->getSupportedActions()Ljava/util/HashMap;

    move-result-object v13

    .line 183
    .local v13, supportedInLanguage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[I>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 184
    .local v4, actions:[I
    if-eqz v4, :cond_0

    .line 189
    new-instance v3, Lcom/google/android/voicesearch/actions/ActionCounter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/voicesearch/actions/ActionCounter;-><init>(Landroid/content/Context;)V

    .line 190
    .local v3, actionCounter:Lcom/google/android/voicesearch/actions/ActionCounter;
    invoke-virtual {v6}, Lcom/google/android/voicesearch/GservicesHelper;->getHintDisplayThreshold()I

    move-result v12

    .line 192
    .local v12, maxActionCount:I
    sget-object v15, Lcom/google/android/voicesearch/Hints;->sVerboseHintContexts:Ljava/util/HashSet;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->getHintsForSupportedActions(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v14

    .line 195
    .local v14, supportedOnDevice:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/voicesearch/Hints$HintData;>;"
    move-object v5, v4

    .local v5, arr$:[I
    array-length v11, v5

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_0

    aget v2, v5, v9

    .line 197
    .local v2, action:I
    move/from16 v0, p2

    invoke-static {v2, v0, v14, v3, v12}, Lcom/google/android/voicesearch/Hints;->getHintIfAppropriate(IILjava/util/Map;Lcom/google/android/voicesearch/actions/ActionCounter;I)Lcom/google/android/voicesearch/Hints$HintData;

    move-result-object v7

    .line 199
    .local v7, hint:Lcom/google/android/voicesearch/Hints$HintData;
    if-eqz v7, :cond_2

    .line 200
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public static shouldShowHintsOnSearch(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 230
    const-string v0, "VoiceSearchPreferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showHintsOnSearch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
