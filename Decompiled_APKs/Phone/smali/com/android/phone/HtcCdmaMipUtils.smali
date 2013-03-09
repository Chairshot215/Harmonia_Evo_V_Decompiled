.class public Lcom/android/phone/HtcCdmaMipUtils;
.super Ljava/lang/Object;
.source "HtcCdmaMipUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final ITEM_INDEX:Ljava/lang/String; = "index"

.field public static final ITEM_TEXT:Ljava/lang/String; = "text"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcMipUtils"

.field private static mMipErrorArray:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/HtcCdmaMipUtils;->mMipErrorArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/phone/HtcCdmaMipUtils;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaMipUtils;->getMIPString()V

    .line 25
    return-void
.end method

.method private static getMIPCasueString(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 68
    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/phone/HtcCdmaMipUtils;->mMipErrorArray:[Ljava/lang/String;

    array-length v1, v1

    if-le p0, v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_2

    .line 74
    const/16 v1, 0x81

    if-eq p0, v1, :cond_0

    .line 79
    :cond_2
    sget-object v1, Lcom/android/phone/HtcCdmaMipUtils;->mMipErrorArray:[Ljava/lang/String;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 80
    sget-object v0, Lcom/android/phone/HtcCdmaMipUtils;->mMipErrorArray:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private getMIPString()V
    .locals 9

    .prologue
    .line 87
    :try_start_0
    const-class v6, Lcom/android/phone/R$xml;

    .line 88
    .local v6, stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 89
    .local v1, fIDs:[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 90
    aget-object v2, v1, v3

    .line 91
    .local v2, fld:Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 94
    .local v4, nID:I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mip_error"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    iget-object v7, p0, Lcom/android/phone/HtcCdmaMipUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 96
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, v5}, Lcom/android/phone/HtcCdmaMipUtils;->getSettingGroupInfo(Landroid/content/res/XmlResourceParser;)V

    .line 97
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1           #fIDs:[Ljava/lang/reflect/Field;
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v3           #i:I
    .end local v4           #nID:I
    .end local v5           #parser:Landroid/content/res/XmlResourceParser;
    .end local v6           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    return-void

    .line 89
    .restart local v1       #fIDs:[Ljava/lang/reflect/Field;
    .restart local v2       #fld:Ljava/lang/reflect/Field;
    .restart local v3       #i:I
    .restart local v4       #nID:I
    .restart local v6       #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v1           #fIDs:[Ljava/lang/reflect/Field;
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v3           #i:I
    .end local v4           #nID:I
    .end local v6           #stringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "HtcMipUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getSettingGroupInfo(Landroid/content/res/XmlResourceParser;)V
    .locals 11
    .parameter "parser"

    .prologue
    .line 111
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 114
    .local v3, attributes:Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    .line 115
    .local v5, eventType:I
    :goto_0
    const/4 v9, 0x1

    if-eq v5, v9, :cond_4

    .line 116
    const/4 v9, 0x2

    if-ne v5, v9, :cond_3

    .line 117
    invoke-interface {v3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 118
    .local v8, size:I
    const/4 v0, -0x1

    .line 119
    .local v0, arrayIndex:I
    const/4 v7, 0x0

    .line 120
    .local v7, mipString:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 121
    invoke-interface {v3, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {v3, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, attrValue:Ljava/lang/String;
    const-string v9, "index"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 120
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 126
    :cond_1
    const-string v9, "text"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 127
    move-object v7, v2

    goto :goto_2

    .line 130
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    :cond_2
    const/4 v9, -0x1

    if-eq v0, v9, :cond_3

    if-eqz v7, :cond_3

    .line 131
    sget-object v9, Lcom/android/phone/HtcCdmaMipUtils;->mMipErrorArray:[Ljava/lang/String;

    aput-object v7, v9, v0

    .line 134
    .end local v0           #arrayIndex:I
    .end local v6           #i:I
    .end local v7           #mipString:Ljava/lang/String;
    .end local v8           #size:I
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 137
    .end local v5           #eventType:I
    :catch_0
    move-exception v4

    .line 138
    .local v4, e:Ljava/lang/Exception;
    const-string v9, "HtcMipUtils"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    return-void
.end method

.method private launchMIPDialog(I)V
    .locals 4
    .parameter "mipError"

    .prologue
    .line 54
    invoke-static {p1}, Lcom/android/phone/HtcCdmaMipUtils;->getMIPCasueString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, causeString:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1084

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    const-string v2, "com.android.phone"

    const-class v3, Lcom/android/phone/HtcCdmaMIPScreen;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v2, "MIP_ERROR_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v2, "MIP_ERROR_MSG"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/android/phone/HtcCdmaMipUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMipError(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    .line 40
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "HtcMipUtils"

    const-string v2, "Exception mip mode:"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 46
    .local v0, MIPData:[I
    if-nez v0, :cond_1

    .line 47
    const-string v1, "HtcMipUtils"

    const-string v2, "MIP without parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "HtcMipUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIP Message ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CasueCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    aget v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/phone/HtcCdmaMipUtils;->launchMIPDialog(I)V

    goto :goto_0
.end method

.method public showHotspotNotSupport()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    const-string v1, "com.android.phone"

    const-class v2, Lcom/android/phone/HtcCdmaMIPScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "com.android.phone.HtcCdmaMIPScreen.hotspot"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/android/phone/HtcCdmaMipUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
