.class public Lcom/htc/android/mail/pim/vcard/VCardParser_V30;
.super Lcom/htc/android/mail/pim/vcard/VCardParser_V21;
.source "VCardParser_V30.java"


# static fields
.field private static final V21LINEBREAKER:Ljava/lang/String; = "\r\n"

.field private static final acceptableParam:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final acceptablePropsWithParam:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final acceptablePropsWithoutParam:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final propV30ToV21Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PHOTO"

    aput-object v2, v1, v3

    const-string v2, "LOGO"

    aput-object v2, v1, v4

    const-string v2, "TEL"

    aput-object v2, v1, v5

    const-string v2, "EMAIL"

    aput-object v2, v1, v6

    const-string v2, "ADR"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptablePropsWithParam:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ORG"

    aput-object v2, v1, v3

    const-string v2, "NOTE"

    aput-object v2, v1, v4

    const-string v2, "TITLE"

    aput-object v2, v1, v5

    const-string v2, "FN"

    aput-object v2, v1, v6

    const-string v2, "N"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptablePropsWithoutParam:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "CHARSET"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptableParam:Ljava/util/HashSet;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->propV30ToV21Map:Ljava/util/HashMap;

    .line 53
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->propV30ToV21Map:Ljava/util/HashMap;

    const-string v1, "PHOTO"

    const-string v2, "PHOTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->propV30ToV21Map:Ljava/util/HashMap;

    const-string v1, "LOGO"

    const-string v2, "PHOTO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;-><init>()V

    return-void
.end method

.method private mapContentlineV30ToV21(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "propName"
    .parameter "params"
    .parameter "value"

    .prologue
    .line 153
    sget-object v7, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->propV30ToV21Map:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    sget-object v7, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->propV30ToV21Map:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 160
    .local v6, result:Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptablePropsWithParam:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    const-string v9, ";"

    invoke-direct {p0, p2, v8, v9}, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ENCODING=B;"

    const-string v10, "ENCODING=BASE64;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ENCODING=b;"

    const-string v10, "ENCODING=BASE64;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ENCODING=B:"

    const-string v10, "ENCODING=BASE64:"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ENCODING=b:"

    const-string v10, "ENCODING=BASE64:"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 170
    :cond_0
    sget-object v7, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptablePropsWithoutParam:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 172
    const-string v7, ";"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, paramlist:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 175
    .local v3, param:Ljava/lang/String;
    const-string v7, "="

    const/4 v8, 0x2

    invoke-static {v3, v7, v8}, Lcom/htc/android/mail/pim/util/StringUtil;->SplitN(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, param_data:[Ljava/lang/String;
    sget-object v7, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptableParam:Ljava/util/HashSet;

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #param:Ljava/lang/String;
    .end local v4           #param_data:[Ljava/lang/String;
    .end local v5           #paramlist:[Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :cond_2
    move-object v6, p1

    .restart local v6       #result:Ljava/lang/String;
    goto/16 :goto_0

    .line 182
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "expr"
    .parameter "substitute"

    .prologue
    .line 137
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, flag:I
    :goto_0
    if-lez v0, :cond_0

    .line 142
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v0, v3

    .line 143
    .local v1, offset:I
    invoke-virtual {v2, v0, v1, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v2, p2, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 146
    .end local v1           #offset:I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private splitProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "scStr"

    .prologue
    .line 197
    const-string v3, "\r\n"

    const-string v4, "\n"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 199
    .local v0, b:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, index:I
    const/4 v1, 0x0

    .line 203
    .local v1, cnt:I
    :cond_0
    :goto_0
    if-ltz v2, :cond_4

    .line 205
    const-string v3, "\n "

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 206
    if-gez v2, :cond_1

    .line 207
    const-string v3, "\n\t"

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 208
    :cond_1
    if-ltz v2, :cond_0

    .line 210
    :goto_1
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 211
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_3
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 213
    const/4 v1, 0x0

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/htc/android/mail/pim/VBuilder;)Z
    .locals 15
    .parameter "vcard"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    move-object/from16 v9, p1

    .line 62
    .local v9, scStr:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .local v11, v21str:Ljava/lang/StringBuilder;
    invoke-direct {p0, v9}, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->splitProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, strlist:[Ljava/lang/String;
    const-string v13, "BEGIN:vCard"

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "BEGIN:VCARD"

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 69
    :cond_0
    const-string v13, "BEGIN:VCARD\r\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v8, 0x0

    .line 75
    .local v8, saveValue:Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_8

    .line 81
    aget-object v3, v10, v2

    .line 82
    .local v3, line:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 83
    const-string v13, "\r\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v2           #i:I
    .end local v3           #line:Ljava/lang/String;
    .end local v8           #saveValue:Z
    :cond_2
    const/4 v13, 0x0

    .line 119
    :goto_2
    return v13

    .line 86
    .restart local v2       #i:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v8       #saveValue:Z
    :cond_3
    const-string v13, ":"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_4

    .line 88
    if-eqz v8, :cond_1

    .line 89
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v13, "\r\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_4
    const-string v13, ":"

    const/4 v14, 0x2

    invoke-static {v3, v13, v14}, Lcom/htc/android/mail/pim/util/StringUtil;->SplitN(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, contentline:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v7, v1, v13

    .line 96
    .local v7, propNameAndParam:Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v12, v1, v13

    .line 97
    .local v12, value:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    .line 98
    const-string v13, ";"

    const/4 v14, 0x2

    invoke-static {v7, v13, v14}, Lcom/htc/android/mail/pim/util/StringUtil;->SplitN(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, nameAndParams:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v6, v4, v13

    .line 100
    .local v6, propName:Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x1

    if-le v13, v14, :cond_6

    const/4 v13, 0x1

    aget-object v5, v4, v13

    .line 102
    .local v5, params:Ljava/lang/String;
    :goto_3
    sget-object v13, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptablePropsWithParam:Ljava/util/HashSet;

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    sget-object v13, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->acceptablePropsWithoutParam:Ljava/util/HashSet;

    invoke-virtual {v13, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 104
    :cond_5
    invoke-direct {p0, v6, v5, v12}, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;->mapContentlineV30ToV21(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/4 v8, 0x1

    goto :goto_1

    .line 100
    .end local v5           #params:Ljava/lang/String;
    :cond_6
    const-string v5, ""

    goto :goto_3

    .line 108
    .restart local v5       #params:Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 112
    .end local v1           #contentline:[Ljava/lang/String;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #nameAndParams:[Ljava/lang/String;
    .end local v5           #params:Ljava/lang/String;
    .end local v6           #propName:Ljava/lang/String;
    .end local v7           #propNameAndParam:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_8
    const-string v13, "END:vCard"

    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "END:VCARD"

    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 114
    :cond_9
    const-string v13, "END:VCARD\r\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-super {p0, v13, v0}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;->parse(Ljava/lang/String;Lcom/htc/android/mail/pim/VBuilder;)Z

    move-result v13

    goto :goto_2

    .line 116
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_2
.end method
