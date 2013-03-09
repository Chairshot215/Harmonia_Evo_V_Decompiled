.class public Lcom/google/android/voicesearch/speechservice/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/Utils$1;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final DISPLAY_CONTACTS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "is_super_primary"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/voicesearch/speechservice/Utils;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "in_visible_group"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/voicesearch/speechservice/Utils;->DISPLAY_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method private static addFileToAudioProvider(Landroid/content/Context;[B)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "audio"

    .prologue
    .line 371
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "type"

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/google/android/voicesearch/AudioProvider;->getAudioFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V
    .locals 0
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 945
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_0
    return-void
.end method

.method static addMockActions(Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/AudioBuffer;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 11
    .parameter
    .parameter "context"
    .parameter "audioBuffer"
    .parameter "clientReportLogger"
    .parameter "recParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/google/android/voicesearch/speechservice/AudioBuffer;",
            "Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    const/4 v3, 0x0

    .line 188
    const/4 v4, 0x0

    .line 189
    .local v4, mockAction:Lcom/google/android/voicesearch/actions/VoiceAction;
    packed-switch v3, :pswitch_data_0

    .line 220
    :goto_0
    if-eqz v4, :cond_0

    .line 221
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding mocked action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    return-void

    .line 191
    :pswitch_0
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedSendSmsAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v3, p3, p4}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendSmsAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SendSmsAction;

    move-result-object v4

    .line 193
    goto :goto_0

    .line 195
    :pswitch_1
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedSendEmailAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v3, p3, p4}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-result-object v4

    .line 197
    goto :goto_0

    .line 199
    :pswitch_2
    if-nez p2, :cond_1

    const/4 v2, 0x0

    .line 201
    .local v2, audioUri:Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedSendEmailAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    move-object v0, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/voicesearch/speechservice/Utils;->getNoteToSelfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Landroid/net/Uri;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/NoteToSelfAction;

    .end local v4           #mockAction:Lcom/google/android/voicesearch/actions/VoiceAction;
    move-result-object v4

    .line 203
    .restart local v4       #mockAction:Lcom/google/android/voicesearch/actions/VoiceAction;
    goto :goto_0

    .line 199
    .end local v2           #audioUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->getAudio()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/voicesearch/speechservice/Utils;->addFileToAudioProvider(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 205
    :pswitch_3
    new-instance v4, Lcom/google/android/voicesearch/actions/SetAlarmAction;

    .end local v4           #mockAction:Lcom/google/android/voicesearch/actions/VoiceAction;
    const/16 v6, 0xa

    const/16 v7, 0x1e

    new-instance v8, Lcom/google/android/voicesearch/actions/TextValue;

    const-string v0, "wake up lazy"

    invoke-direct {v8, v0}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/CharSequence;)V

    move-object v5, p1

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;Z)V

    .line 207
    .restart local v4       #mockAction:Lcom/google/android/voicesearch/actions/VoiceAction;
    goto :goto_0

    .line 209
    :pswitch_4
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedGoToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->getGoToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/GoToAction;

    move-result-object v4

    .line 210
    goto :goto_0

    .line 212
    :pswitch_5
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedListenToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->getListenToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ListenToAction;

    move-result-object v4

    .line 213
    goto :goto_0

    .line 215
    :pswitch_6
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->createMockedDisplayContactAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->getDisplayContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 217
    .local v10, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/DisplayContactAction;>;"
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final buildClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1204
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1205
    const-string v1, "clientIdOverride"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    if-eqz v0, :cond_0

    .line 1207
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding client id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const-string v0, " os=[Android "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    const-string v1, "Utils"

    const-string v2, "failed to retrieve package info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    const-string v0, "0.0.0"

    goto :goto_1
.end method

.method public static final buildUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1239
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1240
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :goto_0
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1249
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1250
    if-eqz v2, :cond_3

    .line 1251
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1253
    if-eqz v1, :cond_0

    .line 1254
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :cond_0
    :goto_1
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 1263
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1264
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0732

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1268
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1269
    return-object v0

    .line 1244
    :cond_2
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1259
    :cond_3
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static checkAuthTokenStatus(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;Lcom/google/android/voicesearch/util/AccountHelper;)V
    .locals 5
    .parameter "recognizeResponse"
    .parameter "params"
    .parameter "personalizationPrefManager"
    .parameter "accountHelper"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasGaiaResult()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v1

    .line 247
    .local v1, gaiaResult:Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v3

    sget-object v4, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_TOKEN_EXPIRED:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v3

    sget-object v4, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->GAIA_ERROR:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    if-ne v3, v4, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {p3}, Lcom/google/android/voicesearch/util/AccountHelper;->invalidateSpeechPersonalization()V

    .line 259
    .end local v1           #gaiaResult:Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    .line 261
    .local v0, appData:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    .line 266
    .local v2, gaiaStatusList:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->parseGaiaStatusList(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;[Ljava/lang/String;)V

    .line 269
    .end local v0           #appData:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .end local v2           #gaiaStatusList:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;
    :cond_2
    return-void
.end method

.method private static createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .parameter

    .prologue
    .line 1174
    :try_start_0
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->getAmrInputStreamClass()Ljava/lang/Class;

    move-result-object v0

    .line 1175
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/io/InputStream;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1176
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    return-object v0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1180
    :catch_1
    move-exception v0

    .line 1181
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1183
    :catch_2
    move-exception v0

    .line 1184
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1186
    :catch_3
    move-exception v0

    .line 1187
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1189
    :catch_4
    move-exception v0

    .line 1190
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1192
    :catch_5
    move-exception v0

    .line 1193
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1195
    :catch_6
    move-exception v0

    .line 1196
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while instantiating AmrInputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while instantiating AmrInputStream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createMockedDisplayContactAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 3

    .prologue
    .line 492
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v1

    .line 493
    .local v1, interpretation:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->DISPLAY_CONTACT:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 494
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v0

    .line 495
    .local v0, contactsResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    const-string v2, "Voice Mail"

    invoke-virtual {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 497
    invoke-virtual {v1, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setContactsInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 498
    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v2

    return-object v2
.end method

.method private static createMockedGoToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 3

    .prologue
    .line 452
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v1

    .line 453
    .local v1, interpretation:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    sget-object v2, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->GO_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 454
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    .line 455
    .local v0, goToResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    const-string v2, "www.facebook.com"

    invoke-virtual {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->setDisplayUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 456
    const-string v2, "http://www.facebook.com"

    invoke-virtual {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->setUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 457
    const-string v2, "Facebook"

    invoke-virtual {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 458
    invoke-virtual {v1, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setGoToInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 459
    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v2

    return-object v2
.end method

.method private static createMockedListenToAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v0

    .line 464
    .local v0, interpretation:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->LISTEN_TO:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 465
    const-string v1, "peacebone"

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setQuery(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 466
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    return-object v1
.end method

.method private static createMockedSendEmailAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 8

    .prologue
    .line 414
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v5

    .line 415
    .local v5, interpretation:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_EMAIL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v5, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 417
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v6

    .line 420
    .local v6, multislotActionResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v1

    .line 421
    .local v1, actionSlotTo:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    const-string v7, "to"

    invoke-virtual {v1, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 422
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v3

    .line 423
    .local v3, actionSlotValueTo:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v4

    .line 424
    .local v4, contact:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    const-string v7, "Bob Jones"

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 425
    invoke-virtual {v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->addContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 426
    invoke-virtual {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 427
    invoke-virtual {v6, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 437
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    .line 438
    .local v0, actionSlotMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    const-string v7, "message"

    invoke-virtual {v0, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 439
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v2

    .line 440
    .local v2, actionSlotValueMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    const-string v7, "meet you tonight at 8"

    invoke-virtual {v2, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 441
    invoke-virtual {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 442
    invoke-virtual {v6, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 444
    invoke-virtual {v5, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setMultislotActionInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 445
    invoke-virtual {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v7

    return-object v7
.end method

.method private static createMockedSendSmsAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 8

    .prologue
    .line 382
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    move-result-object v5

    .line 383
    .local v5, interpretation:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;
    sget-object v7, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->SEND_SMS:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v5, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 385
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    move-result-object v6

    .line 388
    .local v6, multislotActionResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v1

    .line 389
    .local v1, actionSlotTo:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    const-string v7, "to"

    invoke-virtual {v1, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 390
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v3

    .line 391
    .local v3, actionSlotValueTo:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    move-result-object v4

    .line 392
    .local v4, contact:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;
    const-string v7, "Bob Jones"

    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;

    .line 393
    invoke-virtual {v3, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->addContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 394
    invoke-virtual {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 395
    invoke-virtual {v6, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 397
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    .line 398
    .local v0, actionSlotMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    const-string v7, "message"

    invoke-virtual {v0, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setKey(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 399
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v2

    .line 400
    .local v2, actionSlotValueMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    const-string v7, "i\'ll be 5 minutes late"

    invoke-virtual {v2, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 401
    invoke-virtual {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->setValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    .line 402
    invoke-virtual {v6, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;->addActionSlot(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;

    .line 404
    invoke-virtual {v5, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->setMultislotActionInfo(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;

    .line 406
    invoke-virtual {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v7

    return-object v7
.end method

.method private static getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;
    .locals 6
    .parameter "multislotActionResponseItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 956
    .local v3, slots:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;>;"
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getActionSlotCount()I

    move-result v2

    .line 957
    .local v2, numSlots:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 958
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;->getActionSlot(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    .line 959
    .local v0, actionSlot:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v0           #actionSlot:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    :cond_0
    return-object v3
.end method

.method private static getAmrInputStreamClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1156
    const-string v0, "android.media.AmrInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioPacketSize(I)I
    .locals 3
    .parameter

    .prologue
    .line 1104
    packed-switch p0, :pswitch_data_0

    .line 1113
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :pswitch_1
    const/16 v0, 0xfa0

    .line 1111
    :goto_0
    return v0

    .line 1108
    :pswitch_2
    const/16 v0, 0x7d0

    goto :goto_0

    .line 1111
    :pswitch_3
    const/16 v0, 0x1c0

    goto :goto_0

    .line 1104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getCallBusinessAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallBusinessAction;
    .locals 7
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    const/4 v0, 0x0

    .line 710
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasBusinessInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    const-string v1, "Utils"

    const-string v5, "call business action provided with no business response item"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return-object v0

    .line 715
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getBusinessInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v6

    .line 717
    .local v6, businessResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    const-string v1, "Utils"

    const-string v5, "call business action provided with no business name"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_2

    .line 722
    const-string v1, "Utils"

    const-string v5, "call business action provided with no phone number"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_2
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, phoneNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, address:Ljava/lang/String;
    new-instance v0, Lcom/google/android/voicesearch/actions/CallBusinessAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/CallBusinessAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getCallContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;
    .locals 29
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambigFromServer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/CallContactAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v18

    .line 562
    .local v18, contactsResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    invoke-virtual/range {v18 .. v18}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getName()Ljava/lang/String;

    move-result-object v11

    .line 564
    .local v11, name:Ljava/lang/String;
    sget-object v24, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->OTHER:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 565
    .local v24, numberType:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    invoke-virtual/range {v18 .. v18}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->hasPhoneNumberType()Z

    move-result v20

    .line 566
    .local v20, hasNumberType:Z
    if-eqz v20, :cond_0

    .line 567
    invoke-virtual/range {v18 .. v18}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v24

    .line 570
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v16, contactActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/CallContactAction;>;"
    const/16 v26, 0x7

    .line 572
    .local v26, numberTypeValue:I
    sget-object v2, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$Contact$PhoneNumberType:[I

    invoke-virtual/range {v24 .. v24}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 599
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/voicesearch/speechservice/Utils;->CONTACTS_PROJECTION:[Ljava/lang/String;

    if-eqz v20, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    const-string v7, "is_super_primary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 609
    .local v19, cursor:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 612
    .local v28, shouldTryAgainWithNoPhoneType:Z
    if-eqz v19, :cond_1

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 616
    :cond_1
    if-eqz v20, :cond_2

    .line 617
    const/16 v28, 0x1

    .line 648
    :cond_2
    if-eqz v19, :cond_3

    .line 649
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_3
    if-nez v28, :cond_b

    .line 694
    :cond_4
    :goto_2
    return-object v16

    .line 574
    .end local v19           #cursor:Landroid/database/Cursor;
    .end local v28           #shouldTryAgainWithNoPhoneType:Z
    :pswitch_0
    const/16 v26, 0x1

    .line 575
    goto :goto_0

    .line 577
    :pswitch_1
    const/16 v26, 0x3

    .line 578
    goto :goto_0

    .line 580
    :pswitch_2
    const/16 v26, 0x2

    .line 581
    goto :goto_0

    .line 583
    :pswitch_3
    const/16 v26, 0x5

    .line 584
    goto :goto_0

    .line 586
    :pswitch_4
    const/16 v26, 0x4

    .line 587
    goto :goto_0

    .line 589
    :pswitch_5
    const/16 v26, 0x7

    .line 590
    goto :goto_0

    .line 592
    :pswitch_6
    const/16 v26, 0x6

    goto :goto_0

    .line 599
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 620
    .restart local v19       #cursor:Landroid/database/Cursor;
    .restart local v28       #shouldTryAgainWithNoPhoneType:Z
    :cond_6
    :try_start_1
    const-string v2, "data1"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 621
    .local v23, numberIndex:I
    const-string v2, "data2"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 622
    .local v25, numberTypeIndex:I
    const-string v2, "is_super_primary"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 623
    .local v27, primaryIndex:I
    const-string v2, "contact_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 625
    .local v17, contactIndex:I
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    const/16 v22, 0x1

    .line 627
    .local v22, multipleMatches:Z
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    move/from16 v8, p2

    .line 629
    .local v8, showDisambig:Z
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v21, 0x1

    .line 633
    .local v21, isPrimary:Z
    :goto_4
    if-eqz v22, :cond_7

    if-nez v21, :cond_7

    .line 634
    const/4 v8, 0x1

    .line 637
    :cond_7
    new-instance v2, Lcom/google/android/voicesearch/actions/CallContactAction;

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/voicesearch/speechservice/Utils;->getPhotoUri(J)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v3, p0

    move-object v4, v11

    invoke-direct/range {v2 .. v8}, Lcom/google/android/voicesearch/actions/CallContactAction;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 648
    .end local v8           #showDisambig:Z
    .end local v17           #contactIndex:I
    .end local v21           #isPrimary:Z
    .end local v22           #multipleMatches:Z
    .end local v23           #numberIndex:I
    .end local v25           #numberTypeIndex:I
    .end local v27           #primaryIndex:I
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_8

    .line 649
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 625
    .restart local v17       #contactIndex:I
    .restart local v23       #numberIndex:I
    .restart local v25       #numberTypeIndex:I
    .restart local v27       #primaryIndex:I
    :cond_9
    const/16 v22, 0x0

    goto :goto_3

    .line 629
    .restart local v8       #showDisambig:Z
    .restart local v22       #multipleMatches:Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_4

    .line 659
    .end local v8           #showDisambig:Z
    .end local v17           #contactIndex:I
    .end local v22           #multipleMatches:Z
    .end local v23           #numberIndex:I
    .end local v25           #numberTypeIndex:I
    .end local v27           #primaryIndex:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/google/android/voicesearch/speechservice/Utils;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "is_super_primary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 667
    if-eqz v19, :cond_c

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_d

    .line 689
    :cond_c
    if-eqz v19, :cond_4

    .line 690
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 671
    :cond_d
    :try_start_3
    const-string v2, "data1"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 672
    .restart local v23       #numberIndex:I
    const-string v2, "data2"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 673
    .restart local v25       #numberTypeIndex:I
    const-string v2, "contact_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 675
    .restart local v17       #contactIndex:I
    :goto_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 678
    new-instance v9, Lcom/google/android/voicesearch/actions/CallContactAction;

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->getPhotoUri(J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/voicesearch/actions/CallContactAction;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 689
    .end local v17           #contactIndex:I
    .end local v23           #numberIndex:I
    .end local v25           #numberTypeIndex:I
    :catchall_1
    move-exception v2

    if-eqz v19, :cond_e

    .line 690
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v2

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getCallNumberAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallNumberAction;
    .locals 3
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    .line 699
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasPhoneNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    const-string v1, "Utils"

    const-string v2, "call number action provided with no phone number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/4 v1, 0x0

    .line 705
    :goto_0
    return-object v1

    .line 703
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, phoneNumber:Ljava/lang/String;
    new-instance v1, Lcom/google/android/voicesearch/actions/CallNumberAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/CallNumberAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getContactValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/android/voicesearch/actions/Contact;
    .locals 5
    .parameter

    .prologue
    .line 1004
    new-instance v0, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static getDirectionsToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/DirectionsToAction;
    .locals 3
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    .line 746
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    const-string v1, "Utils"

    const-string v2, "directions action provided with no query"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v1, 0x0

    .line 752
    :goto_0
    return-object v1

    .line 750
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, query:Ljava/lang/String;
    new-instance v1, Lcom/google/android/voicesearch/actions/DirectionsToAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/DirectionsToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getDisplayContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;
    .locals 16
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/DisplayContactAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getContactsInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v7

    .line 504
    .local v7, contactsResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    invoke-virtual {v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;->getName()Ljava/lang/String;

    move-result-object v14

    .line 506
    .local v14, name:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v6, contactActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/DisplayContactAction;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/voicesearch/speechservice/Utils;->DISPLAY_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 515
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 548
    :goto_0
    return-object v6

    .line 522
    :cond_0
    :try_start_0
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 523
    .local v15, nameIndex:I
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 524
    .local v12, idIndex:I
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 525
    .local v13, lookupIndex:I
    const/4 v9, 0x0

    .line 529
    .local v9, disambigOverride:Z
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 530
    const/4 v9, 0x1

    .line 532
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 535
    .local v10, id:J
    new-instance v0, Lcom/google/android/voicesearch/actions/DisplayContactAction;

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v10, v11}, Lcom/google/android/voicesearch/speechservice/Utils;->getPhotoUri(J)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v9, :cond_2

    move v5, v9

    :goto_2
    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/DisplayContactAction;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 545
    .end local v9           #disambigOverride:Z
    .end local v10           #id:J
    .end local v12           #idIndex:I
    .end local v13           #lookupIndex:I
    .end local v15           #nameIndex:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v9       #disambigOverride:Z
    .restart local v10       #id:J
    .restart local v12       #idIndex:I
    .restart local v13       #lookupIndex:I
    .restart local v15       #nameIndex:I
    :cond_2
    move/from16 v5, p2

    .line 535
    goto :goto_2

    .line 545
    .end local v10           #id:J
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1121
    packed-switch p1, :pswitch_data_0

    .line 1128
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :pswitch_1
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/Utils;->createAmrInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    :pswitch_2
    return-object p0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getGoToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/GoToAction;
    .locals 7
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    const/4 v0, 0x0

    .line 779
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasGoToInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 780
    const-string v1, "Utils"

    const-string v5, "go-to action provided with no go-to response item"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :goto_0
    return-object v0

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getGoToInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v6

    .line 791
    .local v6, goToResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 792
    const-string v1, "Utils"

    const-string v5, "go-to action provided with no url"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDisplayUrl()Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, displayUrl:Ljava/lang/String;
    new-instance v0, Lcom/google/android/voicesearch/actions/GoToAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/GoToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getListenToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ListenToAction;
    .locals 3
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    .line 768
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    const-string v1, "Utils"

    const-string v2, "listen action provided with no query"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v1, 0x0

    .line 774
    :goto_0
    return-object v1

    .line 772
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, query:Ljava/lang/String;
    new-instance v1, Lcom/google/android/voicesearch/actions/ListenToAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/ListenToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getMapOfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/MapOfAction;
    .locals 3
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    .line 735
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    const-string v1, "Utils"

    const-string v2, "map of action provided with no query"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v1, 0x0

    .line 741
    :goto_0
    return-object v1

    .line 739
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, query:Ljava/lang/String;
    new-instance v1, Lcom/google/android/voicesearch/actions/MapOfAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/MapOfAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getNavigateToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/NavigateToAction;
    .locals 3
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    .line 757
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasQuery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 758
    const-string v1, "Utils"

    const-string v2, "navigate action provided with no query"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v1, 0x0

    .line 763
    :goto_0
    return-object v1

    .line 761
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, query:Ljava/lang/String;
    new-instance v1, Lcom/google/android/voicesearch/actions/NavigateToAction;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/voicesearch/actions/NavigateToAction;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getNoteToSelfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Landroid/net/Uri;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/NoteToSelfAction;
    .locals 2
    .parameter "context"
    .parameter "interpretation"
    .parameter "audioFileUri"
    .parameter "showDisambig"
    .parameter "clientReportLogger"
    .parameter "recParams"

    .prologue
    .line 831
    invoke-static {p0, p1, p3, p4, p5}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-result-object v0

    .line 833
    .local v0, sendEmail:Lcom/google/android/voicesearch/actions/SendEmailAction;
    if-nez v0, :cond_0

    .line 834
    const/4 v1, 0x0

    .line 838
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/voicesearch/actions/NoteToSelfAction;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/google/android/voicesearch/actions/NoteToSelfAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/SendEmailAction;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private static getPhotoUri(J)Landroid/net/Uri;
    .locals 3
    .parameter "contactId"

    .prologue
    .line 552
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 554
    .local v0, contactUri:Landroid/net/Uri;
    const-string v2, "photo"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 556
    .local v1, photoUri:Landroid/net/Uri;
    return-object v1
.end method

.method private static getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SendEmailAction;
    .locals 11
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"
    .parameter "clientReportLogger"
    .parameter "recParams"

    .prologue
    .line 845
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    const-string v0, "Utils"

    const-string v1, "MULTISLOT_ACTION_INFO missing. Ignoring action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x0

    .line 876
    :goto_0
    return-object v0

    .line 849
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v9

    .line 852
    .local v9, multislotActionResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/Utils;->getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;

    move-result-object v10

    .line 855
    .local v10, slots:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;>;"
    const-string v0, "to"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 856
    .local v8, actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v8}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v2

    .line 859
    .local v2, to:Lcom/google/android/voicesearch/actions/ContactsValue;
    const-string v0, "cc"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v8, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 860
    .restart local v8       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v8}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v3

    .line 863
    .local v3, cc:Lcom/google/android/voicesearch/actions/ContactsValue;
    const-string v0, "bcc"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v8, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 864
    .restart local v8       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v8}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v4

    .line 867
    .local v4, bcc:Lcom/google/android/voicesearch/actions/ContactsValue;
    const-string v0, "subject"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v8, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 868
    .restart local v8       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {p0, v8, p3, p4}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v5

    .line 871
    .local v5, subject:Lcom/google/android/voicesearch/actions/TextValue;
    const-string v0, "message"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v8, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 872
    .restart local v8       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {p0, v8, p3, p4}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v6

    .line 876
    .local v6, message:Lcom/google/android/voicesearch/actions/TextValue;
    new-instance v0, Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/voicesearch/actions/SendEmailAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    goto :goto_0
.end method

.method private static getSendSmsAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SendSmsAction;
    .locals 7
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"
    .parameter "clientReportLogger"
    .parameter "recParams"

    .prologue
    .line 883
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v5

    if-nez v5, :cond_0

    .line 884
    const-string v5, "Utils"

    const-string v6, "MULTISLOT_ACTION_INFO missing. Ignoring action"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v5, 0x0

    .line 902
    :goto_0
    return-object v5

    .line 887
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v2

    .line 890
    .local v2, multislotActionResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;

    move-result-object v3

    .line 893
    .local v3, slots:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;>;"
    const-string v5, "to"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 894
    .local v0, actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;

    move-result-object v4

    .line 897
    .local v4, to:Lcom/google/android/voicesearch/actions/ContactsValue;
    const-string v5, "message"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 898
    .restart local v0       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {p0, v0, p3, p4}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v1

    .line 902
    .local v1, message:Lcom/google/android/voicesearch/actions/TextValue;
    new-instance v5, Lcom/google/android/voicesearch/actions/SendSmsAction;

    invoke-direct {v5, p0, v4, v1, p2}, Lcom/google/android/voicesearch/actions/SendSmsAction;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/ContactsValue;Lcom/google/android/voicesearch/actions/TextValue;Z)V

    goto :goto_0
.end method

.method private static getSetAlarmAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SetAlarmAction;
    .locals 10
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"
    .parameter "clientReportLogger"
    .parameter "recParams"

    .prologue
    .line 909
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasMultislotActionInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    const-string v0, "Utils"

    const-string v1, "MULTISLOT_ACTION_INFO missing. Ignoring action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    .line 940
    :goto_0
    return-object v0

    .line 913
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getMultislotActionInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;

    move-result-object v8

    .line 915
    .local v8, multislotActionResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;
    invoke-static {v8}, Lcom/google/android/voicesearch/speechservice/Utils;->getActionSlots(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionResponseItem;)Ljava/util/HashMap;

    move-result-object v9

    .line 917
    .local v9, slots:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;>;"
    const-string v0, "label"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 918
    .local v6, actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {p0, v6, p3, p4}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotTextValue(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/TextValue;

    move-result-object v4

    .line 920
    .local v4, label:Lcom/google/android/voicesearch/actions/TextValue;
    const-string v0, "minutes_from_now"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v6, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 921
    .restart local v6       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I

    move-result v7

    .line 924
    .local v7, minutesFromNow:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 925
    new-instance v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;

    const/4 v1, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, p0, v1, v4, p2}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/content/Context;ILcom/google/android/voicesearch/actions/TextValue;Z)V

    goto :goto_0

    .line 927
    :cond_1
    const-string v0, "hour"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v6, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 928
    .restart local v6       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I

    move-result v2

    .line 930
    .local v2, hour:I
    const-string v0, "minutes"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    check-cast v6, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 931
    .restart local v6       #actionSlotValue:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    invoke-static {v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I

    move-result v3

    .line 935
    .local v3, minutes:I
    if-ltz v2, :cond_2

    if-gez v3, :cond_3

    .line 936
    :cond_2
    const/16 v2, 0xc

    .line 937
    const/4 v3, 0x0

    .line 940
    :cond_3
    new-instance v0, Lcom/google/android/voicesearch/actions/SetAlarmAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/SetAlarmAction;-><init>(Landroid/content/Context;IILcom/google/android/voicesearch/actions/TextValue;Z)V

    goto :goto_0
.end method

.method private static getShowWebResultAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ShowWebResultAction;
    .locals 7
    .parameter "context"
    .parameter "interpretation"
    .parameter "showDisambig"

    .prologue
    const/4 v0, 0x0

    .line 805
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->hasWebsearchInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    const-string v1, "Utils"

    const-string v5, "web search action provided with no web search response item"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :goto_0
    return-object v0

    .line 810
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getWebsearchInfo()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v6

    .line 811
    .local v6, webSearchResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->hasQuery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 812
    const-string v1, "Utils"

    const-string v5, "web search action provided with no query"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 815
    :cond_1
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 816
    .local v2, query:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getPageHtml()Ljava/lang/String;

    move-result-object v3

    .line 817
    .local v3, html:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, url:Ljava/lang/String;
    new-instance v0, Lcom/google/android/voicesearch/actions/ShowWebResultAction;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/voicesearch/actions/ShowWebResultAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getSlotContactsListValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/android/voicesearch/actions/ContactsValue;
    .locals 13
    .parameter "actionSlotValue"

    .prologue
    .line 1014
    if-nez p0, :cond_0

    const/4 v12, 0x0

    .line 1048
    :goto_0
    return-object v12

    .line 1020
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    .local v2, contactsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsListValueCount()I

    move-result v8

    .line 1023
    .local v8, numContacts:I
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsWithAltsValueCount()I

    move-result v9

    .line 1025
    .local v9, numContactsAlts:I
    if-lez v9, :cond_2

    .line 1026
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v9, :cond_3

    .line 1027
    invoke-virtual {p0, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsWithAltsValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;

    move-result-object v4

    .line 1029
    .local v4, contactsWithAlternatesResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v0, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getContactCount()I

    move-result v10

    .line 1032
    .local v10, numContactsInAlts:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    if-ge v7, v10, :cond_1

    .line 1033
    invoke-virtual {v4, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v1

    .line 1034
    .local v1, contact:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/Utils;->getContactValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1036
    .end local v1           #contact:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    :cond_1
    const/4 v12, 0x0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/voicesearch/actions/Contact;

    .line 1037
    .local v11, topHypothesis:Lcom/google/android/voicesearch/actions/Contact;
    new-instance v5, Lcom/google/android/voicesearch/actions/CorrectionContact;

    new-instance v12, Lcom/google/android/voicesearch/actions/ContactAlternates;

    invoke-direct {v12, v0}, Lcom/google/android/voicesearch/actions/ContactAlternates;-><init>(Ljava/util/List;)V

    invoke-direct {v5, v11, v12}, Lcom/google/android/voicesearch/actions/CorrectionContact;-><init>(Lcom/google/android/voicesearch/actions/Contact;Lcom/google/android/voicesearch/actions/ContactAlternates;)V

    .line 1040
    .local v5, correctionContact:Lcom/google/android/voicesearch/actions/CorrectionContact;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1042
    .end local v0           #alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/Contact;>;"
    .end local v4           #contactsWithAlternatesResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
    .end local v5           #correctionContact:Lcom/google/android/voicesearch/actions/CorrectionContact;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v10           #numContactsInAlts:I
    .end local v11           #topHypothesis:Lcom/google/android/voicesearch/actions/Contact;
    :cond_2
    if-lez v8, :cond_3

    .line 1043
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    if-ge v6, v8, :cond_3

    .line 1044
    invoke-virtual {p0, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getContactsListValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;

    move-result-object v3

    .line 1045
    .local v3, contactsResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/Utils;->getContactValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;)Lcom/google/android/voicesearch/actions/Contact;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1048
    .end local v3           #contactsResponseItem:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
    .end local v6           #i:I
    :cond_3
    new-instance v12, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v12, v2}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static getSlotIntValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)I
    .locals 1
    .parameter "actionSlotValue"

    .prologue
    .line 999
    if-nez p0, :cond_0

    const/4 v0, -0x1

    .line 1000
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getIntValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getSlotStringValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/lang/String;
    .locals 1
    .parameter "actionSlotValue"

    .prologue
    .line 990
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 991
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSlotTextValue(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/TextValue;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 970
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/Utils;->getSlotStringValue(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Ljava/lang/String;

    move-result-object v2

    .line 971
    if-nez v2, :cond_0

    .line 982
    :goto_0
    return-object v0

    .line 973
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->hasAlternates()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 975
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/voicesearch/util/TextUtil;->getSuggestionSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 982
    :cond_1
    :goto_1
    new-instance v0, Lcom/google/android/voicesearch/actions/TextValue;

    invoke-direct {v0, v2}, Lcom/google/android/voicesearch/actions/TextValue;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 978
    :catch_0
    move-exception v0

    .line 979
    const-string v1, "Utils"

    const-string v3, "Unsupported encoding"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static loadClasses()V
    .locals 2

    .prologue
    .line 1136
    const-class v0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1137
    const-class v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1139
    :try_start_0
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->getAmrInputStreamClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_0
    const-class v0, Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1144
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    const-string v0, "Utils"

    const-string v1, "AmrInputStream class not found. AMR will not be supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static parseApplicationData(Landroid/content/Context;Lcom/google/protos/speech/service/SpeechService$ApplicationData;Lcom/google/android/voicesearch/speechservice/AudioBuffer;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .parameter "appData"
    .parameter "audioBuffer"
    .parameter "clientReportLogger"
    .parameter "recParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/android/voicesearch/speechservice/AudioBuffer;",
            "Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v13, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    .line 288
    .local v9, actionResponse:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    const/4 v6, 0x0

    .line 289
    .local v6, showDisambig:Z
    invoke-virtual {v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hasDisplayDisambiguation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-virtual {v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDisplayDisambiguation()Z

    move-result v6

    .line 292
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v13, p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->addMockActions(Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/voicesearch/speechservice/AudioBuffer;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    .line 296
    const/4 v5, 0x0

    .line 297
    .local v5, audioFileUri:Landroid/net/Uri;
    invoke-virtual {v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretationCount()I

    move-result v12

    .line 298
    .local v12, numInterpretations:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v12, :cond_3

    .line 299
    invoke-virtual {v9, v11}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v4

    .line 300
    .local v4, interpretation:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v10

    .line 301
    .local v10, actionType:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isWebSearchOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->WEB_SEARCH:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    if-eq v10, v3, :cond_1

    .line 298
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 305
    :cond_1
    sget-object v3, Lcom/google/android/voicesearch/speechservice/Utils$1;->$SwitchMap$com$google$protos$wireless$voicesearch$VoiceSearch$ActionInterpretation$Action:[I

    invoke-virtual {v10}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->ordinal()I

    move-result v7

    aget v3, v3, v7

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 307
    :pswitch_0
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getCallContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 310
    :pswitch_1
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getCallNumberAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallNumberAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 314
    :pswitch_2
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getCallBusinessAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/CallBusinessAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 318
    :pswitch_3
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getDisplayContactActions(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 321
    :pswitch_4
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getMapOfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/MapOfAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 324
    :pswitch_5
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getDirectionsToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/DirectionsToAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 328
    :pswitch_6
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getNavigateToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/NavigateToAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 332
    :pswitch_7
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getShowWebResultAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ShowWebResultAction;

    move-result-object v14

    .line 333
    .local v14, webAction:Lcom/google/android/voicesearch/actions/ShowWebResultAction;
    invoke-static {v13, v14}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 336
    .end local v14           #webAction:Lcom/google/android/voicesearch/actions/ShowWebResultAction;
    :pswitch_8
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getGoToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/GoToAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 339
    :pswitch_9
    invoke-static {p0, v4, v6}, Lcom/google/android/voicesearch/speechservice/Utils;->getListenToAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Z)Lcom/google/android/voicesearch/actions/ListenToAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 342
    :pswitch_a
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v4, v6, v0, v1}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendEmailAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SendEmailAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 346
    :pswitch_b
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v4, v6, v0, v1}, Lcom/google/android/voicesearch/speechservice/Utils;->getSendSmsAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SendSmsAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_1

    .line 350
    :pswitch_c
    if-eqz p2, :cond_2

    if-nez v5, :cond_2

    .line 351
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->getAudio()[B

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addFileToAudioProvider(Landroid/content/Context;[B)Landroid/net/Uri;

    move-result-object v5

    :cond_2
    move-object v3, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 353
    invoke-static/range {v3 .. v8}, Lcom/google/android/voicesearch/speechservice/Utils;->getNoteToSelfAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;Landroid/net/Uri;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/NoteToSelfAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto/16 :goto_1

    .line 358
    :pswitch_d
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p0, v4, v6, v0, v1}, Lcom/google/android/voicesearch/speechservice/Utils;->getSetAlarmAction(Landroid/content/Context;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;ZLcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/android/voicesearch/actions/SetAlarmAction;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/google/android/voicesearch/speechservice/Utils;->addIfNotNull(Ljava/util/ArrayList;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto/16 :goto_1

    .line 367
    .end local v4           #interpretation:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .end local v10           #actionType:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :cond_3
    return-object v13

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static parseGaiaStatusList(Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;[Ljava/lang/String;)V
    .locals 4
    .parameter "accountHelper"
    .parameter "gaiaStatusList"
    .parameter "authTokens"

    .prologue
    .line 1054
    if-nez p1, :cond_1

    .line 1074
    :cond_0
    return-void

    .line 1055
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getGaiaStatusCount()I

    move-result v0

    .line 1057
    .local v0, count:I
    if-eqz p2, :cond_0

    .line 1062
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1063
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 1068
    invoke-virtual {p1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getGaiaStatus(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    move-result-object v1

    .line 1069
    .local v1, gaiaStatus:Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->hasErrorStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1071
    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/util/AccountHelper;->invalidateAuthToken(Ljava/lang/String;)V

    .line 1062
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static parseRawRecognitionResult(Landroid/content/Context;Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    if-nez p1, :cond_1

    .line 168
    const-string v6, "Utils"

    const-string v7, "No RecognitionResult found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v5, 0x0

    .line 182
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 171
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v2

    .line 172
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 173
    invoke-virtual {p1, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v3

    .line 174
    .local v3, hypothesis:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getConfidence()D

    move-result-wide v0

    .line 175
    .local v0, confidence:D
    new-instance v6, Lcom/google/android/voicesearch/actions/ShowRawResultAction;

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentence()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v9}, Ljava/lang/Double;->floatValue()F

    move-result v9

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/voicesearch/actions/ShowRawResultAction;-><init>(Landroid/content/Context;Ljava/lang/String;ZF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    .end local v0           #confidence:D
    .end local v3           #hypothesis:Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    const-string v6, "Utils"

    const-string v7, "No Hypothesis in RecognitionResult"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
