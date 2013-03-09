.class public Landroid_maps_conflict_avoidance/com/google/common/I18n;
.super Ljava/lang/Object;
.source "I18n.java"


# static fields
.field private static STRING_RESOURCE:Ljava/lang/String;

.field private static instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;


# instance fields
.field private embeddedLocalizedStrings:[Ljava/lang/String;

.field private remoteLocalizedStrings:[Ljava/lang/String;

.field private systemLanguage:Ljava/lang/String;

.field private systemLocale:Ljava/lang/String;

.field private uiLanguage:Ljava/lang/String;

.field private uiLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/strings.dat"

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->STRING_RESOURCE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->embeddedLocalizedStrings:[Ljava/lang/String;

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->remoteLocalizedStrings:[Ljava/lang/String;

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->locale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method

.method private static calculateSystemLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "microedition.locale"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static init(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/I18n;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->instance:Landroid_maps_conflict_avoidance/com/google/common/I18n;

    return-object v0
.end method

.method public static locale()Ljava/lang/String;
    .locals 1

    const-string v0, "en"

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/debug/DebugUtil;->getAntPropertyOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v3, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "en"

    if-eqz p0, :cond_1

    const/16 v2, 0x2d

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    array-length v2, v1

    if-lt v2, v5, :cond_1

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getUiLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLocale:Ljava/lang/String;

    return-object v0
.end method

.method public setSystemLocale(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLanguage:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setUiLocale(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->normalizeLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLocale:Ljava/lang/String;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLocale:Ljava/lang/String;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->uiLanguage:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/I18n;->systemLocale:Ljava/lang/String;

    goto :goto_0
.end method
