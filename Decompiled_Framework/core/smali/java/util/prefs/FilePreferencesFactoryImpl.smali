.class Ljava/util/prefs/FilePreferencesFactoryImpl;
.super Ljava/lang/Object;
.source "FilePreferencesFactoryImpl.java"

# interfaces
.implements Ljava/util/prefs/PreferencesFactory;


# static fields
.field private static final SYSTEM_ROOT:Ljava/util/prefs/Preferences;

.field private static final USER_ROOT:Ljava/util/prefs/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public systemRoot()Ljava/util/prefs/Preferences;
    .locals 1

    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    return-object v0
.end method

.method public userRoot()Ljava/util/prefs/Preferences;
    .locals 1

    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    return-object v0
.end method
