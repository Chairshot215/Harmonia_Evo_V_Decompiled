.class Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
.super Ljava/lang/Object;
.source "DefaultCallLogInsertionHelper.java"

# interfaces
.implements Lcom/android/providers/contacts/CallLogInsertionHelper;


# static fields
.field private static sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;


# instance fields
.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private final mLocale:Ljava/util/Locale;

.field private mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field private mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    .line 55
    return-void
.end method

.method private getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    const-class v1, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    .line 49
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->sInstance:Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberOfflineGeocoder:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mPhoneNumberUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 2
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getPhoneNumberUtil()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addComputedValues(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, countryIso:Ljava/lang/String;
    const-string v1, "countryiso"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "geocoded_location"

    const-string v2, "number"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->parsePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 96
    .local v0, structuredPhoneNumber:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->getPhoneNumberOfflineGeocoder()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
