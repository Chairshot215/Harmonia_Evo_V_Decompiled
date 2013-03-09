.class public Lcom/google/android/voicesearch/actions/ShowWebResultAction;
.super Lcom/google/android/voicesearch/actions/VoiceAction;
.source "ShowWebResultAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/voicesearch/actions/ShowWebResultAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private final mHtml:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;

.field private final mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction$1;

    invoke-direct {v0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction$1;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "query"
    .parameter "html"
    .parameter "url"
    .parameter "showDisambig"

    .prologue
    const/4 v5, 0x0

    .line 82
    const/16 v2, 0x8

    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    const-string v4, "browser"

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/google/android/voicesearch/util/XGeoEncoder;

    invoke-direct {v0}, Lcom/google/android/voicesearch/util/XGeoEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;

    .line 85
    iput-object p2, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/VoiceAction;-><init>(Landroid/os/Parcel;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/google/android/voicesearch/util/XGeoEncoder;

    invoke-direct {v0}, Lcom/google/android/voicesearch/util/XGeoEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/voicesearch/actions/ShowWebResultAction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getSafeSearchSetting(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 198
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v2, "safeSearch"

    const-string v3, "moderate"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, safeSearch:Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "off"

    .line 206
    :goto_0
    return-object v2

    .line 203
    :cond_0
    const-string v2, "strict"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const-string v2, "strict"

    goto :goto_0

    .line 206
    :cond_1
    const-string v2, "images"

    goto :goto_0
.end method

.method private getSearchUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "searchQuery"
    .parameter "sendLocation"

    .prologue
    .line 171
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v3

    .line 174
    .local v3, helper:Lcom/google/android/voicesearch/GservicesHelper;
    if-nez p2, :cond_1

    const-string v4, ""

    .line 175
    .local v4, query:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getSearchUrlPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, fullUrl:Ljava/lang/StringBuilder;
    const-string v5, "&safe="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getSafeSearchSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v5, "&hl="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/android/voicesearch/LanguagePrefManager;->getHlParameter()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v5, "&gl="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    if-eqz p3, :cond_0

    .line 182
    const-string v5, "&action=devloc"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    .local v1, encodedQuery:Ljava/lang/String;
    :goto_1
    const-string v5, "&q="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v1           #encodedQuery:Ljava/lang/String;
    .end local v2           #fullUrl:Ljava/lang/StringBuilder;
    .end local v4           #query:Ljava/lang/String;
    :cond_1
    move-object v4, p2

    .line 174
    goto :goto_0

    .line 188
    .restart local v2       #fullUrl:Ljava/lang/StringBuilder;
    .restart local v4       #query:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .restart local v1       #encodedQuery:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getCountdownIcon()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f020023

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getDeviceCapabilityManager()Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v0

    .line 225
    .local v0, device:Lcom/google/android/voicesearch/DeviceCapabilityManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/voicesearch/DeviceCapabilityManager;->supportsIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->getIntent(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    .line 236
    :goto_0
    return-object v2

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/voicesearch/LocationHelper;->shouldSendLocation()Z

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getSearchUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getIntentData(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1
    .parameter "context"

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentExtras(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 23
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, alternativeActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    if-nez p2, :cond_0

    .line 242
    const/4 v7, 0x0

    .line 309
    :goto_0
    return-object v7

    .line 245
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v7, extras:Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLocationHelper()Lcom/google/android/voicesearch/LocationHelper;

    move-result-object v14

    .line 251
    .local v14, locationUtils:Lcom/google/android/voicesearch/LocationHelper;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v16, strings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v18, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v9, htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 256
    .local v19, voiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v3, v19

    .line 260
    check-cast v3, Lcom/google/android/voicesearch/actions/ShowWebResultAction;

    .line 261
    .local v3, action:Lcom/google/android/voicesearch/actions/ShowWebResultAction;
    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getQuery()Ljava/lang/String;

    move-result-object v15

    .line 262
    .local v15, query:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getUrl()Ljava/lang/String;

    move-result-object v17

    .line 263
    .local v17, url:Ljava/lang/String;
    if-nez v17, :cond_2

    .line 264
    invoke-interface {v14}, Lcom/google/android/voicesearch/LocationHelper;->shouldSendLocation()Z

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getSearchUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 267
    :cond_2
    move-object/from16 v0, p0

    if-ne v3, v0, :cond_3

    const/4 v11, 0x0

    .line 268
    .local v11, index:I
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 270
    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->getHtml()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 267
    .end local v11           #index:I
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_2

    .line 272
    .end local v3           #action:Lcom/google/android/voicesearch/actions/ShowWebResultAction;
    .end local v15           #query:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    .end local v19           #voiceAction:Lcom/google/android/voicesearch/actions/VoiceAction;
    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    aput-object v20, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    .line 273
    .local v5, baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v20, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    const-string v20, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 277
    const-string v20, "android.speech.extras.VOICE_SEARCH_RESULT_HTML"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 279
    const-string v20, "android.speech.extras.VOICE_SEARCH_RESULT_HTML_BASE_URLS"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 283
    const-string v20, "com.android.browser.application_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_5
    const/4 v8, 0x0

    .line 287
    .local v8, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v4, b:Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getCookieStore()Lcom/google/android/voicesearch/util/CookieStore;

    move-result-object v6

    .line 289
    .local v6, cookieStore:Lcom/google/android/voicesearch/util/CookieStore;
    const-string v20, "X-Masf-Cookie"

    invoke-virtual {v6}, Lcom/google/android/voicesearch/util/CookieStore;->getCookie()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-interface {v14}, Lcom/google/android/voicesearch/LocationHelper;->getLocation()Landroid/location/Location;

    move-result-object v13

    .line 293
    .local v13, location:Landroid/location/Location;
    if-eqz v13, :cond_6

    .line 294
    const-string v20, "X-Geo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mXGeoEncoder:Lcom/google/android/voicesearch/util/XGeoEncoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/google/android/voicesearch/util/XGeoEncoder;->encodeLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_6
    invoke-interface {v14}, Lcom/google/android/voicesearch/LocationHelper;->getGeoPosition()Ljava/lang/String;

    move-result-object v12

    .line 299
    .local v12, loc:Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 300
    const-string v20, "Geo-Position"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v4, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/google/android/voicesearch/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    .line 304
    const-string v20, "android.speech.extras.EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 307
    const-string v20, "android.speech.extras.SOURCE_IS_GOOGLE"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public getListIcon()I
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f020024

    return v0
.end method

.method public getListTitleHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getQsbIcon()I
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f020025

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const-string v0, "android.intent.action.WEB_SEARCH"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportedOnDevice(Landroid/content/Context;Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z
    .locals 1
    .parameter "context"
    .parameter "device"

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public setForwardApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public shouldPersistDisambig()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/google/android/voicesearch/actions/VoiceAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mHtml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;->mApplicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method
