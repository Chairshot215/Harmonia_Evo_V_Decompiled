.class public Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.source "HtcModelNumberPreference.java"


# static fields
.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const v0, 0x7f0d0012

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 7

    .prologue
    .line 91
    :try_start_0
    const-string v3, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, msv:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 94
    const-string v3, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v1           #msv:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, ioe:Ljava/io/IOException;
    sget-object v3, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->TAG:Ljava/lang/String;

    const-string v4, "Fail quietly, as the file may not exist on some devices."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_0
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 99
    :catch_1
    move-exception v2

    .line 100
    .local v2, nfe:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->TAG:Ljava/lang/String;

    const-string v4, "Fail quietly, returning empty string should be sufficient."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 115
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 115
    return-object v1

    .line 117
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c09f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/storage/customize/HtcCustomizedDeviceName;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;->getMsvSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
