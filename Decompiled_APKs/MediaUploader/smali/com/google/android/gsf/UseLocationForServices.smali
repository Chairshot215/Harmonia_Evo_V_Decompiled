.class public Lcom/google/android/gsf/UseLocationForServices;
.super Ljava/lang/Object;
.source "UseLocationForServices.java"


# static fields
.field public static final ACTION_SET_USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

.field private static final GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UseLocationForServices"

.field public static final USE_LOCATION_FOR_SERVICES_NOT_SET:I = 0x2

.field public static final USE_LOCATION_FOR_SERVICES_OFF:I = 0x0

.field public static final USE_LOCATION_FOR_SERVICES_ON:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://www.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www.google.co.uk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/gsf/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 134
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {v0}, Lcom/google/android/gsf/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location_for_services"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "\\s+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 163
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 164
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return-object v0
.end method

.method private static removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/android/gsf/UseLocationForServices;->parseAllowGeolocationOrigins(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 147
    sget-object v1, Lcom/google/android/gsf/UseLocationForServices;->GOOGLE_GEOLOCATION_ORIGINS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 148
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v0}, Lcom/google/android/gsf/UseLocationForServices;->formatAllowGeolocationOrigins(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setGoogleBrowserGeolocation(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 113
    const-string v1, "allowed_geolocation_origins"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/google/android/gsf/UseLocationForServices;->addGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_0
    const-string v2, "allowed_geolocation_origins"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    :goto_1
    return-void

    .line 115
    :cond_0
    invoke-static {v1}, Lcom/google/android/gsf/UseLocationForServices;->removeGoogleOrigins(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "UseLocationForServices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set browser geolocation permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setUseLocationForServices(Landroid/content/Context;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/google/android/gsf/UseLocationForServices;->setGoogleBrowserGeolocation(Landroid/content/Context;Z)V

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location_for_services"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
