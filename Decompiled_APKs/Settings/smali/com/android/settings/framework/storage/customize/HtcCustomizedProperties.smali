.class public Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;
.super Ljava/lang/Object;
.source "HtcCustomizedProperties.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "Settings"

.field private static final MODULE_NAME:Ljava/lang/String; = "properties"

.field private static mProperties:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 74
    :cond_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static get(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 86
    :cond_0
    sget-object v0, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 110
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 111
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 114
    :cond_0
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 179
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 180
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 183
    :cond_0
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 195
    .end local v0           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 191
    .restart local v0       #o:Ljava/lang/Object;
    .restart local p2
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 192
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 195
    .restart local v0       #o:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 268
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 269
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 272
    :cond_0
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 278
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 291
    .end local v1           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 280
    .restart local v1       #o:Ljava/lang/Object;
    .restart local p2
    :cond_1
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 281
    check-cast v1, Ljava/lang/Float;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 286
    .restart local v1       #o:Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 291
    .local v2, value:Ljava/lang/Float;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 287
    .end local v2           #value:Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 289
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/Float;
    goto :goto_1
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 220
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 221
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 224
    :cond_0
    sget-object v3, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 243
    .end local v1           #o:Ljava/lang/Object;
    .end local p2
    :goto_0
    return p2

    .line 232
    .restart local v1       #o:Ljava/lang/Object;
    .restart local p2
    :cond_1
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 233
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #o:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 238
    .restart local v1       #o:Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    .local v2, value:Ljava/lang/Integer;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 239
    .end local v2           #value:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 241
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/Integer;
    goto :goto_1
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 144
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 145
    invoke-static {p0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->readCustomizedData(Landroid/content/Context;)Z

    .line 148
    :cond_0
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private static readCustomizedData(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 300
    const-string v1, "Settings"

    const-string v2, "properties"

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/storage/HtcStorage$Customize;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/framework/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 303
    .local v0, customizedData:Lcom/android/settings/framework/storage/customize/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v1

    sput-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    .line 306
    sget-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sput-object v1, Lcom/android/settings/framework/storage/customize/HtcCustomizedProperties;->mProperties:Landroid/os/Bundle;

    .line 308
    const/4 v1, 0x0

    .line 314
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
