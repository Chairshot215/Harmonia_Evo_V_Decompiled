.class Lcom/android/i18n/addressinput/RegionData;
.super Ljava/lang/Object;
.source "RegionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/RegionData$1;,
        Lcom/android/i18n/addressinput/RegionData$Builder;
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/i18n/addressinput/RegionData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/i18n/addressinput/RegionData;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/android/i18n/addressinput/RegionData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/android/i18n/addressinput/Util;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p1, Lcom/android/i18n/addressinput/RegionData;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/RegionData;->mKey:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/android/i18n/addressinput/RegionData;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/addressinput/RegionData;->mName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/i18n/addressinput/RegionData;Lcom/android/i18n/addressinput/RegionData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/RegionData;-><init>(Lcom/android/i18n/addressinput/RegionData;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/i18n/addressinput/RegionData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/i18n/addressinput/RegionData;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/i18n/addressinput/RegionData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/i18n/addressinput/RegionData;->mName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/i18n/addressinput/RegionData;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/RegionData;->mName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/RegionData;->mKey:Ljava/lang/String;

    goto :goto_0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/i18n/addressinput/RegionData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method isValidName(Ljava/lang/String;)Z
    .locals 2
    .parameter "subkey"

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/RegionData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/i18n/addressinput/RegionData;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
