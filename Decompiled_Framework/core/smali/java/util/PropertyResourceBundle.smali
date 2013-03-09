.class public Ljava/util/PropertyResourceBundle;
.super Ljava/util/ResourceBundle;
.source "PropertyResourceBundle.java"


# instance fields
.field resources:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/PropertyResourceBundle;)Ljava/util/Enumeration;
    .locals 1

    invoke-direct {p0}, Ljava/util/PropertyResourceBundle;->getLocalKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private getLocalKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljava/util/PropertyResourceBundle;->getLocalKeys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/PropertyResourceBundle$1;

    invoke-direct {v0, p0}, Ljava/util/PropertyResourceBundle$1;-><init>(Ljava/util/PropertyResourceBundle;)V

    goto :goto_0
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
