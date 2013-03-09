.class public Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoDiscoverUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;,
        Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;
    }
.end annotation


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"


# instance fields
.field private mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

.field private mContext:Landroid/content/Context;

.field private mStopAutoDiscover:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1316
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mStopAutoDiscover:Z

    .line 1317
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mContext:Landroid/content/Context;

    .line 1318
    return-void
.end method

.method private createRequestAutodiscoverXML(Ljava/lang/String;)[B
    .locals 6
    .parameter "emailAddr"

    .prologue
    .line 1583
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1586
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 1588
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "UTF-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1589
    const-string v3, "UTF-8"

    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1590
    const-string v3, ""

    const-string v4, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "Autodiscover"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1592
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "Request"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1593
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "EMailAddress"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1594
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1595
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "EMailAddress"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1596
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "AcceptableResponseSchema"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1597
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/responseschema/2006"

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1598
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "AcceptableResponseSchema"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1599
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "Request"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1600
    const-string v3, "http://schemas.microsoft.com/exchange/autodiscover/mobilesync/requestschema/2006"

    const-string v4, "Autodiscover"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1601
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    .end local v2           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 1602
    :catch_0
    move-exception v1

    .line 1603
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const-string v4, "WSO: "

    invoke-static {v3, v4, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private processAutoDiscoverAction(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1610
    const/4 v1, 0x0

    .line 1611
    .local v1, result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    const/4 v0, 0x0

    .line 1613
    .local v0, curTagName:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 1614
    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1615
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1616
    const-string v2, "Error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1617
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->processAutoDiscoverServerError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    move-result-object v1

    .line 1636
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 1618
    :cond_1
    const-string v2, "Settings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1619
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->processAutoDiscoverServerSetting(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    move-result-object v1

    goto :goto_1

    .line 1620
    :cond_2
    const-string v2, "Redirect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1621
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1622
    new-instance v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    .end local v1           #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    invoke-direct {v1, p0}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;-><init>(Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;)V

    .line 1623
    .restart local v1       #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    sget-object v2, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->REDIRECT:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    iput-object v2, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    .line 1624
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object v2, v1

    .line 1638
    :goto_2
    return-object v2

    .line 1627
    :cond_3
    const/4 v2, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1628
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1629
    const-string v2, "Action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 1630
    goto :goto_2

    .line 1632
    :cond_4
    const/4 v2, 0x4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1633
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    goto :goto_1

    .line 1638
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private processAutoDiscoverServerError(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1676
    const/4 v5, 0x0

    .line 1677
    .local v5, result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    const/4 v0, 0x0

    .line 1679
    .local v0, curTagName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1680
    .local v4, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1681
    .local v3, errorStatus:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 1682
    const/4 v6, 0x2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1683
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1707
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 1684
    :cond_1
    const/4 v6, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1685
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1686
    const-string v6, "Error"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1687
    new-instance v5, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    .end local v5           #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    invoke-direct {v5, p0}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;-><init>(Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;)V

    .line 1688
    .restart local v5       #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    sget-object v6, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    .line 1689
    iput-object v4, v5, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    .line 1691
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultInt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v6, v5

    .line 1709
    :goto_3
    return-object v6

    .line 1692
    :catch_0
    move-exception v2

    .line 1693
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1697
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 1698
    :cond_3
    const/4 v6, 0x4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1699
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, curTagVal:Ljava/lang/String;
    const-string v6, "Message"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1701
    move-object v4, v1

    goto :goto_1

    .line 1702
    :cond_4
    const-string v6, "ErrorCode"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "Status"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1704
    :cond_5
    move-object v3, v1

    goto :goto_1

    .line 1709
    .end local v1           #curTagVal:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private processAutoDiscoverServerSetting(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1643
    const/4 v3, 0x0

    .line 1644
    .local v3, result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    const/4 v0, 0x0

    .line 1646
    .local v0, curTagName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1647
    .local v2, isMobileSync:Z
    :goto_0
    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 1648
    const/4 v4, 0x2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1649
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1670
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 1650
    :cond_1
    const/4 v4, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 1651
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1652
    const-string v4, "Settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1672
    .end local v3           #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :goto_2
    return-object v3

    .line 1655
    .restart local v3       #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 1656
    :cond_3
    const/4 v4, 0x4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1657
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1658
    .local v1, curTagVal:Ljava/lang/String;
    const-string v4, "Type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1659
    const-string v4, "MobileSync"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1660
    const/4 v2, 0x1

    .line 1661
    new-instance v3, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    .end local v3           #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    invoke-direct {v3, p0}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;-><init>(Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;)V

    .line 1662
    .restart local v3       #result:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    sget-object v4, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->SETTINGS:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    iput-object v4, v3, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    goto :goto_1

    .line 1664
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1666
    :cond_5
    const-string v4, "Url"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 1667
    iput-object v1, v3, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    goto :goto_1

    .line 1672
    .end local v1           #curTagVal:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 32
    .parameter "emailAddr"
    .parameter "domain"
    .parameter "account"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1352
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_0

    const-string v28, "EAS_SyncManager"

    const-string v29, " autoDiscover()"

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_0
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mStopAutoDiscover:Z

    .line 1354
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1355
    .local v4, bundle:Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 1357
    .local v14, loginCredentialType:I
    const/4 v13, 0x0

    .line 1358
    .local v13, loginCredential:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1359
    const-string v28, "email"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const-string v28, "domain"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v28, "account"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v28, "password"

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1364
    const/4 v14, 0x1

    .line 1375
    :goto_0
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 1380
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->createRequestAutodiscoverXML(Ljava/lang/String;)[B

    move-result-object v17

    .line 1381
    .local v17, reqData:[B
    new-instance v18, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1382
    .local v18, reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    const/16 v20, 0x0

    .line 1383
    .local v20, response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    const-string v28, "@"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v3, v28, v29

    .line 1384
    .local v3, addrDomain:Ljava/lang/String;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "https://autodiscover."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "https://"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    .line 1389
    .local v27, targetURLs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1390
    .local v12, isRedirect:Z
    const/4 v10, 0x0

    .line 1391
    .local v10, i:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .local v11, i:I
    aget-object v26, v27, v10

    .local v26, targetURL:Ljava/lang/String;
    move-object/from16 v21, v20

    .line 1392
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .local v21, response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :goto_2
    if-eqz v26, :cond_2b

    .line 1393
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_1

    const-string v28, "EAS_SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " targetURL: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_1
    new-instance v28, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    const-string v29, "Content-Type"

    const-string v30, "text/xml"

    invoke-virtual/range {v28 .. v30}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    const-string v29, "Authorization"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Basic "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v9

    .line 1402
    .local v9, httpClient:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.connection.timeout"

    new-instance v30, Ljava/lang/Integer;

    const/16 v31, 0x7530

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v28 .. v30}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1405
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.socket.timeout"

    new-instance v30, Ljava/lang/Integer;

    const/16 v31, 0x7530

    invoke-direct/range {v30 .. v31}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v28 .. v30}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1409
    const/16 v19, 0x0

    .line 1412
    .local v19, resp:Lorg/apache/http/HttpResponse;
    :try_start_1
    const-string v28, "https"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    const-string v22, "https"

    .line 1413
    .local v22, scheme:Ljava/lang/String;
    :goto_3
    const-string v28, "://"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v28, v28, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1414
    .local v8, hostname:Ljava/lang/String;
    const/16 v28, 0x0

    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1415
    const/16 v25, 0x0

    .line 1416
    .local v25, targetHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v28

    const-string v29, "http.route.default-proxy"

    invoke-interface/range {v28 .. v29}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_2

    .line 1417
    new-instance v25, Lorg/apache/http/HttpHost;

    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    const/16 v28, 0x1bb

    const-string v29, "https"

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v8, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1420
    .restart local v25       #targetHost:Lorg/apache/http/HttpHost;
    :cond_2
    if-eqz v25, :cond_6

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    .line 1425
    :goto_4
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    .line 1426
    .local v24, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v28

    const/16 v29, 0xc8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 1500
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 1501
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 1504
    .local v5, curTagName:Ljava/lang/String;
    new-instance v28, Ljava/io/InputStreamReader;

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1505
    const-string v28, "Autodiscover"

    move-object/from16 v0, v28

    invoke-static {v15, v0}, Lcom/htc/android/mail/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1507
    :goto_5
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2a

    .line 1508
    const/16 v28, 0x2

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 1509
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1510
    const-string v28, "Action"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 1511
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->processAutoDiscoverAction(Lorg/xmlpull/v1/XmlPullParser;)Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v20

    .line 1524
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :goto_6
    if-nez v20, :cond_18

    .line 1525
    :try_start_3
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_3

    const-string v28, "EAS_SyncManager"

    const-string v29, " autoDiscover(): cannot parse the server result"

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1547
    :cond_3
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_25

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    .line 1554
    .end local v5           #curTagName:Ljava/lang/String;
    .end local v8           #hostname:Ljava/lang/String;
    .end local v9           #httpClient:Landroid/net/http/AndroidHttpClient;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #resp:Lorg/apache/http/HttpResponse;
    .end local v22           #scheme:Ljava/lang/String;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    :goto_7
    if-eqz v20, :cond_1f

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v28, v0

    sget-object v29, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->SETTINGS:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 1555
    const-string v28, "return"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1556
    const-string v28, "server"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :goto_8
    return-object v4

    .line 1366
    .end local v3           #addrDomain:Ljava/lang/String;
    .end local v10           #i:I
    .end local v12           #isRedirect:Z
    .end local v17           #reqData:[B
    .end local v18           #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .end local v26           #targetURL:Ljava/lang/String;
    .end local v27           #targetURLs:[Ljava/lang/String;
    :cond_4
    const-string v28, "email"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v28, "domain"

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const-string v28, "account"

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v28, "password"

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\\"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1371
    const/4 v14, 0x2

    goto/16 :goto_0

    .line 1376
    :catch_0
    move-exception v6

    .line 1377
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1412
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #addrDomain:Ljava/lang/String;
    .restart local v9       #httpClient:Landroid/net/http/AndroidHttpClient;
    .restart local v11       #i:I
    .restart local v12       #isRedirect:Z
    .restart local v17       #reqData:[B
    .restart local v18       #reqEntity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v19       #resp:Lorg/apache/http/HttpResponse;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v26       #targetURL:Ljava/lang/String;
    .restart local v27       #targetURLs:[Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v22, "http"

    goto/16 :goto_3

    .line 1423
    .restart local v8       #hostname:Ljava/lang/String;
    .restart local v22       #scheme:Ljava/lang/String;
    .restart local v25       #targetHost:Lorg/apache/http/HttpHost;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    goto/16 :goto_4

    .line 1427
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    :cond_7
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    const/16 v29, 0x191

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 1428
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_8

    const-string v28, "EAS_SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " statusLine error :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_8
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_a

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1432
    const-string v28, "domain"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v28, "account"

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v28, "password"

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v13

    .line 1436
    const/4 v14, 0x3

    .line 1438
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v13

    .line 1442
    :goto_9
    add-int/lit8 v10, v11, -0x1

    .line 1547
    .end local v11           #i:I
    .restart local v10       #i:I
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v10, v0, :cond_28

    .line 1549
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    aget-object v26, v27, v10

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    :goto_a
    move v11, v10

    .line 1443
    .end local v10           #i:I
    .restart local v11       #i:I
    goto/16 :goto_2

    .line 1439
    :catch_1
    move-exception v6

    .line 1440
    .restart local v6       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    .line 1462
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #hostname:Ljava/lang/String;
    .end local v22           #scheme:Ljava/lang/String;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    :catch_2
    move-exception v6

    move-object/from16 v20, v21

    .line 1463
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :goto_b
    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mStopAutoDiscover:Z

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1464
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1465
    const-string v28, "EAS_SyncManager"

    const-string v29, "Auto discover cancel by user."

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    :cond_9
    const-string v28, "return"

    const/16 v29, -0xb

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1547
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_22

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    :goto_c
    goto/16 :goto_8

    .line 1445
    .end local v6           #e:Ljava/lang/Exception;
    .end local v10           #i:I
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v8       #hostname:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v22       #scheme:Ljava/lang/String;
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v25       #targetHost:Lorg/apache/http/HttpHost;
    :cond_a
    :try_start_8
    new-instance v20, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;-><init>(Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1446
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :try_start_9
    sget-object v28, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    .line 1447
    const/16 v28, 0x191

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultInt:I

    .line 1448
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1547
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_25

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    goto/16 :goto_7

    .line 1450
    .end local v10           #i:I
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v11       #i:I
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_b
    :try_start_a
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v28

    const/16 v29, 0x193

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 1451
    new-instance v20, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;-><init>(Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1452
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :try_start_b
    sget-object v28, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    .line 1453
    const/16 v28, 0x193

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultInt:I

    .line 1454
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    .line 1455
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_c

    const-string v28, "EAS_SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " statusLine error :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1547
    :cond_c
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_25

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    goto/16 :goto_7

    .line 1459
    .end local v10           #i:I
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v11       #i:I
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_d
    :try_start_c
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_e

    const-string v28, "EAS_SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " statusLine error2 :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1547
    :cond_e
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_29

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    :goto_d
    move v11, v10

    .line 1460
    .end local v10           #i:I
    .restart local v11       #i:I
    goto/16 :goto_2

    .line 1470
    .end local v8           #hostname:Ljava/lang/String;
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .end local v22           #scheme:Ljava/lang/String;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_f
    :try_start_d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1471
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v7

    .line 1472
    .local v7, errorCode:I
    const/16 v28, 0x204

    move/from16 v0, v28

    if-eq v7, v0, :cond_10

    const/16 v28, 0x205

    move/from16 v0, v28

    if-eq v7, v0, :cond_10

    const/16 v28, 0x207

    move/from16 v0, v28

    if-eq v7, v0, :cond_10

    const/16 v28, 0x206

    move/from16 v0, v28

    if-ne v7, v0, :cond_11

    .line 1476
    :cond_10
    const-string v28, "://"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v28, v28, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1477
    .restart local v8       #hostname:Ljava/lang/String;
    const/16 v28, 0x0

    const-string v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1478
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->getServerFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1479
    .local v23, server:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-static {v9, v0, v1, v7, v6}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1480
    const-string v28, "return"

    const/16 v29, 0x131

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1481
    const-string v28, "server"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1547
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_22

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    goto/16 :goto_c

    .line 1485
    .end local v8           #hostname:Ljava/lang/String;
    .end local v10           #i:I
    .end local v23           #server:Ljava/lang/String;
    .restart local v11       #i:I
    :cond_11
    :try_start_e
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ne v11, v0, :cond_14

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isDeviceSetProxy(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->isUseProxy(Landroid/content/Context;)Z

    move-result v28

    if-nez v28, :cond_13

    .line 1488
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1489
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_12

    const-string v28, "EAS_SyncManager"

    const-string v29, "Autodiscover cannot connect to server, try to use proxy"

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1491
    const/4 v10, 0x0

    .line 1547
    .end local v11           #i:I
    .restart local v10       #i:I
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v10, v0, :cond_23

    .line 1549
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    aget-object v26, v27, v10

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    :goto_e
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v21, v20

    .line 1492
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    goto/16 :goto_2

    .line 1495
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_13
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->setUseProxy(Landroid/content/Context;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1547
    :cond_14
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_24

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    :goto_f
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v21, v20

    .line 1497
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    goto/16 :goto_2

    .line 1513
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #errorCode:I
    .restart local v5       #curTagName:Ljava/lang/String;
    .restart local v8       #hostname:Ljava/lang/String;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22       #scheme:Ljava/lang/String;
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v25       #targetHost:Lorg/apache/http/HttpHost;
    :cond_15
    :try_start_10
    const-string v28, "Account"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1514
    new-instance v20, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;-><init>(Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1515
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :try_start_11
    sget-object v28, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    .line 1516
    const-string v28, "unauthenticated requests"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_6

    .line 1547
    .end local v5           #curTagName:Ljava/lang/String;
    .end local v8           #hostname:Ljava/lang/String;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #scheme:Ljava/lang/String;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    :catchall_0
    move-exception v28

    :goto_10
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v11, v0, :cond_21

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    .line 1547
    :goto_11
    throw v28

    .line 1519
    .end local v10           #i:I
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v5       #curTagName:Ljava/lang/String;
    .restart local v8       #hostname:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v22       #scheme:Ljava/lang/String;
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v25       #targetHost:Lorg/apache/http/HttpHost;
    :cond_16
    const/16 v28, 0x4

    :try_start_12
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 1520
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 1522
    :cond_17
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_5

    .line 1547
    .end local v5           #curTagName:Ljava/lang/String;
    .end local v8           #hostname:Ljava/lang/String;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v22           #scheme:Ljava/lang/String;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    :catchall_1
    move-exception v28

    move-object/from16 v20, v21

    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    goto :goto_10

    .line 1527
    .restart local v5       #curTagName:Ljava/lang/String;
    .restart local v8       #hostname:Ljava/lang/String;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22       #scheme:Ljava/lang/String;
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v25       #targetHost:Lorg/apache/http/HttpHost;
    :cond_18
    :try_start_13
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v28, v0

    sget-object v29, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->REDIRECT:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 1528
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_19

    const-string v28, "EAS_SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " autoDiscover(): Redirect to : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    :cond_19
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1530
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v3, v28, v29

    .line 1531
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v28, 0x0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "https://autodiscover."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v28

    const/16 v28, 0x1

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "https://"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/autodiscover/autodiscover.xml"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v16, v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1535
    .local v16, redirectURLs:[Ljava/lang/String;
    move-object/from16 v27, v16

    .line 1536
    const/4 v10, 0x0

    .line 1547
    .end local v11           #i:I
    .restart local v10       #i:I
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v10, v0, :cond_26

    .line 1549
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    aget-object v26, v27, v10

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    :goto_12
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v21, v20

    .line 1537
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    goto/16 :goto_2

    .line 1538
    .end local v16           #redirectURLs:[Ljava/lang/String;
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_1a
    :try_start_14
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v28, v0

    sget-object v29, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->SETTINGS:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 1539
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_1b

    const-string v28, "EAS_SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " autoDiscover(): Get setting : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1547
    :cond_1b
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_25

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    goto/16 :goto_7

    .line 1541
    .end local v10           #i:I
    .restart local v11       #i:I
    :cond_1c
    :try_start_15
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->responseType:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v28, v0

    sget-object v29, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 1542
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/SyncManager;->access$000()Z

    move-result v28

    if-eqz v28, :cond_1d

    const-string v28, "EAS_SyncManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, " autoDiscover(): Error("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultInt:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ") : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1547
    :cond_1d
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_25

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    goto/16 :goto_7

    .line 1551
    .end local v10           #i:I
    .restart local v11       #i:I
    :cond_1e
    const/16 v26, 0x0

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    :goto_13
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    move-object/from16 v21, v20

    .line 1553
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    goto/16 :goto_2

    .line 1559
    .end local v5           #curTagName:Ljava/lang/String;
    .end local v8           #hostname:Ljava/lang/String;
    .end local v9           #httpClient:Landroid/net/http/AndroidHttpClient;
    .end local v11           #i:I
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #resp:Lorg/apache/http/HttpResponse;
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .end local v22           #scheme:Ljava/lang/String;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    .restart local v10       #i:I
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_1f
    const-string v28, "return"

    const/16 v29, 0x12c

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1560
    if-eqz v20, :cond_20

    .line 1561
    const-string v28, "errorCode"

    move-object/from16 v0, v20

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultInt:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1562
    const-string v28, "errorMsg"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;->resultStr:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_20
    const-string v28, "server"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1551
    .end local v10           #i:I
    .restart local v9       #httpClient:Landroid/net/http/AndroidHttpClient;
    .restart local v11       #i:I
    .restart local v19       #resp:Lorg/apache/http/HttpResponse;
    :cond_21
    const/16 v26, 0x0

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_11

    .end local v10           #i:I
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v11       #i:I
    :cond_22
    const/16 v26, 0x0

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_8

    .restart local v7       #errorCode:I
    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_e

    .end local v10           #i:I
    .restart local v11       #i:I
    :cond_24
    const/16 v26, 0x0

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_f

    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #errorCode:I
    .end local v10           #i:I
    .restart local v8       #hostname:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v22       #scheme:Ljava/lang/String;
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v25       #targetHost:Lorg/apache/http/HttpHost;
    :cond_25
    const/16 v26, 0x0

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_7

    .restart local v5       #curTagName:Ljava/lang/String;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #redirectURLs:[Ljava/lang/String;
    :cond_26
    const/16 v26, 0x0

    goto/16 :goto_12

    .line 1547
    .end local v10           #i:I
    .end local v16           #redirectURLs:[Ljava/lang/String;
    .restart local v11       #i:I
    :cond_27
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 1548
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v11, v0, :cond_1e

    .line 1549
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    aget-object v26, v27, v11

    goto :goto_13

    .line 1551
    .end local v5           #curTagName:Ljava/lang/String;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_28
    const/16 v26, 0x0

    goto/16 :goto_a

    .end local v10           #i:I
    .restart local v11       #i:I
    :cond_29
    const/16 v26, 0x0

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto/16 :goto_d

    .line 1462
    .end local v10           #i:I
    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v11       #i:I
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :catch_3
    move-exception v6

    goto/16 :goto_b

    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v5       #curTagName:Ljava/lang/String;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_2a
    move-object/from16 v20, v21

    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    goto/16 :goto_6

    .end local v5           #curTagName:Ljava/lang/String;
    .end local v8           #hostname:Ljava/lang/String;
    .end local v9           #httpClient:Landroid/net/http/AndroidHttpClient;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v19           #resp:Lorg/apache/http/HttpResponse;
    .end local v20           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .end local v22           #scheme:Ljava/lang/String;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #targetHost:Lorg/apache/http/HttpHost;
    .restart local v21       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    :cond_2b
    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    move-object/from16 v20, v21

    .end local v21           #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    .restart local v20       #response:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResult;
    goto/16 :goto_7
.end method

.method getServerFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1332
    if-nez p1, :cond_0

    .line 1333
    const/4 v2, 0x0

    .line 1340
    :goto_0
    return-object v2

    .line 1335
    :cond_0
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x3

    .line 1336
    .local v1, start:I
    const-string v2, "/"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1337
    .local v0, end:I
    if-ge v0, v1, :cond_1

    .line 1338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1340
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mStopAutoDiscover:Z

    return v0
.end method

.method public stopAutoDiscover()V
    .locals 2

    .prologue
    .line 1571
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_0

    .line 1572
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mStopAutoDiscover:Z

    .line 1574
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;->mAutoDiscoverHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1580
    :cond_0
    return-void

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
