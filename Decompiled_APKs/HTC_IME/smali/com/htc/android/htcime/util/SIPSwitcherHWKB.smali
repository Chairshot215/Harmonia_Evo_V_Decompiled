.class public Lcom/htc/android/htcime/util/SIPSwitcherHWKB;
.super Ljava/lang/Object;
.source "SIPSwitcherHWKB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;,
        Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final INFO:Z = false

.field private static final TAG:Ljava/lang/String; = "SIPSwitcherHWKB"


# instance fields
.field private CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

.field mCANGJIEKey:Ljava/lang/String;

.field mCANGJIESelect:I

.field mData:Lcom/htc/android/htcime/HTCIMMData;

.field mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field mEIMELangKey:Ljava/lang/String;

.field mEIMELangKeyDef:Ljava/lang/String;

.field mEIMELangSelect:I

.field mEIMELangSelectDef:I

.field mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

.field mItems:[Ljava/lang/CharSequence;

.field mSIPSelect:I

.field mSIPSelectDef:I

.field mSIPSwitchKey:Ljava/lang/String;

.field mSIPSwitchKeyDef:Ljava/lang/String;

.field mSIPType:I

.field protected mSwitchPosition:I

.field protected mSwitchSIPList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;",
            ">;"
        }
    .end annotation
.end field

.field mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "htcIMM"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelect:I

    .line 42
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPType:I

    .line 44
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    .line 46
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIESelect:I

    .line 48
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    .line 50
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    .line 724
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    .line 61
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 63
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->initSettings()V

    .line 64
    return-void
.end method

.method public static LoadDefaultList(Landroid/content/Context;)V
    .locals 29
    .parameter "context"

    .prologue
    .line 854
    if-nez p0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 858
    .local v22, r:Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 859
    .local v24, sp:Landroid/content/SharedPreferences;
    if-eqz v24, :cond_0

    if-eqz v22, :cond_0

    .line 864
    const v26, 0x7f0900e7

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 865
    .local v18, mSIPSwitchKey:Ljava/lang/String;
    const v26, 0x7f0900e9

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 866
    .local v11, mEIMELangKey:Ljava/lang/String;
    const v26, 0x7f0900ea

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 868
    .local v9, mCANGJIEKey:Ljava/lang/String;
    const v26, 0x7f0900e8

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 870
    .local v15, mIntialSIPSwitchKey:Ljava/lang/String;
    const/16 v26, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 871
    .local v16, mSIPSelect:I
    const/16 v26, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 872
    .local v13, mEIMELangSelect:I
    const/16 v26, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 873
    .local v10, mCANGJIESelect:I
    const-string v26, "SIPSwitcherHWKB"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "LoadDefaultList   mSIPSelect - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mEIMELangSelect - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v13, v0, :cond_2

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v10, v0, :cond_6

    .line 875
    :cond_2
    const/4 v10, 0x0

    move v13, v10

    move/from16 v16, v10

    .line 876
    invoke-static {}, Lcom/htc/android/htcime/util/SIPSwitcherData;->getInputMethodMapping()Ljava/lang/String;

    move-result-object v7

    .line 877
    .local v7, lang_mapping:Ljava/lang/String;
    const-string v26, ";"

    invoke-static/range {v26 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 878
    .local v20, pattern:Ljava/util/regex/Pattern;
    const-string v26, "-"

    invoke-static/range {v26 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v21

    .line 879
    .local v21, pattern2:Ljava/util/regex/Pattern;
    const-string v26, "SIPSwitcherHWKB"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "loadSettingTest  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v25

    .line 881
    .local v25, total_sip:[Ljava/lang/String;
    move-object/from16 v3, v25

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_5

    aget-object v5, v3, v6

    .line 882
    .local v5, each:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v23

    .line 884
    .local v23, sip_lang:[Ljava/lang/String;
    const/16 v26, 0x1

    const/16 v27, 0x0

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    shl-int v26, v26, v27

    or-int v16, v16, v26

    .line 885
    const/16 v26, 0x0

    aget-object v26, v23, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    if-nez v26, :cond_4

    .line 886
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    shl-int v26, v26, v27

    or-int v13, v13, v26

    .line 881
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 887
    :cond_4
    const/16 v26, 0x0

    aget-object v26, v23, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 888
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    shl-int v26, v26, v27

    or-int v10, v10, v26

    goto :goto_2

    .line 891
    .end local v5           #each:Ljava/lang/String;
    .end local v23           #sip_lang:[Ljava/lang/String;
    :cond_5
    const-string v26, "SIPSwitcherHWKB"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mSIPSelect - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "mEIMELangKey - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v11, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 903
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #lang_mapping:Ljava/lang/String;
    .end local v8           #len$:I
    .end local v20           #pattern:Ljava/util/regex/Pattern;
    .end local v21           #pattern2:Ljava/util/regex/Pattern;
    .end local v25           #total_sip:[Ljava/lang/String;
    :cond_6
    const v26, 0x7f0900eb

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 904
    .local v19, mSIPSwitchKeyDef:Ljava/lang/String;
    const v26, 0x7f0900ec

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 905
    .local v12, mEIMELangKeyDef:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/htcime/util/SIPSwitcherData;->getDefInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 906
    .local v4, def_input:Ljava/lang/String;
    const-string v26, "-"

    invoke-static/range {v26 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v23

    .line 908
    .restart local v23       #sip_lang:[Ljava/lang/String;
    const/16 v26, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 909
    .local v17, mSIPSelectDef:I
    const/16 v26, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 911
    .local v14, mEIMELangSelectDef:I
    const/16 v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v14, v0, :cond_0

    .line 912
    :cond_7
    const/16 v26, 0x1

    const/16 v27, 0x0

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    shl-int v17, v26, v27

    .line 913
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    shl-int v14, v26, v27

    .line 914
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->hideSwitchMenuInner()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->launchSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->handleSwitchMenuClick(I)V

    return-void
.end method

.method private createSwitchCircle()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 214
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mSIPSelect - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mEIMELangSelect - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 219
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->clearStatus()V

    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x6

    if-ge v0, v5, :cond_5

    .line 222
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelect:I

    shl-int v6, v8, v0

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 224
    if-nez v0, :cond_1

    .line 225
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v5, 0x1c

    if-ge v1, v5, :cond_4

    .line 226
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    shl-int v6, v8, v1

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 227
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    new-instance v6, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    invoke-direct {v6, p0, v0, v1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    .end local v1           #j:I
    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 231
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_2
    const/4 v5, 0x2

    if-ge v1, v5, :cond_4

    .line 232
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIESelect:I

    shl-int v6, v8, v1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 233
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    new-instance v6, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    invoke-direct {v6, p0, v0, v1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 237
    .end local v1           #j:I
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    new-instance v6, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    invoke-direct {v6, p0, v0, v10}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_5
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mSwitchSIPList.size() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mSIPSelectDef - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mEIMELangSelectDef - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    .line 249
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 251
    .local v2, s:I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_6

    .line 252
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    if-ne v5, v6, :cond_9

    .line 253
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    .line 276
    :cond_6
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    if-ne v5, v9, :cond_7

    .line 277
    iput v10, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    .line 279
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 280
    .local v4, sp_t:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    iput v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    .line 281
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    iput v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    .line 287
    .end local v4           #sp_t:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 288
    .local v3, sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - sp - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_8

    .line 290
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v6

    aget v5, v5, v6

    sput v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 291
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mData.mLanguage - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_8
    return-void

    .line 251
    .end local v3           #sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method private forceUpdateLang(I)V
    .locals 4
    .parameter "switch_position"

    .prologue
    .line 169
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceUpdateLang swicthSIP(specific) - switch_position - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceUpdateLang swicthSIP(specific) - mSwitchSIPList.size() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceUpdateLang swicthSIP(specific) - mSwitchPosition - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v1, :cond_0

    .line 174
    const-string v1, "SIPSwitcherHWKB"

    const-string v2, "null service when switch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 181
    .local v0, old_sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOldSP - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v2

    aget v1, v1, v2

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    goto :goto_0
.end method

.method private getContentSensitiveSIPInternal(II)I
    .locals 8
    .parameter "contentType"
    .parameter "orientation"

    .prologue
    .line 757
    const/4 v1, -0x1

    .line 760
    .local v1, ret:I
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 762
    sparse-switch p1, :sswitch_data_0

    .line 837
    const-string v5, "SIPSwitcherHWKB"

    const-string v6, "getContentSensitiveSIPInternal, default "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->clearStatus()V

    .line 842
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->getCurSIPId()I

    move-result v1

    .line 845
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CSS.mPosition - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CSS.mStatus - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSwitchPosition - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContentSensitiveSIPInternal, ret - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return v1

    .line 764
    :sswitch_0
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContentSensitiveSIPInternal, contentType - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    iput-object v6, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 767
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 768
    .local v4, spair:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_1

    .line 770
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    iput v6, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 773
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 774
    .local v2, s:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 775
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_2

    .line 776
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iput v0, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 774
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 788
    .end local v0           #i:I
    .end local v2           #s:I
    .end local v4           #spair:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    :sswitch_1
    const-string v5, "SIPSwitcherHWKB"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContentSensitiveSIPInternal, contentType - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    iput-object v6, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 791
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 792
    .local v3, sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_3

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_3

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_3

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    const/16 v6, 0xe

    if-eq v5, v6, :cond_3

    .line 800
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    iput v6, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 803
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 806
    .restart local v2       #s:I
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 807
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v2, :cond_0

    .line 808
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_4

    .line 809
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iput v0, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 807
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 815
    .end local v0           #i:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v2, :cond_0

    .line 816
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_6

    .line 817
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iput v0, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 815
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 825
    .end local v0           #i:I
    .end local v2           #s:I
    .end local v3           #sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    :sswitch_2
    const-string v5, "SIPSwitcherHWKB"

    const-string v6, "getContentSensitiveSIPInternal, unknown "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v5, :cond_7

    .line 830
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_UNKONWN:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    iput-object v6, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    .line 831
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v5, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    iput v6, v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 833
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->clearStatus()V

    goto/16 :goto_0

    .line 762
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSwitchMenuClick(I)V
    .locals 3
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 571
    invoke-direct {p0, p1, v2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->switchSIP(IZ)V

    .line 573
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-eq v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->clearStatus()V

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->hideSwitchMenuInner()V

    .line 577
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/HTCIMEService;->handleIconShow(I)V

    .line 578
    return-void
.end method

.method private hideSwitchMenuInner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->resetMetaState()V

    .line 583
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 585
    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 588
    :cond_0
    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 589
    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mItems:[Ljava/lang/CharSequence;

    .line 590
    return-void
.end method

.method private initSettings()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSwitchKey:Ljava/lang/String;

    .line 192
    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangKey:Ljava/lang/String;

    .line 193
    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIEKey:Ljava/lang/String;

    .line 194
    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSwitchKeyDef:Ljava/lang/String;

    .line 195
    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangKeyDef:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->loadSetting()V

    .line 198
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->initSwitchCircle()V

    .line 199
    return-void
.end method

.method private initSwitchCircle()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "SIPSwitcherHWKB"

    const-string v1, "initSwitchCircle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    .line 206
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->createSwitchCircle()V

    .line 208
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->DBGLOG()V

    .line 209
    return-void
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 593
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 595
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v0, I:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcime"

    const-string v2, "com.htc.android.htcime.settings.KeyboardSettingsHWKBSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 599
    const-string v1, "fromMenu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 601
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 602
    return-void
.end method

.method private loadSetting()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 370
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 371
    .local v0, sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->LoadDefaultList(Landroid/content/Context;)V

    .line 376
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelect:I

    .line 377
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    .line 378
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIEKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIESelect:I

    .line 379
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSwitchKeyDef:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    .line 380
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangKeyDef:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    .line 383
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSetting()   mSIPSelect - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEIMELangSelect - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSetting()   mSIPSelectDef - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEIMELangSelectDef - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showSwitchMenu()V
    .locals 17

    .prologue
    .line 469
    const-string v14, "SIPSwitcherHWKB"

    const-string v15, "showSwitchMenu()"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->isShowingSwitchMenu()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v14, v14, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    if-nez v14, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 478
    .local v10, s:I
    if-gtz v10, :cond_2

    .line 479
    const-string v14, "SIPSwitcherHWKB"

    const-string v15, "show Switch Menu - no item in the list."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v14}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 485
    .local v9, r:Landroid/content/res/Resources;
    const v14, 0x7f070009

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, defaultLocaleString:[Ljava/lang/String;
    const v14, 0x7f07000b

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, defaultLocaleVaule:[Ljava/lang/String;
    sget-boolean v14, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v14, :cond_4

    sget-object v14, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v15, "zh"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 490
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v14, v5

    if-ge v7, v14, :cond_4

    .line 491
    aget-object v14, v5, v7

    const-string v15, "English"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 492
    const-string v14, "\u82f1\u6587"

    aput-object v14, v5, v7

    .line 490
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 497
    .end local v7           #i:I
    :cond_4
    new-array v14, v10, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mItems:[Ljava/lang/CharSequence;

    .line 498
    const/4 v4, 0x0

    .line 499
    .local v4, checked:I
    const/4 v1, 0x0

    .line 501
    .local v1, c:I
    const v14, 0x7f07002c

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 502
    .local v13, zh_type:[Ljava/lang/String;
    const v14, 0x7f07002d

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, cangjie_type:[Ljava/lang/String;
    const v14, 0x7f07001e

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, cangjie_value:[Ljava/lang/String;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v10, :cond_c

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 507
    .local v11, sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v11}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v14

    if-nez v14, :cond_6

    .line 508
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    array-length v14, v6

    if-ge v8, v14, :cond_9

    .line 509
    sget-object v14, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v11}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v15

    aget v14, v14, v15

    aget-object v15, v6, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v14, v15, :cond_5

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mItems:[Ljava/lang/CharSequence;

    aget-object v15, v5, v8

    aput-object v15, v14, v1

    .line 511
    add-int/lit8 v1, v1, 0x1

    .line 508
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 514
    .end local v8           #j:I
    :cond_6
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v11}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 515
    const/4 v8, 0x0

    .restart local v8       #j:I
    :goto_4
    array-length v14, v3

    if-ge v8, v14, :cond_9

    .line 516
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v11}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v14

    aget-object v15, v3, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v14, v15, :cond_7

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mItems:[Ljava/lang/CharSequence;

    aget-object v15, v2, v8

    aput-object v15, v14, v1

    .line 518
    add-int/lit8 v1, v1, 0x1

    .line 515
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 524
    .end local v8           #j:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mItems:[Ljava/lang/CharSequence;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v11}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v13, v15

    aput-object v15, v14, v1

    .line 525
    add-int/lit8 v1, v1, 0x1

    .line 529
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v14, v14, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v15, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-eq v14, v15, :cond_b

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v14, v14, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    if-ne v7, v14, :cond_a

    .line 531
    move v4, v7

    .line 505
    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 534
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    if-ne v7, v14, :cond_a

    .line 535
    move v4, v7

    goto :goto_5

    .line 540
    .end local v11           #sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    :cond_c
    new-instance v14, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/htcime/HTCIMEService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/htcime/util/SIPUtils;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x20c0163

    new-instance v16, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$2;

    invoke-direct/range {v16 .. v17}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$2;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V

    invoke-virtual/range {v14 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f09002e

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v14

    new-instance v15, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$1;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mItems:[Ljava/lang/CharSequence;

    new-instance v16, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$3;

    invoke-direct/range {v16 .. v17}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$3;-><init>(Lcom/htc/android/htcime/util/SIPSwitcherHWKB;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 563
    .local v12, w:Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v15, v15, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v15}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v15

    iput-object v15, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 564
    const/16 v14, 0x3eb

    invoke-virtual {v12, v14}, Landroid/view/Window;->setType(I)V

    .line 565
    const/high16 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v14}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private switchSIP(IZ)V
    .locals 11
    .parameter "switch_position"
    .parameter "force"

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 92
    const-string v5, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switchSIP(specific) - switch_position - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v5, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switchSIP(specific) - mSwitchSIPList.size() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v5, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switchSIP(specific) - mSwitchPosition - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v5, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switchSIP(specific) - mData.mOrientation - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v9, v9, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v5, :cond_0

    .line 98
    const-string v5, "SIPSwitcherHWKB"

    const-string v6, "null service when switch"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 102
    :cond_0
    if-ltz p1, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 103
    :cond_1
    const-string v5, "SIPSwitcherHWKB"

    const-string v6, "switch pos out of bound"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 108
    .local v1, old_sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    iput p1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    .line 109
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 112
    .local v0, new_sp:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    const-string v5, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOldSP - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v5, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNewSP - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 117
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    .local v2, r:Landroid/content/res/Resources;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_5

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_5

    .line 121
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v7

    if-ne v5, v7, :cond_3

    if-eqz p2, :cond_4

    .line 123
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v7

    aget v5, v5, v7

    sput v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 124
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    .line 157
    :cond_4
    :goto_1
    const-string v5, "SIPSwitcherHWKB"

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    shl-int v5, v6, v5

    iput v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    .line 160
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    shl-int v5, v6, v5

    iput v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    goto/16 :goto_0

    .line 127
    :cond_5
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_8

    .line 128
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v8

    aget v5, v5, v8

    sput v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 135
    :cond_6
    :goto_2
    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v8

    shl-int v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 137
    .local v3, sipid:I
    const/16 v5, 0x9

    if-ne v5, v3, :cond_7

    .line 138
    const/4 v3, 0x3

    .line 140
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iput v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    .line 145
    if-ne v10, v3, :cond_a

    .line 146
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 147
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v3, v7}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 149
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput-boolean v6, v5, Lcom/htc/android/htcime/HTCIMMData;->mSwitchToHW:Z

    goto :goto_1

    .line 129
    .end local v3           #sipid:I
    :cond_8
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-ne v5, v10, :cond_6

    .line 130
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const v5, 0x7f0902aa

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v5

    if-nez v5, :cond_9

    move v5, v6

    :goto_3
    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_9
    move v5, v7

    goto :goto_3

    .line 152
    .restart local v3       #sipid:I
    :cond_a
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 153
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIPForHWKB(I)V

    goto/16 :goto_1
.end method

.method private writePressLanguageKeyLog()V
    .locals 4

    .prologue
    .line 923
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v1, :cond_0

    .line 924
    new-instance v0, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 925
    .local v0, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v1, "lang_key"

    const-string v2, "language_key"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .end local v0           #ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    :cond_0
    return-void
.end method


# virtual methods
.method public DBGLOG()V
    .locals 5

    .prologue
    .line 391
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchSIPList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v1, "SIPSwitcherHWKB"

    const-string v2, "Content of SIP list -------------------- "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 394
    const-string v2, "SIPSwitcherHWKB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_0
    const-string v1, "SIPSwitcherHWKB"

    const-string v2, "Content of SIP list end--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchPosition - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v1, "SIPSwitcherHWKB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchSIPList.get(mSwitchPosition) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public doLanguageOption()V
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 442
    .local v0, c:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->showSwitchMenu()V

    .line 447
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->writePressLanguageKeyLog()V

    .line 448
    return-void

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->launchSettings()V

    goto :goto_0
.end method

.method public forceLoadDefaultSIP()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 660
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 661
    .local v4, sp:Landroid/content/SharedPreferences;
    if-nez v4, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-static {}, Lcom/htc/android/htcime/util/SIPSwitcherData;->getDefInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, def_input:Ljava/lang/String;
    const-string v6, "-"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, sip_lang:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSwitchKeyDef:Ljava/lang/String;

    aget-object v7, v3, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shl-int v7, v9, v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    .line 667
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangKeyDef:Ljava/lang/String;

    aget-object v7, v3, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shl-int v7, v9, v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    .line 671
    const-string v6, "SIPSwitcherHWKB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forceLoadDefaultSIP, mSIPSelectDef - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mEIMELangSelectDef - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iput v10, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    .line 673
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 674
    .local v2, s:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 675
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v6

    shl-int v6, v9, v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v6

    shl-int v6, v9, v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    if-ne v6, v7, :cond_3

    .line 676
    iput v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    .line 681
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-virtual {v6}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->clearStatus()V

    .line 699
    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    if-ne v6, v10, :cond_0

    .line 700
    const-string v6, "SIPSwitcherHWKB"

    const-string v7, "default setting missed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iput v11, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    .line 702
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    .line 703
    .local v5, sp_t:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v6

    shl-int v6, v9, v6

    iput v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    .line 704
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v6

    shl-int v6, v9, v6

    iput v6, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    goto/16 :goto_0

    .line 674
    .end local v5           #sp_t:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getContentSensitiveSIP(II)I
    .locals 7
    .parameter "contentType"
    .parameter "orientation"

    .prologue
    .line 733
    const-string v4, "SIPSwitcherHWKB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentType - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " orientation - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v1, 0x0

    .line 736
    .local v1, ret:I
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->getContentSensitiveSIPInternal(II)I

    move-result v1

    .line 739
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 740
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v4, v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v4, v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    :goto_0
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v3

    .line 741
    .local v3, type:I
    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 742
    .local v2, sp:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 743
    .local v0, r:Landroid/content/res/Resources;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const v4, 0x7f0902aa

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 751
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #type:I
    :goto_2
    const-string v4, "SIPSwitcherHWKB"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getContentSensitiveSIP, ret - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v1

    .line 740
    :cond_0
    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    goto :goto_0

    .line 743
    .restart local v0       #r:Landroid/content/res/Resources;
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    .restart local v3       #type:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 747
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #type:I
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v4, v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v4, v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    :goto_3
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v4

    sput v4, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    goto :goto_3
.end method

.method public getCurSIPId()I
    .locals 5

    .prologue
    .line 642
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v2, v2, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-ne v2, v3, :cond_0

    .line 643
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v1

    .line 655
    .local v1, sip:I
    :goto_0
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 647
    .end local v1           #sip:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v3, v3, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1       #sip:I
    goto :goto_0

    .line 648
    .end local v1           #sip:I
    :catch_0
    move-exception v0

    .line 649
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SIPSwitcherHWKB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch position error when CS - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v4, v4, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->clearStatus()V

    .line 651
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v1

    .restart local v1       #sip:I
    goto :goto_0
.end method

.method public getStatusIcon()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 608
    const-string v7, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStatusIcon, CSS.mStatus - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v9, v9, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " CSS.mPosition - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v9, v9, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSwitchPosition - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSwitchSIPList.size - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v5, 0x0

    .line 613
    .local v5, ret:I
    iget-object v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v9, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-eq v7, v9, :cond_0

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v9, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_UNKONWN:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-ne v7, v9, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    :goto_0
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v6

    .line 614
    .local v6, sip:I
    iget-object v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v9, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-eq v7, v9, :cond_1

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v9, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_UNKONWN:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-ne v7, v9, :cond_4

    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v7, v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    :goto_1
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v3

    .line 616
    .local v3, lang:I
    const-string v7, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStatusIcon, mSIPSelectDef - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , mEIMELangSelectDef - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v7, "SIPSwitcherHWKB"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getStatusIcon, sip - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , lang - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-nez v6, :cond_6

    .line 621
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->STATUS_ICON_MAP_LATIN:[[I

    .local v0, arr$:[[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 622
    .local v1, i:[I
    aget v7, v1, v10

    if-ne v3, v7, :cond_5

    .line 623
    aget v5, v1, v11

    .line 636
    .end local v1           #i:[I
    :cond_2
    :goto_3
    return v5

    .line 613
    .end local v0           #arr$:[[I
    .end local v2           #i$:I
    .end local v3           #lang:I
    .end local v4           #len$:I
    .end local v6           #sip:I
    :cond_3
    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    goto/16 :goto_0

    .line 614
    .restart local v6       #sip:I
    :cond_4
    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    goto :goto_1

    .line 621
    .restart local v0       #arr$:[[I
    .restart local v1       #i:[I
    .restart local v2       #i$:I
    .restart local v3       #lang:I
    .restart local v4       #len$:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 628
    .end local v0           #arr$:[[I
    .end local v1           #i:[I
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_6
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->STATUS_ICON_MAP_ZH:[[I

    .restart local v0       #arr$:[[I
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 629
    .restart local v1       #i:[I
    aget v7, v1, v10

    if-ne v6, v7, :cond_7

    .line 630
    aget v5, v1, v11

    .line 631
    goto :goto_3

    .line 628
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public hideSwitchMenu()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->hideSwitchMenuInner()V

    .line 455
    return-void
.end method

.method public isShowingSwitchMenu()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x1

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchSIP()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    const-string v0, "SIPSwitcherHWKB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSIP() - CSS.mStatus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v2, v2, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "SIPSwitcherHWKB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSIP() - CSS.mPosition - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v2, v2, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "SIPSwitcherHWKB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchSIP() - mSwitchPosition - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcherData$CS_State;

    if-ne v0, v1, :cond_0

    .line 76
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-direct {p0, v0, v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->switchSIP(IZ)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    iget v0, v0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-direct {p0, v0, v3}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->switchSIP(IZ)V

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->CSS:Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$ContentSensitiveStatus;->clearStatus()V

    goto :goto_0
.end method

.method public updateCircle()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v8, -0x1

    .line 301
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 302
    .local v6, sp:Landroid/content/SharedPreferences;
    if-nez v6, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 305
    .local v5, r:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 306
    .local v4, newSIPSelect:I
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangKey:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 307
    .local v3, newLatinLangSelect:I
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIEKey:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, newCANGJIESelect:I
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSwitchKeyDef:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 309
    .local v1, SIPSelectDef:I
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangKeyDef:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 328
    .local v0, LatinLangSelectDef:I
    if-ne v4, v8, :cond_2

    const/4 v4, 0x1

    .line 329
    :cond_2
    if-ne v3, v8, :cond_3

    const/4 v3, 0x1

    .line 330
    :cond_3
    if-ne v2, v8, :cond_4

    const/4 v2, 0x1

    .line 331
    :cond_4
    if-ne v1, v8, :cond_5

    const/4 v1, 0x1

    .line 332
    :cond_5
    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    .line 335
    :cond_6
    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelect:I

    if-ne v4, v7, :cond_7

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    if-ne v3, v7, :cond_7

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIESelect:I

    if-ne v2, v7, :cond_7

    sget-boolean v7, Lcom/htc/android/htcime/util/SIPSwitcherData;->Language_Change:Z

    if-ne v7, v11, :cond_9

    .line 338
    :cond_7
    iput v4, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelect:I

    .line 339
    iput v3, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelect:I

    .line 340
    iput v2, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mCANGJIESelect:I

    .line 341
    iput v1, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSIPSelectDef:I

    .line 342
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mEIMELangSelectDef:I

    .line 343
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->createSwitchCircle()V

    .line 344
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->DBGLOG()V

    .line 345
    sput-boolean v12, Lcom/htc/android/htcime/util/SIPSwitcherData;->Language_Change:Z

    .line 358
    :cond_8
    :goto_1
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v7, :cond_0

    .line 359
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->sip:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v7

    if-eq v7, v11, :cond_a

    .line 360
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto :goto_0

    .line 347
    :cond_9
    const-string v7, "SIPSwitcherHWKB"

    const-string v8, "...SKIP update switch circle..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v7

    if-eq v8, v7, :cond_8

    .line 351
    const-string v7, "SIPSwitcherHWKB"

    const-string v8, "IME Service language not equal to switcher"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v8, "SIPSwitcherHWKB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mData.mLanguage - "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v9, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mSwitchSIPList.lang"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v10, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mSwitchPosition:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->lang:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcherHWKB$switchPair;)I

    move-result v7

    sput v7, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    goto/16 :goto_1

    .line 362
    :cond_a
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcherHWKB;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean v12, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto/16 :goto_0
.end method
