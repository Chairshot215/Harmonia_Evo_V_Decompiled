.class public Lcom/htc/extension/HtcExtensionCustomization;
.super Ljava/lang/Object;
.source "HtcExtensionCustomization.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;


# instance fields
.field private mParser:Lcom/htc/extension/JarManifestParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HtcExtension."

    sput-object v0, Lcom/htc/extension/HtcExtensionCustomization;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/extension/JarManifestParser;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/extension/HtcExtensionCustomization;->mParser:Lcom/htc/extension/JarManifestParser;

    return-void
.end method

.method private appendDotToConnectNextElement(Ljava/lang/StringBuilder;I)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/htc/extension/HtcExtensionCustomization;->isEntryNameContainsMoreThanOneElement(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private getEntryName([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/htc/extension/HtcExtensionCustomization;->appendDotToConnectNextElement(Ljava/lang/StringBuilder;I)V

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isEntryNameContainsMoreThanOneElement(I)Z
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreferredFormat(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/htc/extension/HtcExtensionCustomization;->PREFIX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private keyCannotBeSplitIntoThree([Ljava/lang/String;)Z
    .locals 2

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Lcom/htc/extension/HtcExtensionCustomization;->isPreferredFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key to query information related to HtcExtension should start with \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/extension/HtcExtensionCustomization;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/extension/HtcExtensionCustomization;->keyCannotBeSplitIntoThree([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The format of the key to query information related to HtcExtension is \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/extension/HtcExtensionCustomization;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[entry name].[item]\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/extension/HtcExtensionCustomization;->getEntryName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v0, v4

    iget-object v4, p0, Lcom/htc/extension/HtcExtensionCustomization;->mParser:Lcom/htc/extension/JarManifestParser;

    invoke-virtual {v4, v1, v2}, Lcom/htc/extension/JarManifestParser;->getEntryValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v4, Lcom/htc/customization/CustomizationValueNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find value by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/customization/CustomizationValueNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    return-object v3
.end method
