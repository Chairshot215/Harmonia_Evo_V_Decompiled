.class public Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;
.super Ljava/lang/Object;
.source "BrokenResourceUriFixer.java"


# static fields
.field private static final IC_BUSINESS_LISTING_RESOURCE_IDS:[Ljava/lang/String;

.field private static final IC_GLOBE_RESOURCE_IDS:[Ljava/lang/String;


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f020024

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020013

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f020025

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020022

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "android.resource://com.google.android.googlequicksearchbox/drawable/globe"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f020022

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->IC_GLOBE_RESOURCE_IDS:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f02000c

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f02000f

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f02001f

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f02001a

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "android.resource://com.google.android.googlequicksearchbox/drawable/business_listing"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x7f02001a

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->i(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->IC_BUSINESS_LISTING_RESOURCE_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->mMap:Ljava/util/Map;

    .line 77
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->IC_GLOBE_RESOURCE_IDS:[Ljava/lang/String;

    const v1, 0x7f020022

    invoke-static {p1, v1}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/util/Util;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->putAll([Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->IC_BUSINESS_LISTING_RESOURCE_IDS:[Ljava/lang/String;

    const v1, 0x7f02001a

    invoke-static {p1, v1}, Lcom/google/android/googlequicksearchbox/util/Util;->getResourceUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/util/Util;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->putAll([Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private static i(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInt(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 84
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private putAll([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "icGlobeResourceIds"
    .parameter "value"

    .prologue
    .line 70
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 71
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->mMap:Ljava/util/Map;

    invoke-interface {v4, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public mapDrawableId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 94
    move-object v0, p1

    .line 95
    .local v0, newId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #newId:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 102
    .restart local v0       #newId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/BrokenResourceUriFixer;->isInt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "QSB.ResourceIdMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown resource ID integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method
