.class public Lcom/android/htcdialer/customization/CustomizationUtility;
.super Ljava/lang/Object;
.source "CustomizationUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/customization/CustomizationUtility$ICustomizationChange;,
        Lcom/android/htcdialer/customization/CustomizationUtility$Constants;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "CustomizationUtility"

.field public static final MODULE_CUSTOMIZE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/htcdialer/customization/CustomizationUtility;->getCustomizationUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/customization/CustomizationUtility;->MODULE_CUSTOMIZE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static arrayToString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "a"
    .parameter "separator"

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v1, result:Ljava/lang/StringBuffer;
    array-length v2, p0

    if-lez v2, :cond_0

    .line 80
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 39
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 40
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-object v0
.end method

.method public static getCustomizationUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, uri:Landroid/net/Uri;
    :try_start_0
    const-string v1, "content://customization_settings/SettingTable/application_Phone"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPlentyValue(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "functionName"
    .parameter "itemName"

    .prologue
    const/4 v2, 0x0

    .line 110
    move-object v1, v2

    check-cast v1, [[Ljava/lang/String;

    .line 111
    .local v1, customizeValue:[[Ljava/lang/String;
    sget-object v3, Lcom/android/htcdialer/customization/CustomizationUtility;->MODULE_CUSTOMIZE_URI:Landroid/net/Uri;

    invoke-static {p0, v3, v2}, Lcom/android/htcdialer/customization/CustomizationUtility;->loadCustomizationData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0, p1, p2}, Lcom/android/htcdialer/customization/CustomizationUtility;->getPlentyValueInBundle(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    .line 115
    return-object v1
.end method

.method public static getPlentyValueInBundle(Landroid/os/Bundle;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 20
    .parameter "bundle"
    .parameter "functionName"

    .prologue
    .line 157
    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/String;

    .line 159
    .local v3, customizeValue:[[Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 160
    .local v4, functionBundle:Landroid/os/Bundle;
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 161
    .local v16, setNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 162
    .local v14, setIndex:I
    const/4 v7, 0x0

    .line 163
    .local v7, itemIndex:I
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 164
    .local v15, setName:Ljava/lang/String;
    const-string v17, "plenty_set"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 165
    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 166
    .local v13, setBundle:Landroid/os/Bundle;
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 167
    .local v10, itemNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 168
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v17

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v18

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    const-class v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #customizeValue:[[Ljava/lang/String;
    check-cast v3, [[Ljava/lang/String;

    .line 170
    .restart local v3       #customizeValue:[[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 171
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 172
    .local v9, itemName:Ljava/lang/String;
    aget-object v17, v3, v14

    add-int/lit8 v8, v7, 0x1

    .end local v7           #itemIndex:I
    .local v8, itemIndex:I
    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v7

    move v7, v8

    .end local v8           #itemIndex:I
    .restart local v7       #itemIndex:I
    goto :goto_1

    .line 175
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #itemName:Ljava/lang/String;
    .end local v10           #itemNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13           #setBundle:Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 178
    .end local v15           #setName:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 179
    const-string v17, "CustomizationUtility"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getPlentyValueInBundle(): functionName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object v2, v3

    .local v2, arr$:[[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v11, :cond_3

    aget-object v12, v2, v5

    .line 182
    .local v12, plentySet:[Ljava/lang/String;
    const-string v17, "CustomizationUtility"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getPlentyValueInBundle(): ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lcom/android/htcdialer/customization/CustomizationUtility;->arrayToString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 186
    .end local v2           #arr$:[[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v11           #len$:I
    .end local v12           #plentySet:[Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method public static getPlentyValueInBundle(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 10
    .parameter "bundle"
    .parameter "functionName"
    .parameter "itemName"

    .prologue
    const/4 v7, 0x0

    .line 128
    move-object v0, v7

    check-cast v0, [[Ljava/lang/String;

    .line 130
    .local v0, customizeValue:[[Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 131
    .local v5, targetBundle:Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v3

    .line 132
    .local v3, plenty_count:I
    array-length v1, p2

    .line 134
    .local v1, key_count:I
    if-lez v3, :cond_0

    if-gtz v1, :cond_1

    .line 136
    :cond_0
    const-string v8, "CustomizationUtility"

    const-string v9, "No item to be customized!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    check-cast v7, [[Ljava/lang/String;

    .line 151
    :goto_0
    return-object v7

    .line 140
    :cond_1
    filled-new-array {v3, v1}, [I

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #customizeValue:[[Ljava/lang/String;
    check-cast v0, [[Ljava/lang/String;

    .line 141
    .restart local v0       #customizeValue:[[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, set_idx:I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plenty_set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 145
    .local v6, targetItem:Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, key_idx:I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 147
    aget-object v7, v0, v4

    aget-object v8, p2, v2

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2           #key_idx:I
    .end local v6           #targetItem:Landroid/os/Bundle;
    :cond_3
    move-object v7, v0

    .line 151
    goto :goto_0
.end method

.method public static getSingleValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "functionName"
    .parameter "itemName"

    .prologue
    .line 199
    const-string v1, ""

    .line 200
    .local v1, customizeValue:Ljava/lang/String;
    sget-object v2, Lcom/android/htcdialer/customization/CustomizationUtility;->MODULE_CUSTOMIZE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/htcdialer/customization/CustomizationUtility;->loadCustomizationData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0, p1, p2}, Lcom/android/htcdialer/customization/CustomizationUtility;->getSingleValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    return-object v1
.end method

.method public static getSingleValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "bundle"
    .parameter "functionName"
    .parameter "itemName"

    .prologue
    .line 217
    const-string v0, ""

    .line 219
    .local v0, customizeValue:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 220
    .local v1, targetBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    move-object v0, v2

    .line 230
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getSingleValueInBundle(Landroid/os/Bundle;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 14
    .parameter "bundle"
    .parameter "functionName"

    .prologue
    .line 237
    const/4 v1, 0x0

    check-cast v1, [[Ljava/lang/String;

    .line 239
    .local v1, customizeValue:[[Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 240
    .local v9, targetBundle:Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 242
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 243
    .local v6, itemNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    const/4 v12, 0x2

    filled-new-array {v11, v12}, [I

    move-result-object v11

    const-class v12, Ljava/lang/String;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #customizeValue:[[Ljava/lang/String;
    check-cast v1, [[Ljava/lang/String;

    .line 244
    .restart local v1       #customizeValue:[[Ljava/lang/String;
    const/4 v3, 0x0

    .line 245
    .local v3, index:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    .local v5, itemName:Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, value:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 250
    aget-object v11, v1, v3

    const/4 v12, 0x0

    aput-object v5, v11, v12

    .line 251
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-object v11, v1, v3

    const/4 v12, 0x1

    aput-object v10, v11, v12

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 256
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v5           #itemName:Ljava/lang/String;
    .end local v6           #itemNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10           #value:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 257
    const-string v11, "CustomizationUtility"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSingleValueInBundle(): functionName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    move-object v0, v1

    .local v0, arr$:[[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v7, :cond_2

    aget-object v8, v0, v2

    .line 260
    .local v8, set:[Ljava/lang/String;
    const-string v11, "CustomizationUtility"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSingleValueInBundle(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = "

    invoke-static {v8, v13}, Lcom/android/htcdialer/customization/CustomizationUtility;->arrayToString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .end local v0           #arr$:[[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v7           #len$:I
    .end local v8           #set:[Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static loadCustomizationData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "customizationUri"
    .parameter "selection"

    .prologue
    const/4 v11, 0x0

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 280
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 284
    if-nez v7, :cond_1

    .line 286
    const-string v1, "CustomizationUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quering customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    if-eqz v7, :cond_0

    .line 311
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    const/4 v7, 0x0

    :cond_0
    move-object v1, v11

    .line 316
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 290
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 292
    const-string v1, "CustomizationUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quering customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    const/4 v7, 0x0

    .line 309
    if-eqz v7, :cond_2

    .line 311
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    const/4 v7, 0x0

    :cond_2
    move-object v1, v11

    .line 295
    goto :goto_0

    .line 298
    :cond_3
    :try_start_2
    const-string v1, "value"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 299
    .local v10, idValue:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 300
    .local v8, data:[B
    invoke-static {v8}, Lcom/android/htcdialer/customization/CustomizationUtility;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 309
    if-eqz v7, :cond_4

    .line 311
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    :goto_1
    const/4 v7, 0x0

    :cond_4
    move-object v1, v6

    .line 316
    goto :goto_0

    .line 302
    :catch_0
    move-exception v9

    .line 304
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "CustomizationUtility"

    const-string v2, "Quering customization database failed with exception, abort performing customization"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    const/4 v6, 0x0

    .line 309
    if-eqz v7, :cond_4

    .line 311
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 309
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 311
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    const/4 v7, 0x0

    .line 309
    :cond_5
    throw v1
.end method

.method public static loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/htcdialer/customization/CustomizationUtility;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
