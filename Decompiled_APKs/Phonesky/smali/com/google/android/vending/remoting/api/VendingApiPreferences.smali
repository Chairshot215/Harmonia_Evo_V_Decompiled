.class public Lcom/google/android/vending/remoting/api/VendingApiPreferences;
.super Ljava/lang/Object;
.source "VendingApiPreferences.java"


# static fields
.field private static sPrefs:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "vending_preferences"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/vending/remoting/api/VendingApiPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceConfigurationHashProperty(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/vending/remoting/api/VendingApiPreferences;->sPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_configuration_hash_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    return-object v0
.end method
