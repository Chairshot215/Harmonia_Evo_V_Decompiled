.class public Lcom/htc/cs/util/PropertyReader;
.super Ljava/lang/Object;
.source "PropertyReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .parameter "ctx"
    .parameter "protFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 19
    .local v1, properties:Ljava/util/Properties;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 20
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 21
    .local v2, stream:Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 28
    .end local v1           #properties:Ljava/util/Properties;
    :goto_0
    return-object v1

    .line 25
    .restart local v1       #properties:Ljava/util/Properties;
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method public static GetProtCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .parameter "ctx"
    .parameter "protFileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, countryCodeMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/cs/util/PropertyReader;->GetProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
