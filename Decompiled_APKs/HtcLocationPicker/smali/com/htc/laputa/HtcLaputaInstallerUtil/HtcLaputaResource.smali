.class public Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;
.super Ljava/lang/Object;
.source "HtcLaputaResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;,
        Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    }
.end annotation


# static fields
.field private static final PACKAGE_LAPUTA:Ljava/lang/String; = "com.htc.laputa"

.field private static final TAG:Ljava/lang/String; = "HtcLaputaInstaller"


# instance fields
.field private mApkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

.field private mContext:Landroid/content/Context;

.field private mResHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mApkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    .line 32
    iput-object v0, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mResHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;

    .line 36
    iput-object p1, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private getAPkHandler()Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v4, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mApkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    if-nez v4, :cond_2

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, rcLaputa:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc.laputa"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 68
    .end local v0           #rcLaputa:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v3

    .line 53
    .restart local v0       #rcLaputa:Landroid/content/res/Resources;
    :cond_1
    const-string v4, "laputainfo"

    const-string v5, "raw"

    const-string v6, "com.htc.laputa"

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 55
    .local v1, sdkxmlid:I
    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 63
    .local v2, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    invoke-direct {v3, p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;-><init>(Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;)V

    iput-object v3, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mApkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    .line 64
    iget-object v3, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mApkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 65
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 68
    .end local v0           #rcLaputa:Landroid/content/res/Resources;
    .end local v1           #sdkxmlid:I
    .end local v2           #xmlReader:Lorg/xml/sax/XMLReader;
    :cond_2
    iget-object v3, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mApkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    goto :goto_0
.end method

.method private getResHandler()Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v2, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mResHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;

    if-nez v2, :cond_0

    .line 75
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 77
    .local v1, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaInstallerUtil;->GetDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Data/htc/laputa.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, resinfo:Ljava/io/File;
    new-instance v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;

    invoke-direct {v2, p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;-><init>(Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;)V

    iput-object v2, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mResHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;

    .line 80
    iget-object v2, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mResHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 81
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 84
    .end local v0           #resinfo:Ljava/io/File;
    .end local v1           #xmlReader:Lorg/xml/sax/XMLReader;
    :cond_0
    iget-object v2, p0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->mResHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;

    return-object v2
.end method


# virtual methods
.method public getResVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 136
    .local v2, resVersion:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->getAPkHandler()Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    move-result-object v0

    .line 138
    .local v0, apkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    if-eqz v0, :cond_0

    .line 139
    iget-object v2, v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;->mResVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0           #apkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    :cond_0
    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcLaputaInstaller"

    const-string v4, "getResVersion() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isResourceVerionCorrect()Z
    .locals 6

    .prologue
    .line 92
    const/4 v3, 0x0

    .line 96
    .local v3, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->getAPkHandler()Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;

    move-result-object v0

    .line 97
    .local v0, apkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    invoke-direct {p0}, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource;->getResHandler()Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;

    move-result-object v2

    .line 100
    .local v2, resHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;->mResVersion:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 103
    :cond_0
    const/4 v3, 0x0

    .line 128
    .end local v0           #apkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    .end local v2           #resHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;
    :goto_0
    return v3

    .line 105
    .restart local v0       #apkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    .restart local v2       #resHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;->mResVersion:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;->mResVersion:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 112
    :cond_3
    iget-object v4, v2, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;->mResVersion:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;->mResVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    const/4 v3, 0x1

    goto :goto_0

    .line 118
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 122
    .end local v0           #apkHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$APKXmlHandler;
    .end local v2           #resHandler:Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResource$RESXmlHandler;
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HtcLaputaInstaller"

    const-string v5, "isResourceVerionCorrect() failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v3, 0x0

    goto :goto_0
.end method
