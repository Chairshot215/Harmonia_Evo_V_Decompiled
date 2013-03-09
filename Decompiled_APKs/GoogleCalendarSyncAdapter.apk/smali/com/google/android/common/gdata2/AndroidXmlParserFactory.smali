.class public Lcom/google/android/common/gdata2/AndroidXmlParserFactory;
.super Ljava/lang/Object;
.source "AndroidXmlParserFactory.java"

# interfaces
.implements Lcom/google/wireless/gdata2/parser/xml/XmlParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/common/SafeXmlSerializer;

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/SafeXmlSerializer;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    return-object v0
.end method
