.class public Lcom/htc/provider/weather/WeatherProviderLocationListHelper;
.super Ljava/lang/Object;
.source "WeatherProviderLocationListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;
    }
.end annotation


# static fields
.field private static final DATABASE_ZIP_PATH:Ljava/lang/String; = "/system/etc/WPDB.zip"

.field private static final LANG_AR:Ljava/lang/String; = "0401ARA"

.field private static final LANG_CS:Ljava/lang/String; = "0405CSY"

.field private static final LANG_DA:Ljava/lang/String; = "0406DAN"

.field private static final LANG_DE:Ljava/lang/String; = "0407GER"

.field private static final LANG_EL:Ljava/lang/String; = "0408GRK"

.field private static final LANG_EN:Ljava/lang/String; = "0409WWE"

.field private static final LANG_ES:Ljava/lang/String; = "0C0AESN"

.field private static final LANG_FI:Ljava/lang/String; = "040BFIN"

.field private static final LANG_FR:Ljava/lang/String; = "040CFRA"

.field private static final LANG_HU:Ljava/lang/String; = "040EHUN"

.field private static final LANG_IT:Ljava/lang/String; = "0410ITA"

.field private static final LANG_JA:Ljava/lang/String; = "0411JPN"

.field private static final LANG_KO:Ljava/lang/String; = "0412KOR"

.field private static final LANG_NB:Ljava/lang/String; = "0414NOR"

.field private static final LANG_NL:Ljava/lang/String; = "0413NLD"

.field private static final LANG_PL:Ljava/lang/String; = "0415PLK"

.field private static final LANG_PT:Ljava/lang/String; = "0816PTG"

.field private static final LANG_RO:Ljava/lang/String; = "0418ROM"

.field private static final LANG_RU:Ljava/lang/String; = "0419RUS"

.field private static final LANG_SL:Ljava/lang/String; = "0424SLV"

.field private static final LANG_SV:Ljava/lang/String; = "041DSVE"

.field private static final LANG_TH:Ljava/lang/String; = "041ETHA"

.field private static final LANG_TR:Ljava/lang/String; = "041FTRK"

.field private static final LANG_ZH_CN:Ljava/lang/String; = "0804CHS"

.field private static final LANG_ZH_TW:Ljava/lang/String; = "0404CHT"

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Provider"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherProvider] "

.field private static databaseFolder:Ljava/lang/String;

.field private static langDbMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private defaultLanguage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->databaseFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->context:Landroid/content/Context;

    .line 26
    const-string v0, "0409WWE"

    iput-object v0, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->defaultLanguage:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->databaseFolder:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDbFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->databaseFolder:Ljava/lang/String;

    return-object v0
.end method

.method public static clearDbMapping()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 42
    :cond_0
    return-void
.end method

.method private static getDbFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "language"

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "language"

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->databaseFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDbFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOutputLanguage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 201
    const-string v0, "0409WWE"

    .line 203
    .local v0, language:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 204
    .local v3, systemLocale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, systemLanguage:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, systemCountry:Ljava/lang/String;
    const-string v4, "cs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    const-string v0, "0405CSY"

    .line 263
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    const-string v4, "de"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    const-string v0, "0407GER"

    goto :goto_0

    .line 211
    :cond_2
    const-string v4, "en"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    const-string v0, "0409WWE"

    goto :goto_0

    .line 213
    :cond_3
    const-string v4, "es"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 214
    const-string v0, "0C0AESN"

    goto :goto_0

    .line 215
    :cond_4
    const-string v4, "fr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 216
    const-string v0, "040CFRA"

    goto :goto_0

    .line 217
    :cond_5
    const-string v4, "it"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 218
    const-string v0, "0410ITA"

    goto :goto_0

    .line 219
    :cond_6
    const-string v4, "nl"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 220
    const-string v0, "0413NLD"

    goto :goto_0

    .line 221
    :cond_7
    const-string v4, "pl"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 222
    const-string v0, "0415PLK"

    goto :goto_0

    .line 223
    :cond_8
    const-string v4, "ru"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 224
    const-string v0, "0419RUS"

    goto :goto_0

    .line 225
    :cond_9
    const-string v4, "zh"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 226
    const-string v4, "CN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "SG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 227
    :cond_a
    const-string v0, "0804CHS"

    goto :goto_0

    .line 228
    :cond_b
    const-string v4, "TW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "HK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    :cond_c
    const-string v0, "0404CHT"

    goto/16 :goto_0

    .line 231
    :cond_d
    const-string v4, "nb"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 232
    const-string v0, "0414NOR"

    goto/16 :goto_0

    .line 233
    :cond_e
    const-string v4, "el"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 234
    const-string v0, "0408GRK"

    goto/16 :goto_0

    .line 235
    :cond_f
    const-string v4, "pt"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 236
    const-string v0, "0816PTG"

    goto/16 :goto_0

    .line 237
    :cond_10
    const-string v4, "ar"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 238
    const-string v0, "0401ARA"

    goto/16 :goto_0

    .line 239
    :cond_11
    const-string v4, "th"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 240
    const-string v0, "041ETHA"

    goto/16 :goto_0

    .line 241
    :cond_12
    const-string v4, "da"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 242
    const-string v0, "0406DAN"

    goto/16 :goto_0

    .line 243
    :cond_13
    const-string v4, "sv"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 244
    const-string v0, "041DSVE"

    goto/16 :goto_0

    .line 245
    :cond_14
    const-string v4, "fi"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 246
    const-string v0, "040BFIN"

    goto/16 :goto_0

    .line 247
    :cond_15
    const-string v4, "tr"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 248
    const-string v0, "041FTRK"

    goto/16 :goto_0

    .line 249
    :cond_16
    const-string v4, "ko"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 250
    const-string v0, "0412KOR"

    goto/16 :goto_0

    .line 251
    :cond_17
    const-string v4, "ja"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 252
    const-string v0, "0411JPN"

    goto/16 :goto_0

    .line 253
    :cond_18
    const-string v4, "hu"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 254
    const-string v0, "040EHUN"

    goto/16 :goto_0

    .line 255
    :cond_19
    const-string v4, "ro"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 256
    const-string v0, "0418ROM"

    goto/16 :goto_0

    .line 257
    :cond_1a
    const-string v4, "sl"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 258
    const-string v0, "0424SLV"

    goto/16 :goto_0

    .line 260
    :cond_1b
    const-string v4, "Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WeatherProvider] can\'t find language mapping for system lang "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", use default labguage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private unzipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 8
    .parameter "zf"
    .parameter "entry"
    .parameter "dbPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 122
    .local v4, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 124
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 126
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, len:I
    if-lez v5, :cond_2

    .line 127
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    .end local v0           #buffer:[B
    .end local v5           #len:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 130
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_0
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 137
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v6

    .line 132
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #len:I
    :cond_2
    if-eqz v4, :cond_3

    .line 133
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_3
    if-eqz v3, :cond_4

    .line 136
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 137
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 140
    :cond_4
    return-void

    .line 132
    .end local v0           #buffer:[B
    .end local v5           #len:I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 129
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getOutputLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDb(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDb(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 12
    .parameter "language"

    .prologue
    const/4 v8, 0x0

    .line 53
    sget-object v9, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 54
    sget-object v9, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 56
    sget-object v8, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-object v8

    .line 58
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    sget-object v9, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-static {p1}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDbFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, dbFilename:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, dbPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, dbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    .line 70
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    const-string v9, "/system/etc/WPDB.zip"

    invoke-direct {v7, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 73
    .local v5, entries:Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 74
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 76
    .local v6, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_3

    .line 80
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 81
    invoke-direct {p0, v7, v6, v3}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->unzipFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    .line 86
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    :cond_4
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v5           #entries:Ljava/util/Enumeration;
    .end local v7           #zf:Ljava/util/zip/ZipFile;
    :goto_1
    new-instance v1, Ljava/io/File;

    .end local v1           #dbFile:Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v1       #dbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 93
    const-string v9, "Provider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WeatherProvider] can\'t get db file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :catch_0
    move-exception v4

    .line 88
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "Provider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WeatherProvider] can\'t extract db file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/system/etc/WPDB.zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", err msg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    new-instance v9, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;

    invoke-direct {v9, p0, v2}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;-><init>(Lcom/htc/provider/weather/WeatherProviderLocationListHelper;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;->start()V

    .line 101
    :cond_6
    const/4 v0, 0x0

    .line 103
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_1
    invoke-static {v3, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 109
    :goto_2
    if-eqz v0, :cond_0

    .line 110
    sget-object v8, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v8, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->langDbMapping:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_0

    .line 104
    :catch_1
    move-exception v4

    .line 105
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v9, "Provider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WeatherProvider] can\'t load "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " database: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (default language: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->defaultLanguage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), err msg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setDefaultLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->defaultLanguage:Ljava/lang/String;

    .line 46
    return-void
.end method
