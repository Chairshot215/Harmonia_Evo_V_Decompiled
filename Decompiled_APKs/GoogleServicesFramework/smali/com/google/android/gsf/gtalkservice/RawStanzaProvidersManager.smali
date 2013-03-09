.class public Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;
.super Ljava/lang/Object;
.source "RawStanzaProvidersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParserInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProviderManager:Lorg/jivesoftware/smack/provider/ProviderManager;

.field private mRawXmlExtensionProvider:Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

.field private mRawXmlIqProvider:Lorg/jivesoftware/smack/provider/RawXmlIQProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 1
    .parameter "context"
    .parameter "providerManager"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smack/provider/RawXmlIQProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mRawXmlIqProvider:Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    .line 51
    new-instance v0, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mRawXmlExtensionProvider:Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

    .line 72
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mProviderManager:Lorg/jivesoftware/smack/provider/ProviderManager;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mParserInfoMap:Ljava/util/Map;

    .line 75
    return-void
.end method

.method private addParserInfo(Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "parserInfo"
    .parameter "key"
    .parameter "elementName"
    .parameter "namespace"
    .parameter "stanzaType"

    .prologue
    const/4 v3, 0x3

    .line 163
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addParserInfo: elem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intentReceiverInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->logd(Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mParserInfoMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 170
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mParserInfoMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->addToSortedList(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;)V

    .line 179
    const-string v1, "iq"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addParserInfo: add IQ provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mProviderManager:Lorg/jivesoftware/smack/provider/ProviderManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mRawXmlIqProvider:Lorg/jivesoftware/smack/provider/RawXmlIQProvider;

    invoke-virtual {v1, p3, p4, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_3
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addParserInfo: add extension provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mProviderManager:Lorg/jivesoftware/smack/provider/ProviderManager;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mRawXmlExtensionProvider:Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

    invoke-virtual {v1, p3, p4, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlExtensionProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/PacketExtensionProvider;)V

    goto :goto_0
.end method

.method private addToSortedList(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;)V
    .locals 5
    .parameter
    .parameter "parserInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;",
            ">;",
            "Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 203
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 204
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;

    .line 205
    .local v1, info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    iget v3, p2, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->priority:I

    iget v4, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->priority:I

    if-le v3, v4, :cond_1

    .line 210
    .end local v1           #info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    :cond_0
    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 211
    return-void

    .line 203
    .restart local v1       #info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static generateMapKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "stanzaType"
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    const/16 v1, 0x3a

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .parameter "ai"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.app.xmppstanzafilter"

    invoke-virtual {p2, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 216
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    if-nez v3, :cond_0

    .line 217
    const-string v4, "GTalkService"

    const-string v5, "[RawStanzaProvidersMgr] cannot find xml meta data"

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    .line 229
    :goto_0
    return-object v2

    .line 221
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v0

    .line 222
    .local v0, aiEnabled:Z
    if-nez v0, :cond_1

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- getActivityMetaData: ai="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->logd(Ljava/lang/String;)V

    .line 225
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .local v1, cName:Landroid/content/ComponentName;
    invoke-static {v3, v1, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->getActivityMetaData(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 228
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0
.end method

.method private static getActivityMetaData(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;Z)Ljava/util/ArrayList;
    .locals 12
    .parameter "xml"
    .parameter "cName"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/ComponentName;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 242
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 248
    .local v9, tagType:I
    const/4 v7, 0x0

    .line 249
    .local v7, inTopElement:Z
    :goto_0
    const/4 v4, 0x1

    if-eq v9, v4, :cond_2

    .line 250
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, elementName:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, namespace:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v9, v4, :cond_3

    .line 253
    const-string v4, "xmppstanzafilter"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    const/4 v7, 0x1

    .line 266
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 267
    goto :goto_0

    .line 255
    :cond_1
    if-eqz v7, :cond_0

    .line 256
    const/4 v4, 0x0

    const-string v5, "type"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, type:Ljava/lang/String;
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Z)V

    .line 259
    .local v0, info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 268
    .end local v0           #info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    .end local v1           #elementName:Ljava/lang/String;
    .end local v2           #namespace:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    .end local v7           #inTopElement:Z
    .end local v9           #tagType:I
    :catch_0
    move-exception v6

    .line 269
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading xmpp stanza metadata for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v10

    .line 278
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    :cond_2
    :goto_2
    return-object v8

    .line 261
    .restart local v1       #elementName:Ljava/lang/String;
    .restart local v2       #namespace:Ljava/lang/String;
    .restart local v7       #inTopElement:Z
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    .restart local v9       #tagType:I
    :cond_3
    const/4 v4, 0x3

    if-ne v9, v4, :cond_0

    .line 262
    :try_start_1
    const-string v4, "xmppstanzafilter"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const/4 v7, 0x0

    goto :goto_1

    .line 272
    .end local v1           #elementName:Ljava/lang/String;
    .end local v2           #namespace:Ljava/lang/String;
    .end local v7           #inTopElement:Z
    .end local v9           #tagType:I
    :catch_1
    move-exception v6

    .line 273
    .local v6, e:Ljava/io/IOException;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reading xmpp stanza metadata for "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v10

    .line 275
    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 297
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RawStanzaProvidersMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .parameter "out"

    .prologue
    .line 282
    const-string v6, "RawStanzaProviders:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, index:I
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mParserInfoMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 286
    .local v4, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;>;"
    move-object v0, v4

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 288
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;

    .line 289
    .local v3, info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->elementName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->nameSpace:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    :cond_1
    return-void
.end method

.method public getParserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "stanzaType"
    .parameter "elementName"
    .parameter "namespace"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mParserInfoMap:Ljava/util/Map;

    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public searchProvidersFromIntent()V
    .locals 14

    .prologue
    .line 104
    const-string v0, "searchProvidersFromIntent"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->logd(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 107
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "com.google.android.gtalkservice.intent.RECEIVE_XMPP"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/16 v0, 0x280

    invoke-virtual {v13, v11, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 112
    .local v10, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 113
    :cond_0
    const-string v0, "no intent receivers found"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->logd(Ljava/lang/String;)V

    .line 156
    :cond_1
    return-void

    .line 117
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 118
    .local v9, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 120
    .local v6, ai:Landroid/content/pm/ActivityInfo;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v6}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/util/ArrayList;

    move-result-object v12

    .line 121
    .local v12, parserInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 122
    :cond_4
    const-string v0, "GTalkService"

    const-string v2, "[RawStanzaProvidersMgr] parserInfos null or empty"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;

    .line 127
    .local v1, parserInfo:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    iget v0, v9, Landroid/content/pm/ResolveInfo;->priority:I

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->priority:I

    .line 128
    iget-object v3, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->elementName:Ljava/lang/String;

    .line 129
    .local v3, elementName:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->nameSpace:Ljava/lang/String;

    .line 130
    .local v4, namespace:Ljava/lang/String;
    iget-object v5, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->type:Ljava/lang/String;

    .line 134
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    const-string v0, "iq"

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "iq"

    .end local v5           #type:Ljava/lang/String;
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->addParserInfo(Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "message"

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "message"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->addParserInfo(Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "presence"

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "presence"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->addParserInfo(Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .restart local v5       #type:Ljava/lang/String;
    :cond_6
    invoke-static {v5, v3, v4}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->generateMapKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->addParserInfo(Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
