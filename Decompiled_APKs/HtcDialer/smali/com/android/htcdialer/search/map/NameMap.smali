.class public Lcom/android/htcdialer/search/map/NameMap;
.super Ljava/lang/Object;
.source "NameMap.java"


# static fields
.field public static final ASCII:[[C

.field public static final BOPOMOFO:[[C

.field public static final GREEK:[[C

.field public static final KOREAN:[[C

.field public static final RUSSIAN:[[C

.field public static final THAILAND:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x3b

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 15
    new-array v2, v6, [[C

    sput-object v2, Lcom/android/htcdialer/search/map/NameMap;->ASCII:[[C

    .line 16
    new-array v2, v6, [[C

    sput-object v2, Lcom/android/htcdialer/search/map/NameMap;->BOPOMOFO:[[C

    .line 17
    new-array v2, v6, [[C

    sput-object v2, Lcom/android/htcdialer/search/map/NameMap;->GREEK:[[C

    .line 18
    new-array v2, v6, [[C

    sput-object v2, Lcom/android/htcdialer/search/map/NameMap;->KOREAN:[[C

    .line 19
    new-array v2, v6, [[C

    sput-object v2, Lcom/android/htcdialer/search/map/NameMap;->RUSSIAN:[[C

    .line 20
    new-array v2, v6, [[C

    sput-object v2, Lcom/android/htcdialer/search/map/NameMap;->THAILAND:[[C

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_12

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 27
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 28
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 30
    :cond_0
    sget-object v2, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 31
    sget-object v2, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 33
    :cond_1
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->ASCII:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_1
    aput-object v2, v4, v1

    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 36
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 37
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 39
    :cond_2
    sget-object v2, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 40
    sget-object v2, Lcom/android/htcdialer/search/map/name/Bopomofo;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 42
    :cond_3
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->BOPOMOFO:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_2
    aput-object v2, v4, v1

    .line 44
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 45
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 46
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 48
    :cond_4
    sget-object v2, Lcom/android/htcdialer/search/map/name/Greek;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 49
    sget-object v2, Lcom/android/htcdialer/search/map/name/Greek;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 51
    :cond_5
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->GREEK:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_3
    aput-object v2, v4, v1

    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 54
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 55
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 57
    :cond_6
    sget-object v2, Lcom/android/htcdialer/search/map/name/Korean;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 58
    sget-object v2, Lcom/android/htcdialer/search/map/name/Korean;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 60
    :cond_7
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->KOREAN:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_4
    aput-object v2, v4, v1

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 63
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 64
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 66
    :cond_8
    sget-object v2, Lcom/android/htcdialer/search/map/name/Russian;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 67
    sget-object v2, Lcom/android/htcdialer/search/map/name/Russian;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 69
    :cond_9
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->RUSSIAN:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_5
    aput-object v2, v4, v1

    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 72
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 73
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 75
    :cond_a
    sget-object v2, Lcom/android/htcdialer/search/map/name/Thailand;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 76
    sget-object v2, Lcom/android/htcdialer/search/map/name/Thailand;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 78
    :cond_b
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->THAILAND:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_6
    aput-object v2, v4, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    move-object v2, v3

    .line 33
    goto/16 :goto_1

    :cond_d
    move-object v2, v3

    .line 42
    goto/16 :goto_2

    :cond_e
    move-object v2, v3

    .line 51
    goto/16 :goto_3

    :cond_f
    move-object v2, v3

    .line 60
    goto/16 :goto_4

    :cond_10
    move-object v2, v3

    .line 69
    goto :goto_5

    :cond_11
    move-object v2, v3

    .line 78
    goto :goto_6

    .line 81
    :cond_12
    const/16 v1, 0xf

    :goto_7
    if-ge v1, v6, :cond_1e

    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 83
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 84
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 86
    :cond_13
    sget-object v2, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 87
    sget-object v2, Lcom/android/htcdialer/search/map/name/Accent;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 89
    :cond_14
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    .line 101
    :cond_15
    :goto_8
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->ASCII:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_9
    aput-object v2, v4, v1

    .line 103
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 104
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 105
    sget-object v2, Lcom/android/htcdialer/search/map/name/Basic;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 107
    :cond_16
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_1

    .line 119
    :cond_17
    :goto_a
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->BOPOMOFO:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_b
    aput-object v2, v4, v1

    .line 120
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->GREEK:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1a

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_c
    aput-object v2, v4, v1

    .line 121
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->KOREAN:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_d
    aput-object v2, v4, v1

    .line 122
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->RUSSIAN:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_e
    aput-object v2, v4, v1

    .line 123
    sget-object v4, Lcom/android/htcdialer/search/map/NameMap;->THAILAND:[[C

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1d

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_f
    aput-object v2, v4, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 91
    :sswitch_0
    sget-object v2, Lcom/android/htcdialer/search/map/name/ChaCha;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 92
    sget-object v2, Lcom/android/htcdialer/search/map/name/ChaCha;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    .line 96
    :sswitch_1
    sget-object v2, Lcom/android/htcdialer/search/map/name/Espresso;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 97
    sget-object v2, Lcom/android/htcdialer/search/map/name/Espresso;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    :cond_18
    move-object v2, v3

    .line 101
    goto/16 :goto_9

    .line 109
    :sswitch_2
    sget-object v2, Lcom/android/htcdialer/search/map/name/ChaCha;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 110
    sget-object v2, Lcom/android/htcdialer/search/map/name/ChaCha;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    .line 114
    :sswitch_3
    sget-object v2, Lcom/android/htcdialer/search/map/name/Espresso;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 115
    sget-object v2, Lcom/android/htcdialer/search/map/name/Espresso;->MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :cond_19
    move-object v2, v3

    .line 119
    goto/16 :goto_b

    :cond_1a
    move-object v2, v3

    .line 120
    goto/16 :goto_c

    :cond_1b
    move-object v2, v3

    .line 121
    goto/16 :goto_d

    :cond_1c
    move-object v2, v3

    .line 122
    goto/16 :goto_e

    :cond_1d
    move-object v2, v3

    .line 123
    goto/16 :goto_f

    .line 125
    :cond_1e
    return-void

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch

    .line 107
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
