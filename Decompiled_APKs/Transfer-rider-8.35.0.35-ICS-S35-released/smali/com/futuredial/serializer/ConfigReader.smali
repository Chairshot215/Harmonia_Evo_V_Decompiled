.class public Lcom/futuredial/serializer/ConfigReader;
.super Ljava/lang/Object;
.source "ConfigReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetSettingType(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/PhoneSetting$SettingType;
    .locals 12
    .parameter "context"
    .parameter "strPolicy"

    .prologue
    const/4 v11, -0x1

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "phonesetting.dat"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 23
    .local v3, is:Ljava/io/InputStream;
    invoke-static {}, Lcom/futuredial/serializer/PhoneSetting$Setting;->newBuilder()Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;

    move-result-object v4

    .line 24
    .local v4, psBuilder:Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    invoke-virtual {v4, v3}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 25
    invoke-virtual {v4}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->getTypeMapToIndex()Ljava/lang/String;

    move-result-object v8

    .line 26
    .local v8, strTypeMapToIndex:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 27
    .local v7, strTag:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 28
    .local v6, start:I
    if-eq v6, v11, :cond_0

    .line 30
    const-string v9, ">"

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, end:I
    if-eq v1, v11, :cond_0

    .line 33
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 34
    .local v2, index:I
    invoke-virtual {v4}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->getSettingTypesCount()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 36
    invoke-virtual {v4, v2}, Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;->getSettingTypes(I)Lcom/futuredial/serializer/PhoneSetting$SettingType;

    move-result-object v5

    .line 47
    .end local v1           #end:I
    .end local v2           #index:I
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #psBuilder:Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .end local v6           #start:I
    .end local v7           #strTag:Ljava/lang/String;
    .end local v8           #strTypeMapToIndex:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 41
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #psBuilder:Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .restart local v6       #start:I
    .restart local v7       #strTag:Ljava/lang/String;
    .restart local v8       #strTypeMapToIndex:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #psBuilder:Lcom/futuredial/serializer/PhoneSetting$Setting$Builder;
    .end local v6           #start:I
    .end local v7           #strTag:Ljava/lang/String;
    .end local v8           #strTypeMapToIndex:Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static GetVCalendarSpec(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .locals 7
    .parameter "context"
    .parameter "strPolicyID"

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "vxxconfig.dat"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    .local v2, is:Ljava/io/InputStream;
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v4

    .line 82
    .local v4, vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    invoke-virtual {v4, v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 84
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getVcalendarPolicyCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 86
    invoke-virtual {v4, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getVcalendarPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;

    move-result-object v3

    .line 87
    .local v3, vcalendarPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    invoke-virtual {v3}, Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #vcalendarPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .end local v4           #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :goto_1
    return-object v3

    .line 84
    .restart local v1       #i:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #vcalendarPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    .restart local v4       #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v3           #vcalendarPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCalendarPolicy;
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static GetVCardSpec(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .locals 7
    .parameter "context"
    .parameter "strPolicyID"

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "vxxconfig.dat"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 55
    .local v2, is:Ljava/io/InputStream;
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v4

    .line 56
    .local v4, vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    invoke-virtual {v4, v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getVcardPolicyCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 60
    invoke-virtual {v4, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getVcardPolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;

    move-result-object v3

    .line 61
    .local v3, vcardPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    invoke-virtual {v3}, Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #vcardPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .end local v4           #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :goto_1
    return-object v3

    .line 58
    .restart local v1       #i:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #vcardPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    .restart local v4       #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v3           #vcardPolicy:Lcom/futuredial/serializer/VxxConfigPB$VCardPolicy;
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static GetVMessageSpec(Landroid/content/Context;Ljava/lang/String;)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .locals 7
    .parameter "context"
    .parameter "strPolicyID"

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "vxxconfig.dat"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 107
    .local v2, is:Ljava/io/InputStream;
    invoke-static {}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec;->newBuilder()Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;

    move-result-object v4

    .line 108
    .local v4, vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    invoke-virtual {v4, v2}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 110
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getVmessagePolicyCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 112
    invoke-virtual {v4, v1}, Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;->getVmessagePolicy(I)Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;

    move-result-object v3

    .line 113
    .local v3, vmessagePolicy:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    invoke-virtual {v3}, Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #vmessagePolicy:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .end local v4           #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :goto_1
    return-object v3

    .line 110
    .restart local v1       #i:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #vmessagePolicy:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    .restart local v4       #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v3           #vmessagePolicy:Lcom/futuredial/serializer/VxxConfigPB$VMessagePolicy;
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #i:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #vxxspecBuilder:Lcom/futuredial/serializer/VxxConfigPB$VxxSpec$Builder;
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
