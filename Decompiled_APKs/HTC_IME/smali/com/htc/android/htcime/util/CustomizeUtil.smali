.class public Lcom/htc/android/htcime/util/CustomizeUtil;
.super Ljava/lang/Object;
.source "CustomizeUtil.java"


# static fields
.field private static final ATSLog:Z = true

.field private static final ATSTAG:Ljava/lang/String; = "HTC_IME_ATS"

.field private static final CURRENT_VER:F = 3.5f

.field private static final DEBUG:Z = false

.field private static MODE_MULTI_PROCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Customize Utility"

.field private static final hardCodeListItems:[Ljava/lang/String;

.field private static final hardCodeSipItems:[Ljava/lang/String;

.field public static mDefSIP:I

.field public static mIsHWEnabled:Z

.field public static mIsPYEnabled:Z

.field public static mIsSTEnabled:Z

.field public static mIsZHSupport:Z

.field public static mIsZYEnabled:Z

.field private static mSettingVariableIsReady:Z

.field public static mZHSIP:I

.field private static final showL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 39
    sput-boolean v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mSettingVariableIsReady:Z

    .line 41
    sput-boolean v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZHSupport:Z

    .line 42
    sput v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    .line 43
    const/16 v0, 0xa

    sput v0, Lcom/htc/android/htcime/util/CustomizeUtil;->mDefSIP:I

    .line 44
    sput-boolean v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsPYEnabled:Z

    .line 45
    sput-boolean v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsSTEnabled:Z

    .line 46
    sput-boolean v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsHWEnabled:Z

    .line 47
    sput-boolean v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZYEnabled:Z

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Handwriting"

    aput-object v1, v0, v2

    const-string v1, "ZuhYin"

    aput-object v1, v0, v4

    const-string v1, "CangJie"

    aput-object v1, v0, v5

    const-string v1, "PinYin"

    aput-object v1, v0, v6

    const-string v1, "Stroke"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/util/CustomizeUtil;->hardCodeListItems:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "17"

    aput-object v1, v0, v2

    const-string v1, "10"

    aput-object v1, v0, v4

    const-string v1, "8"

    aput-object v1, v0, v5

    const-string v1, "12"

    aput-object v1, v0, v6

    const-string v1, "14"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/android/htcime/util/CustomizeUtil;->hardCodeSipItems:[Ljava/lang/String;

    .line 276
    sput v3, Lcom/htc/android/htcime/util/CustomizeUtil;->MODE_MULTI_PROCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static cimeConfigLoader(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 742
    const-string v8, ""

    .line 744
    .local v8, pref_tmp:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 745
    .local v13, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 756
    .local v9, r:Landroid/content/res/Resources;
    const-string v16, "customized_cime_config"

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    new-instance v3, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v16, "system_InputMethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 761
    .local v3, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const/4 v11, 0x0

    .line 762
    .local v11, sipItem:[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "IME_sip_set"

    const-string v18, "total_list"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 763
    .local v15, total:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 766
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 768
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "customized_cime_config"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 771
    :cond_2
    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 772
    array-length v0, v11

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 774
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "customized_cime_config"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 779
    :cond_3
    const/4 v12, 0x0

    .line 780
    .local v12, sipTextAry:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 784
    .local v10, sipIdAry:[Ljava/lang/String;
    sget-object v12, Lcom/htc/android/htcime/util/CustomizeUtil;->hardCodeListItems:[Ljava/lang/String;

    .line 785
    sget-object v10, Lcom/htc/android/htcime/util/CustomizeUtil;->hardCodeSipItems:[Ljava/lang/String;

    .line 787
    const/16 v16, 0x0

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    .line 788
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_9

    .line 790
    const-string v16, "yes"

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "IME_sip_set"

    aget-object v19, v11, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 792
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    .line 793
    aget-object v16, v11, v6

    aget-object v17, v12, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 796
    sget-object v16, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipList:[I

    sget v17, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    aget-object v18, v10, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v16, v17

    .line 798
    sget v16, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    if-nez v16, :cond_5

    aget-object v8, v10, v7

    .line 799
    :goto_3
    sget v16, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    add-int/lit8 v16, v16, 0x1

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPEnableSipListCount:I

    .line 792
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 798
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v10, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 804
    :cond_6
    aget-object v16, v11, v6

    const-string v17, "Handwriting"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 805
    const/16 v16, 0x1

    sput-boolean v16, Lcom/htc/android/htcime/HTCIMMData;->mIsEnableHandWriting:Z

    .line 807
    :cond_7
    const-string v16, "HTC_IME_ATS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cust_CIME_SIP   : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v11, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " > yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    .end local v7           #j:I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 810
    :cond_8
    const-string v16, "HTC_IME_ATS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cust_CIME_SIP   : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v11, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " > no"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 814
    :cond_9
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const v17, 0x7f0900f8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 816
    new-instance v4, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v16, "system_defaultInputMethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    .local v4, customUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    invoke-virtual {v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "default_IME_sip_set"

    const-string v18, "default"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 821
    .local v14, tmp:Ljava/lang/String;
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_f

    .line 822
    :cond_a
    sget-object v16, Lcom/htc/android/htcime/util/CustomizeUtil;->hardCodeSipItems:[Ljava/lang/String;

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPDefaultSip:I

    .line 830
    :cond_b
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const v17, 0x7f0902a4

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget v18, Lcom/htc/android/htcime/HTCIMMData;->mCPDefaultSip:I

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 831
    invoke-virtual {v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "default_zi_database_type"

    const-string v18, "default"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 832
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_11

    .line 833
    :cond_c
    const/16 v16, 0x0

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    .line 845
    :goto_5
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const v17, 0x7f0900f9

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget v18, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 848
    invoke-virtual {v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "IME_PinYin_Language"

    const-string v18, "default"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 850
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_14

    .line 851
    :cond_d
    sget v16, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    .line 856
    :goto_6
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const v17, 0x7f0900fa

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget v18, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 861
    invoke-virtual {v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v16

    const-string v17, "IME_Stroke_Language"

    const-string v18, "default"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 863
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_16

    .line 864
    :cond_e
    sget v16, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPSTLanguage:I

    .line 869
    :goto_7
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const v17, 0x7f0900fb

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    sget v18, Lcom/htc/android/htcime/HTCIMMData;->mCPSTLanguage:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 876
    sget v16, Lcom/htc/android/htcime/HTCIMMData;->mCPSTLanguage:I

    sget v17, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_18

    .line 877
    const/4 v5, 0x2

    .line 881
    .local v5, hw_default:I
    :goto_8
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const v17, 0x7f0902a5

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 887
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "customized_cime_config"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 824
    .end local v5           #hw_default:I
    :cond_f
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_9
    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_b

    .line 825
    aget-object v16, v12, v7

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 826
    aget-object v16, v10, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPDefaultSip:I

    .line 824
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 835
    .end local v7           #j:I
    :cond_11
    const-string v16, "CN"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 836
    const/16 v16, 0x1

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    .line 842
    :goto_a
    const-string v16, "HTC_IME_ATS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cust_Keyboard_Setting   : zi_database > "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 837
    :cond_12
    const-string v16, "HK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 838
    const/16 v16, 0x0

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    goto :goto_a

    .line 840
    :cond_13
    const/16 v16, 0x0

    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPLanguage:I

    goto :goto_a

    .line 853
    :cond_14
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-nez v16, :cond_15

    const/16 v16, 0x0

    :goto_b
    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    .line 854
    const-string v16, "HTC_IME_ATS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cust_Keyboard_Setting   : Pinyin_Language > "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 853
    :cond_15
    const/16 v16, 0x1

    goto :goto_b

    .line 866
    :cond_16
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-nez v16, :cond_17

    const/16 v16, 0x0

    :goto_c
    sput v16, Lcom/htc/android/htcime/HTCIMMData;->mCPSTLanguage:I

    .line 867
    const-string v16, "HTC_IME_ATS"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cust_Keyboard_Setting   : Stroke_Language > "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 866
    :cond_17
    const/16 v16, 0x1

    goto :goto_c

    .line 879
    :cond_18
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mCPPYLanguage:I

    .restart local v5       #hw_default:I
    goto/16 :goto_8
.end method

.method private static commitModifiedLevel(Landroid/content/SharedPreferences;I)V
    .locals 2
    .parameter "sp"
    .parameter "level"

    .prologue
    .line 286
    if-lez p1, :cond_0

    const-string v0, "MODIFIED"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 287
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MODIFIED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    :cond_0
    return-void
.end method

.method private static constructSipListResourceFromCIDRule(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    .line 1203
    new-instance v0, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v6, "system_InputMethod"

    invoke-direct {v0, p0, v6}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1204
    .local v0, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const/4 v4, 0x0

    .line 1205
    .local v4, mSipItem:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1207
    .local v1, err:Z
    if-nez v0, :cond_0

    .line 1208
    const/4 v1, 0x1

    .line 1212
    :cond_0
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "IME_sip_set"

    const-string v8, "total_list"

    invoke-virtual {v0, v6, v7, v8}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1213
    .local v5, total:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1215
    :cond_1
    const/4 v1, 0x1

    .line 1243
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 1244
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsPYEnabled:Z

    .line 1245
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsSTEnabled:Z

    .line 1246
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsHWEnabled:Z

    .line 1247
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZYEnabled:Z

    .line 1249
    :cond_3
    return-void

    .line 1217
    :cond_4
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1219
    array-length v3, v4

    .line 1220
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v3, :cond_9

    .line 1221
    const-string v6, "yes"

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "IME_sip_set"

    aget-object v9, v4, v2

    invoke-virtual {v0, v7, v8, v9}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1223
    const-string v6, "Handwriting"

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1224
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsHWEnabled:Z

    .line 1226
    :cond_5
    const-string v6, "PinYin"

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1227
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsPYEnabled:Z

    .line 1229
    :cond_6
    const-string v6, "Stroke"

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1230
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsSTEnabled:Z

    .line 1232
    :cond_7
    const-string v6, "ZuhYin"

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1233
    sput-boolean v10, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZYEnabled:Z

    .line 1220
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1237
    :cond_9
    if-nez v3, :cond_2

    .line 1239
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static customizationLanguagePicker(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 964
    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    if-eqz v7, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    new-instance v1, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v7, "system_InputMethod"

    invoke-direct {v1, p0, v7}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 968
    .local v1, customUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 970
    .local v5, r:Landroid/content/res/Resources;
    const-string v7, "English"

    sput-object v7, Lcom/htc/android/htcime/HTCIMMData;->mDefaultLocale:Ljava/lang/String;

    .line 971
    const v7, 0x7f070009

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, defaultLocaleString:[Ljava/lang/String;
    const v7, 0x7f07000b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, defaultLocaleVaule:[Ljava/lang/String;
    const v7, 0x7f07000a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 976
    .local v0, cidLocaleString:[Ljava/lang/String;
    const v7, 0x7f070025

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    .line 979
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v8, "zh"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 981
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    sget-object v7, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 982
    sget-object v7, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    aget-object v7, v7, v4

    const-string v8, "EN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 983
    sget-object v7, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    const-string v8, "\u82f1"

    aput-object v8, v7, v4

    .line 981
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 986
    :cond_3
    const/4 v4, 0x0

    :goto_2
    array-length v7, v2

    if-ge v4, v7, :cond_5

    .line 987
    aget-object v7, v2, v4

    const-string v8, "English"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 988
    const-string v7, "\u82f1\u6587"

    aput-object v7, v2, v4

    .line 986
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1010
    .end local v4           #i:I
    :cond_5
    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "IME_language_set"

    const-string v9, "English"

    invoke-virtual {v1, v7, v8, v9}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 1012
    :cond_6
    const-string v7, "Customize Utility"

    const-string v8, "Can\'t find language set from DB."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v7, v7, v8

    const-string v8, "English"

    aput-object v8, v7, v10

    .line 1014
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v7, v7, v8

    const-string v8, "0"

    aput-object v8, v7, v11

    .line 1015
    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    goto/16 :goto_0

    .line 1018
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    array-length v7, v0

    if-ge v4, v7, :cond_0

    .line 1019
    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "IME_language_set"

    aget-object v9, v0, v4

    invoke-virtual {v1, v7, v8, v9}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1026
    .local v6, tmp:Ljava/lang/String;
    if-eqz v6, :cond_8

    const-string v7, "yes"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1027
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v7, v7, v8

    aget-object v8, v2, v4

    aput-object v8, v7, v10

    .line 1028
    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v7, v7, v8

    aget-object v8, v3, v4

    aput-object v8, v7, v11

    .line 1029
    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    .line 1030
    const-string v7, "HTC_IME_ATS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cust_IME_Language   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > yes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1032
    :cond_8
    const-string v7, "HTC_IME_ATS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cust_IME_Language   : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > no"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static dataFormatCheck(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, -0x1

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 292
    .local v3, r:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 296
    .local v5, sp:Landroid/content/SharedPreferences;
    const v6, 0x7f0900e5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 297
    .local v4, sipSwitchKeyDef:Ljava/lang/String;
    const v6, 0x7f0900e6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, eimeLangKeyDef:Ljava/lang/String;
    invoke-interface {v5, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, default_sip:I
    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 302
    .local v0, default_latin:I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 303
    const/4 v1, 0x1

    .line 304
    const/4 v0, 0x1

    .line 305
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    :cond_0
    return-void
.end method

.method public static execBootNeedTask(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 892
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 896
    .local v11, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0900f8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 898
    .local v12, tmp:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/htcime/util/CustomizeUtil;->hardCodeSipItems:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    sput-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mIsEnableHandWriting:Z

    .line 910
    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mbBootNeedTask:Z

    if-eqz v14, :cond_0

    .line 951
    :goto_0
    return-void

    .line 914
    :cond_0
    new-instance v3, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v14, "system_defaultInputMethod"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 915
    .local v3, customSipUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const/4 v2, 0x0

    .line 916
    .local v2, custLocMapList:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "custom_locale_sip_mapping"

    const-string v16, "total_list"

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 919
    if-eqz v2, :cond_3

    .line 920
    const-string v14, ";"

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 921
    .local v8, locItem:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 923
    .local v5, idx:I
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v6, v1, v4

    .line 924
    .local v6, item:Ljava/lang/String;
    move-object v9, v6

    .line 925
    .local v9, locale:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "custom_locale_sip_mapping"

    invoke-virtual {v3, v14, v15, v6}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 928
    .local v10, sip_type:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 930
    const-string v14, "HTC_IME_ATS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cust_Locale_SIP_Mapping   : idx = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Locale > "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", SIP > "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    add-int/lit8 v5, v5, 0x1

    .line 935
    const/4 v13, 0x0

    .line 936
    .local v13, value:Ljava/lang/String;
    sget-object v14, Lcom/htc/android/htcime/util/SIPSwitcherData;->SIP_MAPPING:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #value:Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 938
    .restart local v13       #value:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 939
    const/4 v14, -0x1

    const/16 v15, 0x5f

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v14, v15, :cond_2

    .line 940
    const/16 v14, 0x5f

    const/16 v15, 0x3b

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 944
    :goto_2
    sget-object v14, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    invoke-virtual {v14, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    .end local v13           #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 942
    .restart local v13       #value:Ljava/lang/String;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";*"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 950
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #idx:I
    .end local v6           #item:Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #locItem:[Ljava/lang/String;
    .end local v9           #locale:Ljava/lang/String;
    .end local v10           #sip_type:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->mbBootNeedTask:Z

    goto/16 :goto_0
.end method

.method private static getATSLog(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    .line 1116
    new-instance v1, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v11, "system_locale"

    invoke-direct {v1, p0, v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1117
    .local v1, customLocale:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    if-eqz v1, :cond_1

    .line 1118
    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, ""

    const-string v13, "total_list"

    invoke-virtual {v1, v11, v12, v13}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1120
    .local v10, total:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1121
    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1123
    .local v7, locale_list:[Ljava/lang/String;
    array-length v11, v7

    if-eqz v11, :cond_1

    .line 1124
    new-instance v8, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v11, "system_LOCALE_IME_MAP"

    invoke-direct {v8, p0, v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1127
    .local v8, mCustomLocaleIMEMap:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    if-eqz v8, :cond_1

    .line 1128
    const-string v6, ""

    .line 1129
    .local v6, ime:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1131
    .local v5, idx:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, v7

    if-ge v4, v11, :cond_1

    .line 1132
    invoke-virtual {v8}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, ""

    aget-object v13, v7, v4

    invoke-virtual {v8, v11, v12, v13}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1135
    if-eqz v6, :cond_0

    const-string v11, ""

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1136
    const-string v11, "HTC_IME_ATS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_Locale_IME_Mapping   : idx = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Locale > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v7, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", IME > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    add-int/lit8 v5, v5, 0x1

    .line 1131
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1147
    .end local v4           #i:I
    .end local v5           #idx:I
    .end local v6           #ime:Ljava/lang/String;
    .end local v7           #locale_list:[Ljava/lang/String;
    .end local v8           #mCustomLocaleIMEMap:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    .end local v10           #total:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v11, "system_IME"

    invoke-direct {v0, p0, v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1148
    .local v0, customIME:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    if-eqz v0, :cond_2

    .line 1149
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, ""

    const-string v13, "defeault"

    invoke-virtual {v0, v11, v12, v13}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1151
    .local v9, tmp:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1152
    const-string v11, "HTC_IME_ATS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_DefaultIMEorCIME   : Default_Input_method > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    .end local v9           #tmp:Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v11, "system_defaultInputMethod"

    invoke-direct {v2, p0, v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1156
    .local v2, customMNSUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    if-eqz v2, :cond_6

    .line 1157
    const/4 v9, 0x0

    .line 1160
    .restart local v9       #tmp:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "default_use_qwerty"

    const-string v13, "default"

    invoke-virtual {v2, v11, v12, v13}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1161
    if-eqz v9, :cond_3

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1162
    const-string v11, "HTC_IME_ATS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_Keyboard_Setting   : Use_Qwerty > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_3
    invoke-virtual {v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "IME_Pinyin_Fuzzy"

    const-string v13, "default"

    invoke-virtual {v2, v11, v12, v13}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1166
    if-eqz v9, :cond_4

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1167
    const-string v11, "HTC_IME_ATS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_Keyboard_Setting   : Pinyin_Fuzzy > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_4
    invoke-virtual {v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "IME_Zhuyin_Fuzzy"

    const-string v13, "default"

    invoke-virtual {v2, v11, v12, v13}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1171
    if-eqz v9, :cond_5

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1172
    const-string v11, "HTC_IME_ATS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_Keyboard_Setting   : Zhuyin_Fuzzy > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_5
    invoke-virtual {v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "default_IME_wordcomplete_set"

    const-string v13, "default"

    invoke-virtual {v2, v11, v12, v13}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1176
    if-eqz v9, :cond_6

    const-string v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1177
    const-string v11, "HTC_IME_ATS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cust_Keyboard_Setting   : Word_Completion > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    .end local v9           #tmp:Ljava/lang/String;
    :cond_6
    new-instance v3, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v11, "system_InputMethod"

    invoke-direct {v3, p0, v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1181
    .local v3, customMNSUtil2:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    if-eqz v3, :cond_7

    .line 1182
    const-string v11, "yes"

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "IME_kb_types_set"

    const-string v14, "Qwerty"

    invoke-virtual {v3, v12, v13, v14}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1183
    const-string v11, "HTC_IME_ATS"

    const-string v12, "Cust_Default_Keyboard_Type   : Qwerty > yes"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :goto_1
    const-string v11, "yes"

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "IME_kb_types_set"

    const-string v14, "12key"

    invoke-virtual {v3, v12, v13, v14}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1189
    const-string v11, "HTC_IME_ATS"

    const-string v12, "Cust_Default_Keyboard_Type   : 12key > yes"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_2
    const-string v11, "yes"

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "IME_kb_types_set"

    const-string v14, "20key"

    invoke-virtual {v3, v12, v13, v14}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1195
    const-string v11, "HTC_IME_ATS"

    const-string v12, "Cust_Default_Keyboard_Type   : 20key > yes"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_7
    :goto_3
    return-void

    .line 1185
    :cond_8
    const-string v11, "HTC_IME_ATS"

    const-string v12, "Cust_Default_Keyboard_Type   : Qwerty > no"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1191
    :cond_9
    const-string v11, "HTC_IME_ATS"

    const-string v12, "Cust_Default_Keyboard_Type   : 12key > no"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1197
    :cond_a
    const-string v11, "HTC_IME_ATS"

    const-string v12, "Cust_Default_Keyboard_Type   : 20key > no"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getCustomizationData(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4060

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, r:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "customization_loaded"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "customization_loaded"

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    .line 73
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->dataFormatCheck(Landroid/content/Context;)V

    .line 76
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->loadHWRSIPfromCID(Landroid/content/Context;)Z

    .line 77
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->customizationLanguagePicker(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->cimeConfigLoader(Landroid/content/Context;)V

    .line 80
    const v2, 0x7f0900cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LocaleChange"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->localeChangeUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LocaleChange"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getSIESettingData(Landroid/content/Context;)V

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "customization_loaded"

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getATSLog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static getDefaultSIP(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 208
    new-instance v0, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v2, "system_defaultInputMethod"

    invoke-direct {v0, p0, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    .local v0, customMNSUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "default_IME_keyboard_type"

    const-string v4, "default"

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, default_sip:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v2, "Handwriting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    const-string v1, "ZuhYin"

    .line 221
    :cond_2
    invoke-static {v1}, Lcom/htc/android/htcime/util/CustomizeUtil;->zhInputMap(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mDefSIP:I

    goto :goto_0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 267
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 279
    sget v0, Lcom/htc/android/htcime/util/CustomizeUtil;->MODE_MULTI_PROCESS:I

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIMEServiceData(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    .local v1, r:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 114
    .local v2, sp:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v4, "system_defaultInputMethod"

    invoke-direct {v0, p0, v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    .local v0, customMNSUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const/4 v3, 0x0

    .line 118
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "default_IME_settings"

    const-string v6, "voiceinput"

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_0

    .line 122
    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    .line 127
    :goto_0
    const-string v4, "HTC_IME_ATS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cust_Voice_Search   : Voice_Input > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const v4, 0x7f0900d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mSoundFlag:Z

    .line 133
    const v4, 0x7f0900d3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mVibrationFlag:Z

    .line 135
    const v4, 0x7f0900cb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mSpellingCheck:Z

    .line 136
    const v4, 0x7f0900cc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    .line 138
    const v4, 0x7f0900cf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    .line 141
    const v4, 0x7f0900cd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    .line 142
    const v4, 0x7f090079

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mPredictionMode_Usr:Z

    .line 143
    const v4, 0x7f0900ce

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mHWQWERTYPrediction:Z

    .line 144
    return-void

    .line 125
    :cond_1
    sput-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    goto/16 :goto_0
.end method

.method public static getIMESettingsData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 92
    sget-boolean v2, Lcom/htc/android/htcime/util/CustomizeUtil;->mSettingVariableIsReady:Z

    if-eqz v2, :cond_0

    .line 108
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, r:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getZHSupportData(Landroid/content/Context;)V

    .line 100
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->loadZHSIPfromCID(Landroid/content/Context;)V

    .line 101
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSIP(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->constructSipListResourceFromCIDRule(Landroid/content/Context;)V

    .line 105
    const v2, 0x7f0900cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    sput-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    .line 107
    sput-boolean v3, Lcom/htc/android/htcime/util/CustomizeUtil;->mSettingVariableIsReady:Z

    goto :goto_0
.end method

.method public static getSIESettingData(Landroid/content/Context;)V
    .locals 58
    .parameter "context"

    .prologue
    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    .line 312
    .local v44, r:Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v49

    .line 313
    .local v49, sp:Landroid/content/SharedPreferences;
    new-instance v11, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v55, "system_defaultInputMethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v11, v0, v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 314
    .local v11, customMNSUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    new-instance v10, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v55, "system_InputMethod"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v10, v0, v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    .local v10, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const/16 v51, 0x0

    .line 316
    .local v51, tmp:Ljava/lang/String;
    const/16 v45, 0x0

    .line 323
    .local v45, sipItem:[Ljava/lang/String;
    const v55, 0x7f0900cd

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 324
    .local v41, qwertyPredictionKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_0

    .line 326
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_prediction_set"

    const-string v57, "qwerty"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 327
    if-eqz v51, :cond_0

    .line 328
    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_17

    const/16 v43, 0x1

    .line 329
    .local v43, qwerty_predict:Z
    :goto_0
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v41

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Prediction_QWERTY > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v43           #qwerty_predict:Z
    :cond_0
    const v55, 0x7f090079

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 338
    .local v37, pcqwertyPredictionKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_1

    .line 340
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_prediction_set"

    const-string v57, "1220"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 341
    if-eqz v51, :cond_1

    .line 342
    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_18

    const/16 v39, 0x1

    .line 344
    .local v39, predict_1220:Z
    :goto_1
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v37

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    const v56, 0x7f0900cc

    move-object/from16 v0, v44

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Prediction_1220 > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v39           #predict_1220:Z
    :cond_1
    const v55, 0x7f0900ce

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 358
    .local v21, hwqwertyPredictionKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_4

    .line 360
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_prediction_set"

    const-string v57, "hw_qwerty"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 361
    const/16 v20, 0x0

    .line 362
    .local v20, hwkb_predict:Z
    if-eqz v51, :cond_3

    .line 363
    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_2

    const/16 v20, 0x1

    .line 365
    :cond_2
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : HW_Prediction > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_3
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    .end local v20           #hwkb_predict:Z
    :cond_4
    const v55, 0x7f090119

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 373
    .local v52, tracePredictionKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_5

    .line 376
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_trace_prediction"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 380
    .local v13, defValueStr:Ljava/lang/String;
    if-eqz v13, :cond_1a

    .line 381
    const-string v55, "yes"

    move-object/from16 v0, v55

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_19

    const/4 v12, 0x1

    .line 383
    .local v12, defValue:Z
    :goto_2
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Trace_prediction > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_3
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v52

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    .end local v12           #defValue:Z
    .end local v13           #defValueStr:Ljava/lang/String;
    :cond_5
    const v55, 0x7f09011a

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 395
    .local v40, prefKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_7

    .line 399
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "trace_stroke_color_type"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 403
    :try_start_0
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 405
    .local v12, defValue:I
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Trace_stroke_color_type > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {v12}, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->isValidStrokeColorType(I)Z

    move-result v55

    if-nez v55, :cond_6

    .line 408
    const-string v55, "Customize Utility"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "[getSIESettingData] Default trace stroke color type is not valid!  value:"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v55, "7"

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 416
    :cond_6
    :goto_4
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v40

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    .end local v12           #defValue:I
    :cond_7
    const v55, 0x7f09011d

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 422
    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_8

    .line 425
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "trace_active_on_all_field"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 429
    if-eqz v51, :cond_1c

    .line 430
    const-string v55, "yes"

    move-object/from16 v0, v51

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_1b

    const/4 v12, 0x1

    .line 432
    .local v12, defValue:Z
    :goto_5
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Trace_active_on_all_field > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_6
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 443
    .end local v12           #defValue:Z
    :cond_8
    const v55, 0x7f0900cf

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 444
    .local v42, qwertySCKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_9

    .line 445
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_spellcheck_set"

    const-string v57, "qwerty"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 446
    if-eqz v51, :cond_9

    .line 447
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v56

    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_1d

    const/16 v55, 0x1

    :goto_7
    move-object/from16 v0, v56

    move-object/from16 v1, v42

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_1e

    const/16 v55, 0x1

    :goto_8
    sput-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    .line 451
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Spell_Correction_Qwerty > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_9
    const v55, 0x7f0900cb

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 458
    .local v38, pcqwertySCKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_a

    .line 459
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_spellcheck_set"

    const-string v57, "1220"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 460
    if-eqz v51, :cond_a

    .line 461
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v56

    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_1f

    const/16 v55, 0x1

    :goto_9
    move-object/from16 v0, v56

    move-object/from16 v1, v38

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Spell_Correction_1220 > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_a
    const v55, 0x7f0900cc

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 470
    .local v54, wordCompleteKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_b

    .line 471
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_wordcomplete_set"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 472
    if-eqz v51, :cond_b

    .line 473
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v56

    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_20

    const/16 v55, 0x1

    :goto_a
    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_21

    const/16 v55, 0x1

    :goto_b
    sput-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    sput-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    .line 477
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Word_Completion > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_b
    const v55, 0x7f0900d8

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 484
    .local v25, keyboardTypesKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_c

    .line 485
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_keyboard_type"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 486
    if-eqz v51, :cond_c

    .line 489
    :try_start_1
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 490
    .local v50, t:I
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : IME_Keyboard_Type > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 495
    :goto_c
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v25

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 503
    .end local v50           #t:I
    :cond_c
    const v55, 0x7f0902a9

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 504
    .local v19, hwStrokeSpeedKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_f

    .line 505
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_stroke_speed_level"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 506
    const/4 v14, 0x0

    .line 508
    .local v14, defaultSpeed:I
    if-eqz v51, :cond_d

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v55

    if-nez v55, :cond_22

    .line 509
    :cond_d
    const/4 v14, 0x3

    .line 515
    :goto_d
    const/16 v55, 0x5

    move/from16 v0, v55

    if-ge v0, v14, :cond_23

    .line 516
    const/4 v14, 0x5

    .line 520
    :cond_e
    :goto_e
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 529
    .end local v14           #defaultSpeed:I
    :cond_f
    const v55, 0x7f0900e3

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 530
    .local v34, mSIPSwitchKey:Ljava/lang/String;
    const v55, 0x7f0900e4

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 531
    .local v33, mLatinLangKey:Ljava/lang/String;
    const v55, 0x7f0900e5

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 532
    .local v35, mSIPSwitchKeyDef:Ljava/lang/String;
    const v55, 0x7f0900e6

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 534
    .local v32, mEIMELangKeyDef:Ljava/lang/String;
    const/16 v55, -0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v55

    const/16 v56, -0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_10

    const/16 v55, -0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v33

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v55

    const/16 v56, -0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_10

    sget-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->mPreLocaleChange:Z

    if-eqz v55, :cond_39

    .line 540
    :cond_10
    const/16 v55, -0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v33

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 541
    .local v27, latin_lang:I
    const/16 v55, -0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    .line 542
    .local v46, sip_type:I
    const/16 v55, -0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 543
    .local v16, default_sip:I
    const/16 v55, -0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v32

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 545
    .local v15, default_latin:I
    const/16 v55, -0x1

    move/from16 v0, v46

    move/from16 v1, v55

    if-ne v0, v1, :cond_11

    const/16 v46, 0x0

    .line 546
    :cond_11
    const/16 v55, -0x1

    move/from16 v0, v27

    move/from16 v1, v55

    if-ne v0, v1, :cond_12

    const/16 v27, 0x0

    .line 547
    :cond_12
    const/16 v55, -0x1

    move/from16 v0, v16

    move/from16 v1, v55

    if-ne v0, v1, :cond_13

    const/16 v16, 0x0

    .line 548
    :cond_13
    const/16 v55, -0x1

    move/from16 v0, v55

    if-ne v15, v0, :cond_14

    const/4 v15, 0x0

    .line 550
    :cond_14
    const/16 v31, 0x0

    .line 553
    .local v31, listErr:Z
    const v55, 0x7f07001f

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 554
    .local v7, cidSIPString:[Ljava/lang/String;
    const v55, 0x7f070020

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, cidSIPVaule:[Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IKB_settings_checked"

    const-string v57, "checked_list"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 557
    .local v30, list:Ljava/lang/String;
    if-eqz v30, :cond_15

    const-string v55, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_24

    .line 559
    :cond_15
    const/16 v31, 0x1

    .line 569
    :goto_f
    if-nez v31, :cond_27

    .line 570
    move-object/from16 v3, v45

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_10
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    aget-object v24, v3, v23

    .line 571
    .local v24, item:Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_11
    array-length v0, v7

    move/from16 v55, v0

    move/from16 v0, v22

    move/from16 v1, v55

    if-ge v0, v1, :cond_26

    .line 572
    aget-object v55, v7, v22

    if-eqz v55, :cond_16

    const-string v55, ""

    aget-object v56, v7, v22

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_16

    aget-object v55, v7, v22

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_16

    .line 575
    const/16 v55, 0x1

    aget-object v56, v8, v22

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v56

    shl-int v55, v55, v56

    or-int v46, v46, v55

    .line 571
    :cond_16
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 328
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #cidSIPString:[Ljava/lang/String;
    .end local v8           #cidSIPVaule:[Ljava/lang/String;
    .end local v15           #default_latin:I
    .end local v16           #default_sip:I
    .end local v19           #hwStrokeSpeedKey:Ljava/lang/String;
    .end local v21           #hwqwertyPredictionKey:Ljava/lang/String;
    .end local v22           #i:I
    .end local v23           #i$:I
    .end local v24           #item:Ljava/lang/String;
    .end local v25           #keyboardTypesKey:Ljava/lang/String;
    .end local v27           #latin_lang:I
    .end local v29           #len$:I
    .end local v30           #list:Ljava/lang/String;
    .end local v31           #listErr:Z
    .end local v32           #mEIMELangKeyDef:Ljava/lang/String;
    .end local v33           #mLatinLangKey:Ljava/lang/String;
    .end local v34           #mSIPSwitchKey:Ljava/lang/String;
    .end local v35           #mSIPSwitchKeyDef:Ljava/lang/String;
    .end local v37           #pcqwertyPredictionKey:Ljava/lang/String;
    .end local v38           #pcqwertySCKey:Ljava/lang/String;
    .end local v40           #prefKey:Ljava/lang/String;
    .end local v42           #qwertySCKey:Ljava/lang/String;
    .end local v46           #sip_type:I
    .end local v52           #tracePredictionKey:Ljava/lang/String;
    .end local v54           #wordCompleteKey:Ljava/lang/String;
    :cond_17
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 342
    .restart local v37       #pcqwertyPredictionKey:Ljava/lang/String;
    :cond_18
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 381
    .restart local v13       #defValueStr:Ljava/lang/String;
    .restart local v21       #hwqwertyPredictionKey:Ljava/lang/String;
    .restart local v52       #tracePredictionKey:Ljava/lang/String;
    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 385
    :cond_1a
    const/4 v12, 0x0

    .restart local v12       #defValue:Z
    goto/16 :goto_3

    .line 411
    .end local v12           #defValue:Z
    .end local v13           #defValueStr:Ljava/lang/String;
    .restart local v40       #prefKey:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 412
    .local v18, e:Ljava/lang/NumberFormatException;
    const-string v55, "Customize Utility"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "[getSIESettingData] IME parses default trace stroke color type from customization fail! "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v55, "7"

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .local v12, defValue:I
    goto/16 :goto_4

    .line 430
    .end local v12           #defValue:I
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 434
    :cond_1c
    const/4 v12, 0x0

    .local v12, defValue:Z
    goto/16 :goto_6

    .line 447
    .end local v12           #defValue:Z
    .restart local v42       #qwertySCKey:Ljava/lang/String;
    :cond_1d
    const/16 v55, 0x0

    goto/16 :goto_7

    .line 450
    :cond_1e
    const/16 v55, 0x0

    goto/16 :goto_8

    .line 461
    .restart local v38       #pcqwertySCKey:Ljava/lang/String;
    :cond_1f
    const/16 v55, 0x0

    goto/16 :goto_9

    .line 473
    .restart local v54       #wordCompleteKey:Ljava/lang/String;
    :cond_20
    const/16 v55, 0x0

    goto/16 :goto_a

    .line 476
    :cond_21
    const/16 v55, 0x0

    goto/16 :goto_b

    .line 491
    .restart local v25       #keyboardTypesKey:Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 492
    .restart local v18       #e:Ljava/lang/NumberFormatException;
    const-string v55, "Customize Utility"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "IME parses default keyboard type from customization fail! "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v18 .. v18}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v50, 0x2

    .restart local v50       #t:I
    goto/16 :goto_c

    .line 511
    .end local v18           #e:Ljava/lang/NumberFormatException;
    .end local v50           #t:I
    .restart local v14       #defaultSpeed:I
    .restart local v19       #hwStrokeSpeedKey:Ljava/lang/String;
    :cond_22
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 512
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Stroke_Speed_Level > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 517
    :cond_23
    if-gtz v14, :cond_e

    .line 518
    const/4 v14, 0x3

    goto/16 :goto_e

    .line 561
    .end local v14           #defaultSpeed:I
    .restart local v7       #cidSIPString:[Ljava/lang/String;
    .restart local v8       #cidSIPVaule:[Ljava/lang/String;
    .restart local v15       #default_latin:I
    .restart local v16       #default_sip:I
    .restart local v27       #latin_lang:I
    .restart local v30       #list:Ljava/lang/String;
    .restart local v31       #listErr:Z
    .restart local v32       #mEIMELangKeyDef:Ljava/lang/String;
    .restart local v33       #mLatinLangKey:Ljava/lang/String;
    .restart local v34       #mSIPSwitchKey:Ljava/lang/String;
    .restart local v35       #mSIPSwitchKeyDef:Ljava/lang/String;
    .restart local v46       #sip_type:I
    :cond_24
    const-string v55, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    .line 562
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v55, v0

    if-nez v55, :cond_25

    .line 564
    const/16 v31, 0x1

    .line 566
    :cond_25
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Default_InputMethod   : CIME_type > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 570
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v22       #i:I
    .restart local v23       #i$:I
    .restart local v24       #item:Ljava/lang/String;
    .restart local v29       #len$:I
    :cond_26
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_10

    .line 581
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v22           #i:I
    .end local v23           #i$:I
    .end local v24           #item:Ljava/lang/String;
    .end local v29           #len$:I
    :cond_27
    const/16 v31, 0x0

    .line 582
    const v55, 0x7f070021

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, cidLatinLangString:[Ljava/lang/String;
    const v55, 0x7f070022

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, cidLatinLangVaule:[Ljava/lang/String;
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IKB_settings_checked"

    const-string v57, "checked_list_latin"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 588
    .local v28, latinlist:Ljava/lang/String;
    if-eqz v28, :cond_28

    const-string v55, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_2f

    .line 592
    :cond_28
    const-string v28, ""

    .line 594
    if-eqz v10, :cond_2a

    invoke-virtual {v10}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    if-eqz v55, :cond_2a

    .line 595
    invoke-virtual {v10}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "IME_language_set"

    invoke-virtual/range {v55 .. v56}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 599
    .local v9, curlist:Landroid/os/Bundle;
    :goto_12
    if-eqz v9, :cond_2c

    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v55

    array-length v0, v5

    move/from16 v56, v0

    move/from16 v0, v55

    move/from16 v1, v56

    if-ge v0, v1, :cond_2c

    .line 600
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_13
    array-length v0, v5

    move/from16 v55, v0

    move/from16 v0, v22

    move/from16 v1, v55

    if-ge v0, v1, :cond_2c

    .line 601
    invoke-virtual {v10}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "IME_language_set"

    aget-object v57, v5, v22

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 603
    if-eqz v51, :cond_2b

    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_2b

    const/4 v4, 0x1

    .line 604
    .local v4, checked:Z
    :goto_14
    if-eqz v4, :cond_29

    .line 605
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    aget-object v56, v5, v22

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, ";"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 600
    :cond_29
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 597
    .end local v4           #checked:Z
    .end local v9           #curlist:Landroid/os/Bundle;
    .end local v22           #i:I
    :cond_2a
    const/4 v9, 0x0

    .restart local v9       #curlist:Landroid/os/Bundle;
    goto :goto_12

    .line 603
    .restart local v22       #i:I
    :cond_2b
    const/4 v4, 0x0

    goto :goto_14

    .line 609
    .end local v22           #i:I
    :cond_2c
    const-string v55, "English"

    move-object/from16 v0, v28

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-nez v55, :cond_2d

    .line 610
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, "English;"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 612
    :cond_2d
    const-string v55, ";"

    move-object/from16 v0, v28

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    .line 622
    .end local v9           #curlist:Landroid/os/Bundle;
    :goto_15
    if-nez v31, :cond_32

    .line 623
    move-object/from16 v3, v45

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v29, v0

    .restart local v29       #len$:I
    const/16 v23, 0x0

    .restart local v23       #i$:I
    :goto_16
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_32

    aget-object v24, v3, v23

    .line 624
    .restart local v24       #item:Ljava/lang/String;
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_17
    array-length v0, v5

    move/from16 v55, v0

    move/from16 v0, v22

    move/from16 v1, v55

    if-ge v0, v1, :cond_31

    .line 625
    aget-object v55, v5, v22

    if-eqz v55, :cond_2e

    const-string v55, ""

    aget-object v56, v5, v22

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_2e

    aget-object v55, v5, v22

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_2e

    .line 628
    const/16 v55, 0x1

    aget-object v56, v6, v22

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v56

    shl-int v55, v55, v56

    or-int v27, v27, v55

    .line 624
    :cond_2e
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    .line 614
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v22           #i:I
    .end local v23           #i$:I
    .end local v24           #item:Ljava/lang/String;
    .end local v29           #len$:I
    :cond_2f
    const-string v55, ";"

    move-object/from16 v0, v28

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    .line 615
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v55, v0

    if-nez v55, :cond_30

    .line 617
    const/16 v31, 0x1

    .line 619
    :cond_30
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Default_Input Method   : IME_language > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 623
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v22       #i:I
    .restart local v23       #i$:I
    .restart local v24       #item:Ljava/lang/String;
    .restart local v29       #len$:I
    :cond_31
    add-int/lit8 v23, v23, 0x1

    goto :goto_16

    .line 633
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v22           #i:I
    .end local v23           #i$:I
    .end local v24           #item:Ljava/lang/String;
    .end local v29           #len$:I
    :cond_32
    if-nez v46, :cond_3e

    if-nez v27, :cond_3e

    .line 634
    const/16 v46, 0x1

    .line 635
    const/16 v27, 0x1

    .line 642
    :cond_33
    :goto_18
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IKB_init_value"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 644
    .local v17, defaultsipstring:Ljava/lang/String;
    if-eqz v17, :cond_34

    const-string v55, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_3f

    .line 647
    :cond_34
    const v55, 0x7f0900d7

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    const-string v56, "0"

    move-object/from16 v0, v49

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 648
    .local v26, lang:I
    aget-object v17, v5, v26

    .line 653
    .end local v26           #lang:I
    :goto_19
    if-nez v16, :cond_35

    .line 654
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_1a
    array-length v0, v7

    move/from16 v55, v0

    move/from16 v0, v22

    move/from16 v1, v55

    if-ge v0, v1, :cond_35

    .line 655
    aget-object v55, v7, v22

    if-eqz v55, :cond_40

    const-string v55, ""

    aget-object v56, v7, v22

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_40

    aget-object v55, v7, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_40

    .line 658
    const/16 v55, 0x1

    aget-object v56, v8, v22

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v56

    shl-int v16, v55, v56

    .line 664
    .end local v22           #i:I
    :cond_35
    if-nez v16, :cond_36

    .line 665
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_1b
    array-length v0, v5

    move/from16 v55, v0

    move/from16 v0, v22

    move/from16 v1, v55

    if-ge v0, v1, :cond_36

    .line 666
    aget-object v55, v5, v22

    if-eqz v55, :cond_41

    const-string v55, ""

    aget-object v56, v5, v22

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_41

    aget-object v55, v5, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_41

    .line 669
    const/16 v16, 0x1

    .line 670
    const/16 v55, 0x1

    aget-object v56, v6, v22

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v56

    shl-int v15, v55, v56

    .line 678
    .end local v22           #i:I
    :cond_36
    const/16 v55, -0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v32

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 680
    .local v36, now_wime_lang:I
    const/16 v55, -0x1

    move/from16 v0, v55

    move/from16 v1, v36

    if-ne v0, v1, :cond_37

    move/from16 v0, v36

    if-eq v15, v0, :cond_38

    .line 681
    :cond_37
    move/from16 v15, v36

    .line 685
    :cond_38
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v34

    move/from16 v2, v46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v35

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 690
    const/16 v55, 0x0

    sput-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->mPreLocaleChange:Z

    .line 696
    .end local v5           #cidLatinLangString:[Ljava/lang/String;
    .end local v6           #cidLatinLangVaule:[Ljava/lang/String;
    .end local v7           #cidSIPString:[Ljava/lang/String;
    .end local v8           #cidSIPVaule:[Ljava/lang/String;
    .end local v15           #default_latin:I
    .end local v16           #default_sip:I
    .end local v17           #defaultsipstring:Ljava/lang/String;
    .end local v27           #latin_lang:I
    .end local v28           #latinlist:Ljava/lang/String;
    .end local v30           #list:Ljava/lang/String;
    .end local v31           #listErr:Z
    .end local v36           #now_wime_lang:I
    .end local v46           #sip_type:I
    :cond_39
    const v55, 0x7f09010f

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 697
    .local v47, smartZhuyinKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_3b

    .line 698
    sget-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->sFeature_ZY_Phrase_Input:Z

    if-eqz v55, :cond_3b

    .line 699
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "zhuyin_phrase_input"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 701
    if-eqz v51, :cond_3a

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v55

    if-nez v55, :cond_42

    .line 702
    :cond_3a
    const/16 v55, 0x1

    sput-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->mCPZYSmartInput:Z

    .line 707
    :goto_1c
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    sget-boolean v56, Lcom/htc/android/htcime/HTCIMMData;->mCPZYSmartInput:Z

    move-object/from16 v0, v55

    move-object/from16 v1, v47

    move/from16 v2, v56

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 713
    :cond_3b
    const v55, 0x7f0900d3

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 714
    .local v53, vibrationKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_3c

    .line 717
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_vibrate_set"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 718
    if-eqz v51, :cond_3c

    .line 719
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v56

    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_44

    const/16 v55, 0x1

    :goto_1d
    move-object/from16 v0, v56

    move-object/from16 v1, v53

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 721
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Vibrate_when_typing > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_3c
    const v55, 0x7f0900d2

    move-object/from16 v0, v44

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 728
    .local v48, soundFeedbackKey:Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_3d

    .line 729
    invoke-virtual {v11}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v55

    const-string v56, "default_IME_sound_set"

    const-string v57, "default"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 730
    if-eqz v51, :cond_3d

    .line 731
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v56

    const-string v55, "yes"

    move-object/from16 v0, v55

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_45

    const/16 v55, 0x1

    :goto_1e
    move-object/from16 v0, v56

    move-object/from16 v1, v48

    move/from16 v2, v55

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 733
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Sound_feedback > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_3d
    const/16 v55, 0x2

    move-object/from16 v0, v49

    move/from16 v1, v55

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/CustomizeUtil;->commitModifiedLevel(Landroid/content/SharedPreferences;I)V

    .line 739
    return-void

    .line 636
    .end local v47           #smartZhuyinKey:Ljava/lang/String;
    .end local v48           #soundFeedbackKey:Ljava/lang/String;
    .end local v53           #vibrationKey:Ljava/lang/String;
    .restart local v5       #cidLatinLangString:[Ljava/lang/String;
    .restart local v6       #cidLatinLangVaule:[Ljava/lang/String;
    .restart local v7       #cidSIPString:[Ljava/lang/String;
    .restart local v8       #cidSIPVaule:[Ljava/lang/String;
    .restart local v15       #default_latin:I
    .restart local v16       #default_sip:I
    .restart local v27       #latin_lang:I
    .restart local v28       #latinlist:Ljava/lang/String;
    .restart local v30       #list:Ljava/lang/String;
    .restart local v31       #listErr:Z
    .restart local v46       #sip_type:I
    :cond_3e
    if-eqz v27, :cond_33

    .line 637
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_18

    .line 650
    .restart local v17       #defaultsipstring:Ljava/lang/String;
    :cond_3f
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Default_Input Method   : Default_Keyboard > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 654
    .restart local v22       #i:I
    :cond_40
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1a

    .line 665
    :cond_41
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1b

    .line 704
    .end local v5           #cidLatinLangString:[Ljava/lang/String;
    .end local v6           #cidLatinLangVaule:[Ljava/lang/String;
    .end local v7           #cidSIPString:[Ljava/lang/String;
    .end local v8           #cidSIPVaule:[Ljava/lang/String;
    .end local v15           #default_latin:I
    .end local v16           #default_sip:I
    .end local v17           #defaultsipstring:Ljava/lang/String;
    .end local v22           #i:I
    .end local v27           #latin_lang:I
    .end local v28           #latinlist:Ljava/lang/String;
    .end local v30           #list:Ljava/lang/String;
    .end local v31           #listErr:Z
    .end local v46           #sip_type:I
    .restart local v47       #smartZhuyinKey:Ljava/lang/String;
    :cond_42
    const/16 v55, 0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_43

    const/16 v55, 0x1

    :goto_1f
    sput-boolean v55, Lcom/htc/android/htcime/HTCIMMData;->mCPZYSmartInput:Z

    .line 705
    const-string v55, "HTC_IME_ATS"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Cust_Keyboard_Setting   : Zhuyin_Fuzzy > "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 704
    :cond_43
    const/16 v55, 0x0

    goto :goto_1f

    .line 719
    .restart local v53       #vibrationKey:Ljava/lang/String;
    :cond_44
    const/16 v55, 0x0

    goto/16 :goto_1d

    .line 731
    .restart local v48       #soundFeedbackKey:Ljava/lang/String;
    :cond_45
    const/16 v55, 0x0

    goto/16 :goto_1e
.end method

.method private static getZHSupportData(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 147
    new-instance v0, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v5, "system_InputMethod"

    invoke-direct {v0, p0, v5}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    .local v0, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const/4 v3, 0x0

    .line 151
    .local v3, mSipItem:[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "IME_sip_set"

    const-string v7, "total_list"

    invoke-virtual {v0, v5, v6, v7}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, total:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    :cond_0
    const-string v5, "Customize Utility"

    const-string v6, "CID format error, not support"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 157
    array-length v2, v3

    .line 158
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 159
    const-string v5, "yes"

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "IME_sip_set"

    aget-object v8, v3, v1

    invoke-virtual {v0, v6, v7, v8}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/android/htcime/util/CustomizeUtil;->mIsZHSupport:Z

    .line 158
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_4
    if-nez v2, :cond_1

    .line 165
    const-string v5, "Customize Utility"

    const-string v6, "CID format error, not support"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEIMELangEnable(Landroid/content/Context;I)Z
    .locals 9
    .parameter "context"
    .parameter "eime_select_def"

    .prologue
    .line 1286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1287
    .local v5, r:Landroid/content/res/Resources;
    new-instance v1, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v6, "system_InputMethod"

    invoke-direct {v1, p0, v6}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1289
    .local v1, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, defaultLocaleVaule:[Ljava/lang/String;
    const v6, 0x7f07000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, cidLocaleString:[Ljava/lang/String;
    const-string v3, ""

    .line 1293
    .local v3, eime_select_def_str:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 1294
    aget-object v6, v2, v4

    if-eqz v6, :cond_0

    const-string v6, ""

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 1297
    aget-object v3, v0, v4

    .line 1293
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1301
    :cond_1
    const-string v6, "yes"

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "IME_language_set"

    invoke-virtual {v1, v7, v8, v3}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1302
    const/4 v6, 0x1

    .line 1304
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static isSIPEnable(Landroid/content/Context;I)Z
    .locals 9
    .parameter "context"
    .parameter "sip_select_def"

    .prologue
    .line 1258
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1259
    .local v4, r:Landroid/content/res/Resources;
    new-instance v2, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v6, "system_InputMethod"

    invoke-direct {v2, p0, v6}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1261
    .local v2, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const v6, 0x7f07001f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, cidSIPString:[Ljava/lang/String;
    const v6, 0x7f070020

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1263
    .local v1, cidSIPVaule:[Ljava/lang/String;
    const-string v5, ""

    .line 1265
    .local v5, sip_select_def_str:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 1266
    aget-object v6, v1, v3

    if-eqz v6, :cond_0

    const-string v6, ""

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne p1, v6, :cond_0

    .line 1268
    aget-object v5, v0, v3

    .line 1265
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1272
    :cond_1
    const-string v6, "yes"

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "IME_sip_set"

    invoke-virtual {v2, v7, v8, v5}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1273
    const/4 v6, 0x1

    .line 1275
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static loadHWRSIPfromCID(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 231
    new-instance v0, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v1, "system_InputMethod"

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    .local v0, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "IME_sip_set"

    const-string v4, "Handwriting"

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsEnableHandWriting:Z

    .line 239
    :cond_0
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsEnableHandWriting:Z

    return v1
.end method

.method private static loadZHSIPfromCID(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 174
    new-instance v0, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v4, "system_InputMethod"

    invoke-direct {v0, p0, v4}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    .local v0, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    const/4 v2, 0x0

    .line 177
    .local v2, mSipItem:[Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "IME_sip_set"

    const-string v6, "total_list"

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, total:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    :cond_0
    const-string v3, "ZuhYin;CangJie;PinYin;Stroke;"

    .line 184
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 193
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 194
    const-string v4, "yes"

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "IME_sip_set"

    aget-object v7, v2, v1

    invoke-virtual {v0, v5, v6, v7}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    sget v4, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    aget-object v5, v2, v1

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher;->getZHSIPShift(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    sput v4, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    .line 193
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    .end local v1           #j:I
    :cond_3
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 188
    array-length v4, v2

    if-nez v4, :cond_1

    .line 189
    const-string v4, "Customize Utility"

    const-string v5, "CID format error, not support"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v3           #total:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static updateLocaleString(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1046
    new-instance v1, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v8, "system_InputMethod"

    invoke-direct {v1, p0, v8}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1047
    .local v1, customCIDUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    new-instance v2, Lcom/htc/android/htcime/util/CIDCustomizeUtil;

    const-string v8, "system_defaultInputMethod"

    invoke-direct {v2, p0, v8}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1048
    .local v2, customMNSUtil:Lcom/htc/android/htcime/util/CIDCustomizeUtil;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1049
    .local v6, r:Landroid/content/res/Resources;
    const v8, 0x7f070009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1050
    .local v3, defaultLocaleString:[Ljava/lang/String;
    const v8, 0x7f07000b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1051
    .local v4, defaultLocaleVaule:[Ljava/lang/String;
    const v8, 0x7f07000a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, cidLocaleString:[Ljava/lang/String;
    const v8, 0x7f070025

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    .line 1055
    sput-boolean v12, Lcom/htc/android/htcime/util/SIPSwitcherData;->Language_Change:Z

    .line 1058
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v9, "zh"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1060
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    sget-object v8, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    array-length v8, v8

    if-ge v5, v8, :cond_1

    .line 1061
    sget-object v8, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    aget-object v8, v8, v5

    const-string v9, "EN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1062
    sget-object v8, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    const-string v9, "\u82f1"

    aput-object v9, v8, v5

    .line 1060
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1065
    :cond_1
    const/4 v5, 0x0

    :goto_1
    array-length v8, v3

    if-ge v5, v8, :cond_3

    .line 1066
    aget-object v8, v3, v5

    const-string v9, "English"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1067
    const-string v8, "\u82f1\u6587"

    aput-object v8, v3, v5

    .line 1065
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1072
    .end local v5           #i:I
    :cond_3
    sput v11, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    .line 1081
    invoke-virtual {v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "default_IME_language_set"

    const-string v10, "default"

    invoke-virtual {v2, v8, v9, v10}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "IME_language_set"

    const-string v10, "English"

    invoke-virtual {v1, v8, v9, v10}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    .line 1084
    :cond_4
    const-string v8, "Customize Utility"

    const-string v9, "updateLocaleString, Can\'t find language set from DB."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v8, v8, v9

    const-string v9, "English"

    aput-object v9, v8, v11

    .line 1086
    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v8, v8, v9

    const-string v9, "0"

    aput-object v9, v8, v12

    .line 1088
    sget-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mbExecOnceAtBoot:Z

    if-nez v8, :cond_6

    .line 1089
    sput v11, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    .line 1109
    :cond_5
    :goto_2
    return v12

    .line 1091
    :cond_6
    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    goto :goto_2

    .line 1094
    :cond_7
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    array-length v8, v0

    if-ge v5, v8, :cond_5

    .line 1095
    invoke-virtual {v1}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getIMEDataSet()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "IME_language_set"

    aget-object v10, v0, v5

    invoke-virtual {v1, v8, v9, v10}, Lcom/htc/android/htcime/util/CIDCustomizeUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1098
    .local v7, tmp:Ljava/lang/String;
    if-eqz v7, :cond_8

    const-string v8, "yes"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1099
    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v8, v8, v9

    aget-object v9, v3, v5

    aput-object v9, v8, v11

    .line 1100
    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleData:[[Ljava/lang/String;

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    aget-object v8, v8, v9

    aget-object v9, v4, v5

    aput-object v9, v8, v12

    .line 1101
    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/htc/android/htcime/HTCIMMData;->mSettingsLocaleNumber:I

    .line 1102
    const-string v8, "HTC_IME_ATS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_IME_Language   : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > yes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1104
    :cond_8
    const-string v8, "HTC_IME_ATS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cust_IME_Language   : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > no"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static zhInputMap(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 246
    const/16 v0, 0x11

    .line 251
    .local v0, ret:I
    const-string v1, "Handwriting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const/16 v0, 0x11

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    const-string v1, "ZuhYin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    const/16 v0, 0xa

    goto :goto_0

    .line 255
    :cond_2
    const-string v1, "CangJie"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    const/16 v0, 0x8

    goto :goto_0

    .line 257
    :cond_3
    const-string v1, "PinYin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    const/16 v0, 0xc

    goto :goto_0

    .line 259
    :cond_4
    const-string v1, "Stroke"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const/16 v0, 0xe

    goto :goto_0
.end method
