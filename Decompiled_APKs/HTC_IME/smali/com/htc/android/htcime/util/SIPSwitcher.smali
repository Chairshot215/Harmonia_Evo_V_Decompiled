.class public Lcom/htc/android/htcime/util/SIPSwitcher;
.super Ljava/lang/Object;
.source "SIPSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;,
        Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;,
        Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;,
        Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final INFO:Z = false

.field private static SIP_STRINGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SIPSwitcher"

.field static mEIMELangSelectDef:I

.field static mSIPSelectDef:I


# instance fields
.field private CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

.field mData:Lcom/htc/android/htcime/HTCIMMData;

.field mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

.field mEIMELangKey:Ljava/lang/String;

.field mEIMELangKeyDef:Ljava/lang/String;

.field mEIMELangSelect:I

.field mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

.field mItems:[Ljava/lang/CharSequence;

.field private mLatinIMIdx:I

.field private mOldSipType:I

.field mSIPSelect:I

.field mSIPSwitchKey:Ljava/lang/String;

.field mSIPSwitchKeyDef:Ljava/lang/String;

.field mSIPType:I

.field protected mSwitchPosition:I

.field protected mSwitchSIPList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;",
            ">;"
        }
    .end annotation
.end field

.field mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

.field private unSwitchKeyboardType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    .line 51
    sput v1, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    .line 53
    sput v1, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "htcIMM"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    .line 47
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    .line 49
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    .line 64
    iput-boolean v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->unSwitchKeyboardType:Z

    .line 65
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mOldSipType:I

    .line 744
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mLatinIMIdx:I

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 993
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;-><init>(Lcom/htc/android/htcime/util/SIPSwitcher;)V

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    .line 69
    iput-object p1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    .line 70
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->initSettings()V

    .line 71
    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/util/SIPSwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->hideSwitchMenuInner()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/util/SIPSwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->launchSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/util/SIPSwitcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/util/SIPSwitcher;->handleSwitchMenuClick(I)V

    return-void
.end method

.method private createSwitchCircle()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 342
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mSIPSelect - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mEIMELangSelect - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 347
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-virtual {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->clearStatus()V

    .line 349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x6

    if-ge v0, v5, :cond_3

    .line 350
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    shl-int v6, v8, v0

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 352
    if-nez v0, :cond_1

    .line 353
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    const/16 v5, 0x1c

    if-ge v1, v5, :cond_2

    .line 354
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    shl-int v6, v8, v1

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 355
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    new-instance v6, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    sget-object v7, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v6, p0, v0, v1, v7}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;-><init>(Lcom/htc/android/htcime/util/SIPSwitcher;IILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    .end local v1           #j:I
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    new-instance v6, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    sget-object v7, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-direct {v6, p0, v0, v10, v7}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;-><init>(Lcom/htc/android/htcime/util/SIPSwitcher;IILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_3
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mSwitchSIPList.size() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mSIPSelectDef - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - mEIMELangSelectDef - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iput v9, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    .line 371
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 372
    .local v2, s:I
    sget v5, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    if-ne v5, v8, :cond_8

    .line 373
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    .line 374
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    sget v6, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    if-ne v5, v6, :cond_7

    .line 375
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    .line 388
    :cond_4
    :goto_3
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    if-ne v5, v9, :cond_5

    .line 389
    iput v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    .line 390
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 391
    .local v3, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 392
    .local v4, sp_t:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    sput v5, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    .line 393
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    sput v5, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    .line 394
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKeyDef:Ljava/lang/String;

    sget v7, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKeyDef:Ljava/lang/String;

    sget v7, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #sp_t:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_5
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 400
    .local v3, sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSwitchCircle - sp - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    if-nez v5, :cond_6

    .line 402
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    aget v5, v5, v6

    sput v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 403
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mData.mLanguage - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_6
    return-void

    .line 373
    .end local v3           #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 380
    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_4

    .line 381
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    shl-int v5, v8, v5

    sget v6, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    if-ne v5, v6, :cond_9

    .line 382
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    goto/16 :goto_3

    .line 380
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private getContentSensitiveSIPInternal(II)I
    .locals 12
    .parameter "contentType"
    .parameter "orientation"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1051
    const/4 v3, -0x1

    .line 1052
    .local v3, ret:I
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 1054
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v7, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 1057
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->unSwitchKeyboardType:Z

    if-eqz v7, :cond_0

    .line 1058
    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mOldSipType:I

    iput v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    .line 1059
    iput-boolean v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->unSwitchKeyboardType:Z

    .line 1063
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_OFF:Z

    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 1064
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 1178
    const-string v7, "SIPSwitcher"

    const-string v8, "getContentSensitiveSIPInternal, default "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-virtual {v7}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->clearStatus()V

    .line 1183
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPID()I

    move-result v3

    .line 1186
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CSS.mPosition - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v9, v9, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CSS.mStatus - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v9, v9, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSwitchPosition - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentSensitiveSIPInternal, ret - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return v3

    .line 1066
    :sswitch_0
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentSensitiveSIPInternal, contentType - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    sget-object v8, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    iput-object v8, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    .line 1068
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_ON:Z

    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 1070
    :cond_3
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 1071
    .local v6, spair:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    if-nez v7, :cond_4

    .line 1073
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    iput v8, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 1076
    :cond_4
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 1077
    .local v4, s:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1078
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    if-nez v7, :cond_5

    .line 1079
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iput v1, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 1077
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1091
    .end local v1           #i:I
    .end local v4           #s:I
    .end local v6           #spair:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :sswitch_1
    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v7, :cond_7

    .line 1093
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1094
    .local v5, sp:Landroid/content/SharedPreferences;
    if-eqz v5, :cond_7

    .line 1095
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1097
    .local v2, r:Landroid/content/res/Resources;
    if-eqz v2, :cond_7

    const v7, 0x7f0902fb

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1099
    const v7, 0x7f0900d8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "2"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1101
    .local v0, checked:I
    if-ne v0, v10, :cond_6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    if-eq v7, v10, :cond_7

    .line 1102
    :cond_6
    iput-boolean v9, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->unSwitchKeyboardType:Z

    .line 1103
    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    iput v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mOldSipType:I

    .line 1104
    iput v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    .line 1111
    .end local v0           #checked:I
    .end local v2           #r:Landroid/content/res/Resources;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_7
    :sswitch_2
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentSensitiveSIPInternal, contentType - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    sget-object v8, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    iput-object v8, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    .line 1113
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard_CS_ON:Z

    sput-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    .line 1115
    :cond_8
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 1116
    .local v5, sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    if-nez v7, :cond_9

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_9

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_9

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    const/16 v8, 0x18

    if-eq v7, v8, :cond_9

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    const/16 v8, 0xe

    if-eq v7, v8, :cond_9

    .line 1126
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    iput v8, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 1129
    :cond_9
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 1142
    .restart local v4       #s:I
    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 1143
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 1144
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    if-nez v7, :cond_a

    .line 1145
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iput v1, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 1143
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1151
    .end local v1           #i:I
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v4, :cond_2

    .line 1152
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    if-nez v7, :cond_c

    .line 1153
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iput v1, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 1151
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1167
    .end local v1           #i:I
    .end local v4           #s:I
    .end local v5           #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :sswitch_3
    const-string v7, "SIPSwitcher"

    const-string v8, "getContentSensitiveSIPInternal, unknown "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mKBViewNullTokenException:Z

    if-eq v7, v9, :cond_d

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v7, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v7, :cond_d

    .line 1171
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    sget-object v8, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_UNKONWN:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    iput-object v8, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    .line 1172
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v7, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    iput v8, v7, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    goto/16 :goto_0

    .line 1174
    :cond_d
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-virtual {v7}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->clearStatus()V

    goto/16 :goto_0

    .line 1064
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_0
        0x15 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getZHSIPShift(I)I
    .locals 4
    .parameter "i"

    .prologue
    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, ret:I
    packed-switch p0, :pswitch_data_0

    .line 1221
    :pswitch_0
    const-string v1, "SIPSwitcher"

    const-string v2, "can\'t find zh_sip_shift"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const/4 v0, 0x2

    .line 1226
    :goto_0
    const-string v1, "SIPSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIPShift() i - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v0

    .line 1202
    :pswitch_1
    const/4 v0, 0x2

    .line 1203
    goto :goto_0

    .line 1206
    :pswitch_2
    const/4 v0, 0x4

    .line 1207
    goto :goto_0

    .line 1210
    :pswitch_3
    const/16 v0, 0x8

    .line 1211
    goto :goto_0

    .line 1214
    :pswitch_4
    const/16 v0, 0x10

    .line 1215
    goto :goto_0

    .line 1218
    :pswitch_5
    const/16 v0, 0x20

    .line 1219
    goto :goto_0

    .line 1199
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getZHSIPShift(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, ret:I
    const-string v1, "Handwriting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    add-int/lit8 v0, v0, 0x2

    .line 1244
    :cond_0
    :goto_0
    return v0

    .line 1235
    :cond_1
    const-string v1, "ZuhYin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1236
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1237
    :cond_2
    const-string v1, "CangJie"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1238
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 1239
    :cond_3
    const-string v1, "PinYin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1240
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 1241
    :cond_4
    const-string v1, "Stroke"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    add-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method private handleSwitchMenuClick(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 940
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    .line 942
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-eq v0, v1, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->clearStatus()V

    .line 945
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->hideSwitchMenuInner()V

    .line 946
    return-void
.end method

.method private hideSwitchMenuInner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 949
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 951
    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 954
    :cond_0
    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 955
    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mItems:[Ljava/lang/CharSequence;

    .line 956
    return-void
.end method

.method private initMapping()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 555
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 556
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, country:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EN"

    aput-object v4, v2, v3

    .line 559
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const-string v3, "\u5beb"

    aput-object v3, v2, v5

    .line 560
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "\u6ce8"

    aput-object v4, v2, v3

    .line 561
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "\u62fc"

    aput-object v4, v2, v3

    .line 563
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const-string v3, "\u5199"

    aput-object v3, v2, v5

    .line 565
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const-string v3, "\u4ed3"

    aput-object v3, v2, v6

    .line 566
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const-string v3, "\u7b14"

    aput-object v3, v2, v7

    .line 572
    :goto_0
    return-void

    .line 568
    :cond_0
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const-string v3, "\u5beb"

    aput-object v3, v2, v5

    .line 569
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const-string v3, "\u5009"

    aput-object v3, v2, v6

    .line 570
    sget-object v2, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const-string v3, "\u7b46"

    aput-object v3, v2, v7

    goto :goto_0
.end method

.method private initSettings()V
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 319
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0900e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKey:Ljava/lang/String;

    .line 320
    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKey:Ljava/lang/String;

    .line 321
    const v1, 0x7f0900e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKeyDef:Ljava/lang/String;

    .line 322
    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKeyDef:Ljava/lang/String;

    .line 324
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->readSetting()V

    .line 325
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->initMapping()V

    .line 326
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->initSwitchCircle()V

    .line 327
    return-void
.end method

.method private initSwitchCircle()V
    .locals 2

    .prologue
    .line 330
    const-string v0, "SIPSwitcher"

    const-string v1, "initSwitchCircle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    .line 334
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->createSwitchCircle()V

    .line 336
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->DBGLOG()V

    .line 337
    return-void
.end method

.method public static isLatinSIP(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)Z
    .locals 7
    .parameter "sp"
    .parameter "res"
    .parameter "defValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1428
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v3, p2

    .line 1441
    :cond_1
    :goto_0
    return v3

    .line 1431
    :cond_2
    const v2, 0x7f0900e5

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1432
    .local v1, sipSwitchKeyDef:Ljava/lang/String;
    if-eqz p2, :cond_3

    move v2, v3

    :goto_1
    shl-int v2, v4, v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1436
    .local v0, lastSIPSelect:I
    const-string v2, "SIPSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isLatinSIP] lastSIPSelect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    if-ne v0, v4, :cond_1

    move v3, v4

    .line 1439
    goto :goto_0

    .line 1432
    .end local v0           #lastSIPSelect:I
    :cond_3
    const/4 v2, 0x6

    goto :goto_1
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 960
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    .line 962
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 963
    .local v0, I:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcime"

    const-string v2, "com.htc.android.htcime.settings.KeyboardSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 965
    const-string v1, "fromMenu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 971
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 972
    return-void
.end method

.method public static listItemCheck(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v12, -0x1

    .line 1274
    if-nez p0, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    invoke-static {p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1277
    .local v10, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1278
    .local v7, r:Landroid/content/res/Resources;
    if-eqz v10, :cond_0

    if-eqz v7, :cond_0

    .line 1281
    const v11, 0x7f0900e3

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1282
    .local v4, mSIPSwitchKey:Ljava/lang/String;
    const v11, 0x7f0900e4

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, mEIMELangKey:Ljava/lang/String;
    const v11, 0x7f0900e5

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1284
    .local v5, mSIPSwitchKeyDef:Ljava/lang/String;
    const v11, 0x7f0900e6

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1286
    .local v3, mEIMELangKeyDef:Ljava/lang/String;
    invoke-interface {v10, v4, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1287
    .local v8, sip_select:I
    invoke-interface {v10, v2, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1288
    .local v0, eime_select:I
    invoke-interface {v10, v5, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1289
    .local v9, sip_select_def:I
    invoke-interface {v10, v3, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1292
    .local v1, eime_select_def:I
    const-string v11, "SIPSwitcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update_checked_items(), sip_select - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    const-string v11, "SIPSwitcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update_checked_items(), eime_select - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v11, "SIPSwitcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update_checked_items(), sip_select_def - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const-string v11, "SIPSwitcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update_checked_items(), eime_select_def - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    const/4 v6, 0x0

    .line 1299
    .local v6, no_latin_checked:Z
    if-eqz v8, :cond_2

    const v11, -0x1020041

    and-int/2addr v11, v0

    if-nez v11, :cond_3

    .line 1300
    :cond_2
    const/4 v6, 0x1

    .line 1304
    :cond_3
    if-eqz v6, :cond_0

    .line 1305
    or-int/lit8 v8, v8, 0x1

    .line 1306
    or-int/lit8 v0, v0, 0x1

    .line 1307
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static localeChangeUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "context"
    .parameter "locale"
    .parameter "country"

    .prologue
    .line 1315
    if-nez p0, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1318
    .local v14, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1319
    .local v10, r:Landroid/content/res/Resources;
    if-eqz v14, :cond_0

    if-eqz v10, :cond_0

    .line 1322
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/CustomizeUtil;->execBootNeedTask(Landroid/content/Context;)V

    .line 1324
    const/4 v9, 0x0

    .line 1325
    .local v9, map:Ljava/lang/String;
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #map:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1327
    .restart local v9       #map:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 1328
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcherData;->LocaleMap:Ljava/util/HashMap;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ";*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #map:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1332
    .restart local v9       #map:Ljava/lang/String;
    :cond_2
    const-string v16, "SIPSwitcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "locale - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " country - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const-string v16, "SIPSwitcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "map - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-string v16, "CN"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1352
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x1

    const-string v18, "\u5199"

    aput-object v18, v16, v17

    .line 1353
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x2

    const-string v18, "\u6ce8"

    aput-object v18, v16, v17

    .line 1354
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x4

    const-string v18, "\u62fc"

    aput-object v18, v16, v17

    .line 1355
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x3

    const-string v18, "\u4ed3"

    aput-object v18, v16, v17

    .line 1356
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x5

    const-string v18, "\u7b14"

    aput-object v18, v16, v17

    .line 1366
    :goto_1
    if-eqz v9, :cond_0

    .line 1367
    const v16, 0x7f0900e3

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1368
    .local v7, mSIPSwitchKey:Ljava/lang/String;
    const v16, 0x7f0900e4

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1369
    .local v5, mEIMELangKey:Ljava/lang/String;
    const v16, 0x7f0900e5

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1370
    .local v8, mSIPSwitchKeyDef:Ljava/lang/String;
    const v16, 0x7f0900e6

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1371
    .local v6, mEIMELangKeyDef:Ljava/lang/String;
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-interface {v14, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1372
    .local v12, sip_select:I
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-interface {v14, v5, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1373
    .local v2, eime_select:I
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-interface {v14, v8, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1374
    .local v13, sip_select_def:I
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-interface {v14, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1377
    .local v3, eime_select_def:I
    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1380
    .local v15, t:[Ljava/lang/String;
    const-string v16, "SIPSwitcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "t[0] - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v15, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " t[1] - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v18, v15, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/16 v16, 0x0

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .local v11, s:I
    const/16 v16, 0x1

    aget-object v16, v15, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1386
    .local v4, l:I
    const/16 v16, 0x1

    shl-int v13, v16, v11

    .line 1387
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v4, v0, :cond_5

    const/4 v3, 0x0

    .line 1391
    :goto_2
    if-nez v11, :cond_7

    .line 1393
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/android/htcime/util/CustomizeUtil;->isEIMELangEnable(Landroid/content/Context;I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1394
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    const/4 v2, 0x0

    .line 1395
    :cond_3
    const/16 v16, 0x1

    shl-int v16, v16, v4

    or-int v2, v2, v16

    .line 1396
    const/16 v16, 0x1

    shl-int v3, v16, v4

    .line 1411
    :goto_3
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1418
    invoke-static/range {p0 .. p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->listItemCheck(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1359
    .end local v2           #eime_select:I
    .end local v3           #eime_select_def:I
    .end local v4           #l:I
    .end local v5           #mEIMELangKey:Ljava/lang/String;
    .end local v6           #mEIMELangKeyDef:Ljava/lang/String;
    .end local v7           #mSIPSwitchKey:Ljava/lang/String;
    .end local v8           #mSIPSwitchKeyDef:Ljava/lang/String;
    .end local v11           #s:I
    .end local v12           #sip_select:I
    .end local v13           #sip_select_def:I
    .end local v15           #t:[Ljava/lang/String;
    :cond_4
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x1

    const-string v18, "\u5beb"

    aput-object v18, v16, v17

    .line 1360
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x2

    const-string v18, "\u6ce8"

    aput-object v18, v16, v17

    .line 1361
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x4

    const-string v18, "\u62fc"

    aput-object v18, v16, v17

    .line 1362
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x3

    const-string v18, "\u5009"

    aput-object v18, v16, v17

    .line 1363
    sget-object v16, Lcom/htc/android/htcime/util/SIPSwitcher;->SIP_STRINGS:[Ljava/lang/String;

    const/16 v17, 0x5

    const-string v18, "\u7b46"

    aput-object v18, v16, v17

    goto/16 :goto_1

    .line 1387
    .restart local v2       #eime_select:I
    .restart local v3       #eime_select_def:I
    .restart local v4       #l:I
    .restart local v5       #mEIMELangKey:Ljava/lang/String;
    .restart local v6       #mEIMELangKeyDef:Ljava/lang/String;
    .restart local v7       #mSIPSwitchKey:Ljava/lang/String;
    .restart local v8       #mSIPSwitchKeyDef:Ljava/lang/String;
    .restart local v11       #s:I
    .restart local v12       #sip_select:I
    .restart local v13       #sip_select_def:I
    .restart local v15       #t:[Ljava/lang/String;
    :cond_5
    const/16 v16, 0x1

    shl-int v3, v16, v4

    goto :goto_2

    .line 1398
    :cond_6
    sget v3, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    goto :goto_3

    .line 1401
    :cond_7
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/htc/android/htcime/util/CustomizeUtil;->isSIPEnable(Landroid/content/Context;I)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1402
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_8

    const/4 v12, 0x0

    .line 1403
    :cond_8
    const/16 v16, 0x1

    shl-int v16, v16, v11

    or-int v12, v12, v16

    .line 1404
    const/16 v16, 0x1

    shl-int v13, v16, v11

    goto :goto_3

    .line 1407
    :cond_9
    sget v13, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    goto :goto_3
.end method

.method private readSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 415
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v2, :cond_1

    .line 416
    const-string v2, "SIPSwitcher"

    const-string v3, "null mHTCIMMService."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 421
    .local v1, sp:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 424
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 425
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    .line 426
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKey:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    .line 428
    const v2, 0x7f0900d8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    .line 431
    const-string v2, "SIPSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSetting(), mEIMELangSelect - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v2, "SIPSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSetting(), mSIPSelect - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v2, "SIPSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSetting(), mSIPType - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    if-ne v2, v5, :cond_2

    .line 437
    iput v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    .line 438
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKey:Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 440
    :cond_2
    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    if-ne v2, v5, :cond_3

    .line 441
    iput v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    .line 443
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKey:Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKeyDef:Ljava/lang/String;

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    .line 448
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKeyDef:Ljava/lang/String;

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    .line 450
    const-string v2, "SIPSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSIPSelectDef - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v2, "SIPSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEIMELangSelectDef - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showSwitchMenu()V
    .locals 14

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->isShowingSwitchMenu()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 937
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 843
    .local v7, s:I
    if-gtz v7, :cond_1

    .line 844
    const-string v11, "SIPSwitcher"

    const-string v12, "show Switch Menu - no item in the list."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_1
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v11}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 850
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070009

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, defaultLocaleString:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07000b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, defaultLocaleVaule:[Ljava/lang/String;
    sget-boolean v11, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v11, :cond_3

    sget-object v11, Lcom/htc/android/htcime/HTCIMMData;->mLocaleLanguageNow:Ljava/lang/String;

    const-string v12, "zh"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 855
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v11, v3

    if-ge v5, v11, :cond_3

    .line 856
    aget-object v11, v3, v5

    const-string v12, "English"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 857
    const-string v11, "\u82f1\u6587"

    aput-object v11, v3, v5

    .line 855
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 862
    .end local v5           #i:I
    :cond_3
    new-array v11, v7, [Ljava/lang/CharSequence;

    iput-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mItems:[Ljava/lang/CharSequence;

    .line 863
    const/4 v1, 0x0

    .line 864
    .local v1, checked:I
    const/4 v0, 0x0

    .line 866
    .local v0, c:I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07002c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 868
    .local v10, zh_type:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    if-ge v5, v7, :cond_9

    .line 869
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 870
    .local v8, sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v11

    if-nez v11, :cond_5

    .line 871
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    array-length v11, v4

    if-ge v6, v11, :cond_6

    .line 872
    sget-object v11, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v12

    aget v11, v11, v12

    aget-object v12, v4, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 873
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mItems:[Ljava/lang/CharSequence;

    aget-object v12, v3, v6

    aput-object v12, v11, v0

    .line 874
    add-int/lit8 v0, v0, 0x1

    .line 871
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 879
    .end local v6           #j:I
    :cond_5
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mItems:[Ljava/lang/CharSequence;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    aget-object v12, v10, v12

    aput-object v12, v11, v0

    .line 880
    add-int/lit8 v0, v0, 0x1

    .line 884
    :cond_6
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v11, v11, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v12, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-eq v11, v12, :cond_8

    .line 885
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v11, v11, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    if-ne v5, v11, :cond_7

    .line 886
    move v1, v5

    .line 868
    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 889
    :cond_8
    iget v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    if-ne v5, v11, :cond_7

    .line 890
    move v1, v5

    goto :goto_4

    .line 895
    .end local v8           #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_9
    new-instance v11, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v13, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v13}, Lcom/htc/android/htcime/HTCIMEService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/android/htcime/util/SIPUtils;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x20c0163

    new-instance v13, Lcom/htc/android/htcime/util/SIPSwitcher$2;

    invoke-direct {v13, p0}, Lcom/htc/android/htcime/util/SIPSwitcher$2;-><init>(Lcom/htc/android/htcime/util/SIPSwitcher;)V

    invoke-virtual {v11, v12, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09002e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/htc/android/htcime/util/SIPSwitcher$1;

    invoke-direct {v12, p0}, Lcom/htc/android/htcime/util/SIPSwitcher$1;-><init>(Lcom/htc/android/htcime/util/SIPSwitcher;)V

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 908
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mItems:[Ljava/lang/CharSequence;

    new-instance v13, Lcom/htc/android/htcime/util/SIPSwitcher$3;

    invoke-direct {v13, p0}, Lcom/htc/android/htcime/util/SIPSwitcher$3;-><init>(Lcom/htc/android/htcime/util/SIPSwitcher;)V

    invoke-virtual {v11, v12, v1, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 916
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mDialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 917
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 918
    .local v9, w:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v12, v12, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMMView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    iput-object v12, v11, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 919
    const/16 v11, 0x3eb

    invoke-virtual {v9, v11}, Landroid/view/Window;->setType(I)V

    .line 920
    const/high16 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    .line 935
    iget-object v11, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private swicthSIP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v0, v1, :cond_0

    .line 75
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    .line 78
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->clearStatus()V

    goto :goto_0
.end method

.method private swicthSIP(IZ)V
    .locals 12
    .parameter "switch_position"
    .parameter "isSwitchKeyboardType"

    .prologue
    const v8, 0x7f0900d7

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 179
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "swicthSIP(specific) - switch_position - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "swicthSIP(specific) - mSwitchSIPList.size() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "swicthSIP(specific) - mSwitchPosition - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v5, :cond_0

    .line 184
    const-string v5, "SIPSwitcher"

    const-string v6, "null service when switch"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 188
    :cond_0
    if-ltz p1, :cond_1

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 189
    :cond_1
    const-string v5, "SIPSwitcher"

    const-string v6, "switch pos out of bound"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 194
    .local v1, old_sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    iput p1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    .line 195
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 198
    .local v0, new_sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOldSP - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v5, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNewSP - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 203
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 207
    .local v2, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v5, v5, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v5, v6, :cond_8

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_8

    .line 209
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 210
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v5, v11, :cond_4

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v5, v9, :cond_4

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v5, :cond_6

    .line 215
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    aget v5, v5, v6

    sput v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 217
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 218
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 222
    :cond_5
    if-eqz p2, :cond_7

    .line 223
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPID()I

    move-result v3

    .line 224
    .local v3, sipid:I
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v3, v10}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 226
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iput v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 232
    .end local v3           #sipid:I
    :goto_1
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->refreshIMMView()V

    .line 308
    :cond_6
    :goto_2
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    shl-int v5, v9, v5

    sput v5, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    .line 309
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    shl-int v5, v9, v5

    sput v5, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    .line 310
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKeyDef:Ljava/lang/String;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    shl-int v7, v9, v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKeyDef:Ljava/lang/String;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    shl-int v7, v9, v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 229
    :cond_7
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    goto :goto_1

    .line 236
    :cond_8
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    if-nez v5, :cond_d

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    if-nez v5, :cond_d

    .line 237
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    if-ne v5, v6, :cond_9

    if-eqz p2, :cond_6

    .line 238
    :cond_9
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    .line 239
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v5, v11, :cond_a

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v5, v9, :cond_a

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v5, :cond_6

    .line 244
    :cond_a
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    aget v5, v5, v6

    sput v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 246
    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    .line 247
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    :cond_b
    if-eqz p2, :cond_c

    .line 252
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPID()I

    move-result v3

    .line 253
    .restart local v3       #sipid:I
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v3, v10}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 255
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iput v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 261
    .end local v3           #sipid:I
    :goto_3
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMMView;->refreshIMMView()V

    goto/16 :goto_2

    .line 258
    :cond_c
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v5}, Lcom/htc/android/htcime/Intf/IHTCSIP;->startInput()V

    goto :goto_3

    .line 265
    :cond_d
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    if-nez v5, :cond_e

    .line 266
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    aget v5, v5, v6

    sput v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 267
    if-eqz v4, :cond_e

    if-eqz v2, :cond_e

    .line 268
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 276
    :cond_e
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v9, v5, :cond_10

    .line 277
    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    shl-int v6, v9, v6

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    add-int/lit8 v7, v7, 0x10

    shl-int v7, v9, v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 281
    .restart local v3       #sipid:I
    :goto_4
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v6

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    shl-int v7, v9, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    .line 283
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v6

    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    shl-int v7, v9, v7

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    add-int/lit8 v8, v8, 0x10

    shl-int v8, v9, v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 287
    const/16 v5, 0x11

    if-ne v5, v3, :cond_11

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v9, v5, :cond_11

    .line 290
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v6

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrPortHWRSID:I

    iput v6, v5, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 291
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrPortHWRSID:I

    .line 303
    :cond_f
    :goto_5
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v3, v10}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 304
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIPForHWKB(I)V

    goto/16 :goto_2

    .line 279
    .end local v3           #sipid:I
    :cond_10
    sget-object v5, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    shl-int v6, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #sipid:I
    goto/16 :goto_4

    .line 292
    :cond_11
    const/16 v5, 0x9

    if-ne v5, v3, :cond_f

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v11, v5, :cond_f

    .line 295
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_LandHalfScreenSupport:Z

    if-eqz v5, :cond_12

    .line 296
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iget v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrLandHWRSID:I

    .line 300
    :goto_6
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v5

    iput v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    goto :goto_5

    .line 298
    :cond_12
    const/4 v3, 0x3

    goto :goto_6
.end method

.method private switchSIP(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)V
    .locals 5
    .parameter "dir"

    .prologue
    .line 87
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 88
    .local v1, sipsize:I
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v3, v3, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v4, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v2, v3, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    .line 89
    .local v2, target_pos:I
    :goto_0
    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    if-ne p1, v3, :cond_2

    add-int v3, v2, v1

    add-int/lit8 v0, v3, 0x1

    .line 90
    .local v0, pos:I
    :goto_1
    rem-int v3, v0, v1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    .line 91
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v3, v3, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v4, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v3, v4, :cond_0

    .line 92
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->clearStatus()V

    .line 94
    :cond_0
    return-void

    .line 88
    .end local v0           #pos:I
    .end local v2           #target_pos:I
    :cond_1
    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    goto :goto_0

    .line 89
    .restart local v2       #target_pos:I
    :cond_2
    add-int v3, v2, v1

    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method private writePressLanguageKeyLog()V
    .locals 4

    .prologue
    .line 1484
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_UserProfilingLog:Z

    if-eqz v1, :cond_0

    .line 1485
    new-instance v0, Lcom/htc/android/htcime/util/ULogUtil;

    invoke-direct {v0}, Lcom/htc/android/htcime/util/ULogUtil;-><init>()V

    .line 1486
    .local v0, ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    const-string v1, "lang_key"

    const-string v2, "language_key"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/util/ULogUtil;->writeSinglePairULogData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    .end local v0           #ulogUtil:Lcom/htc/android/htcime/util/ULogUtil;
    :cond_0
    return-void
.end method


# virtual methods
.method public DBGLOG()V
    .locals 5

    .prologue
    .line 655
    const-string v1, "SIPSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchSIPList.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v1, "SIPSwitcher"

    const-string v2, "Content of SIP list -------------------- "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 658
    const-string v2, "SIPSwitcher"

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

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_0
    const-string v1, "SIPSwitcher"

    const-string v2, "Content of SIP list end--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v1, "SIPSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchPosition - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v1, "SIPSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwitchSIPList.get(mSwitchPosition) - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method

.method public doLanguageOption()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 783
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 792
    .local v0, c:I
    if-ne v0, v6, :cond_1

    .line 794
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP()V

    .line 816
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->writePressLanguageKeyLog()V

    .line 817
    return-void

    .line 795
    :cond_1
    if-le v0, v6, :cond_0

    .line 798
    const/4 v3, 0x0

    .local v3, w:I
    const/4 v4, 0x0

    .line 799
    .local v4, zh:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 800
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 801
    .local v2, sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v5

    if-nez v5, :cond_2

    .line 802
    add-int/lit8 v3, v3, 0x1

    .line 799
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 804
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 807
    .end local v2           #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_3
    if-gt v4, v6, :cond_4

    const/4 v5, 0x1

    if-gt v3, v5, :cond_4

    .line 808
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP()V

    goto :goto_0

    .line 810
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->showSwitchMenu()V

    goto :goto_0
.end method

.method public doNextSIP()V
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->CURRENT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->getLanguageString(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)Ljava/lang/String;

    .line 709
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->getLanguageString(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)Ljava/lang/String;

    .line 710
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->PREV:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->getLanguageString(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)Ljava/lang/String;

    .line 711
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->switchSIP(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)V

    .line 712
    return-void
.end method

.method public doPreSIP()V
    .locals 1

    .prologue
    .line 715
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->PREV:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/util/SIPSwitcher;->switchSIP(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)V

    .line 716
    return-void
.end method

.method public doSwapCurIMEng()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 720
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v5, v5, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v6, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const/4 v3, 0x0

    .line 722
    .local v3, switchPos:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->findLatinIMIdx()I

    move-result v2

    .line 723
    .local v2, latinIMIdx:I
    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    if-ne v5, v2, :cond_2

    move v0, v1

    .line 725
    .local v0, currentlyEngIM:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 726
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mSwappedIMPos:I

    if-eq v5, v7, :cond_3

    .line 727
    .local v1, hasSwapIM:Z
    :goto_2
    if-eqz v1, :cond_4

    .line 729
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v5, Lcom/htc/android/htcime/HTCIMMData;->mSwappedIMPos:I

    .line 730
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iput v7, v5, Lcom/htc/android/htcime/HTCIMMData;->mSwappedIMPos:I

    .line 741
    .end local v1           #hasSwapIM:Z
    :goto_3
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int v5, v3, v5

    invoke-direct {p0, v5, v4}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    goto :goto_0

    .end local v0           #currentlyEngIM:Z
    :cond_2
    move v0, v4

    .line 723
    goto :goto_1

    .restart local v0       #currentlyEngIM:Z
    :cond_3
    move v1, v4

    .line 726
    goto :goto_2

    .line 733
    .restart local v1       #hasSwapIM:Z
    :cond_4
    const-string v4, "SIPSwitcher"

    const-string v5, "doSwapCurIMEng do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    .end local v1           #hasSwapIM:Z
    :cond_5
    move v3, v2

    .line 739
    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    iput v6, v5, Lcom/htc/android/htcime/HTCIMMData;->mSwappedIMPos:I

    goto :goto_3
.end method

.method public findLatinIMIdx()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 746
    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mLatinIMIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mLatinIMIdx:I

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 747
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mLatinIMIdx:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v2

    if-nez v2, :cond_0

    .line 748
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mLatinIMIdx:I

    .line 760
    :goto_0
    return v0

    .line 751
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 752
    .local v1, s:I
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 753
    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v2

    if-nez v2, :cond_2

    .line 754
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mLatinIMIdx:I

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #s:I
    :cond_1
    move v1, v3

    .line 751
    goto :goto_1

    .line 752
    .restart local v0       #i:I
    .restart local v1       #s:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 759
    :cond_3
    iput v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mLatinIMIdx:I

    move v0, v3

    .line 760
    goto :goto_0
.end method

.method public forceUpdateZHSIP(I)V
    .locals 11
    .parameter "zh_sip"

    .prologue
    const/4 v10, 0x1

    .line 514
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    if-nez v7, :cond_1

    .line 515
    const-string v7, "SIPSwitcher"

    const-string v8, "null mHTCIMMService."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 519
    .local v5, sp:Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v7}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 520
    .local v2, r:Landroid/content/res/Resources;
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 523
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 526
    .local v4, sip_select:I
    and-int/lit8 v4, v4, 0x1

    .line 527
    invoke-static {p1}, Lcom/htc/android/htcime/util/SIPSwitcher;->getZHSIPShift(I)I

    move-result v6

    .line 528
    .local v6, zh_sip_id:I
    add-int/2addr v4, v6

    .line 529
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceUpdateZHSIP sip_select - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " zh_sip_id - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 533
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->updateCircle()V

    .line 536
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 537
    .local v3, s:I
    sput v6, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    .line 538
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 539
    iget-object v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v7}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v7

    shl-int v7, v10, v7

    sget v8, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    if-ne v7, v8, :cond_3

    .line 540
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    .line 546
    :cond_2
    const v7, 0x7f0902a4

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, mSIPTypeKey:Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 549
    const-string v7, "SIPSwitcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSIPSelectDef - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSwitchPosition - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    goto/16 :goto_0

    .line 538
    .end local v1           #mSIPTypeKey:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getContentSensitiveSIP(III)I
    .locals 4
    .parameter "contentType"
    .parameter "sip_id"
    .parameter "orientation"

    .prologue
    .line 1002
    const-string v1, "SIPSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sip_id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orientation - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    move v0, p2

    .line 1004
    .local v0, ret:I
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 1005
    sparse-switch p2, :sswitch_data_0

    .line 1015
    invoke-direct {p0, p1, p3}, Lcom/htc/android/htcime/util/SIPSwitcher;->getContentSensitiveSIPInternal(II)I

    move-result v0

    .line 1017
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v1, v1, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v1, v1, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    :goto_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 1044
    :cond_0
    :goto_1
    :sswitch_0
    const-string v1, "SIPSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentSensitiveSIP, ret - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1046
    move v0, p2

    .line 1047
    :cond_1
    return v0

    .line 1008
    :sswitch_1
    const/4 p2, 0x1

    .line 1009
    goto :goto_1

    .line 1017
    :cond_2
    iget v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    goto :goto_0

    .line 1022
    :cond_3
    sparse-switch p2, :sswitch_data_1

    .line 1037
    invoke-direct {p0, p1, p3}, Lcom/htc/android/htcime/util/SIPSwitcher;->getContentSensitiveSIPInternal(II)I

    move-result v0

    .line 1039
    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v1, v1, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v1, v1, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    :goto_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    goto :goto_1

    .line 1025
    :sswitch_2
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsLargeTablet:Z

    if-eqz v1, :cond_0

    .line 1026
    const/4 p2, 0x3

    goto :goto_1

    .line 1039
    :cond_4
    iget v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    goto :goto_2

    .line 1005
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 1022
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCurSIPDisplay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    .line 580
    :cond_0
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcherData;->LATIN_LANG_STRING:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 594
    :goto_0
    return-object v0

    .line 587
    :cond_1
    const-string v0, "SIPSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurSIPDisplay --- CSS.mPosition - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v2, v2, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v0, "SIPSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurSIPDisplay --- CSS.mStatus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v2, v2, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v0, "SIPSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurSIPDisplay --- mSwitchPosition - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v0, v0, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v0, v1, :cond_2

    .line 592
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->display:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$200(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v1, v1, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->display:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$200(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurSIPID()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 603
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v3, v3, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v4, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v3, v4, :cond_1

    .line 604
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v1

    .line 622
    .local v1, sip:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    if-ne v3, v7, :cond_2

    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP_LAND:Ljava/util/HashMap;

    shl-int v4, v6, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 627
    .local v2, sipid:I
    const/16 v3, 0x11

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v6, v3, :cond_3

    .line 630
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrPortHWRSID:I

    iput v4, v3, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    .line 631
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget v2, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrPortHWRSID:I

    .line 644
    :cond_0
    :goto_2
    return v2

    .line 608
    .end local v1           #sip:I
    .end local v2           #sipid:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v4, v4, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1       #sip:I
    goto :goto_0

    .line 609
    .end local v1           #sip:I
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SIPSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch position error when CS - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v5, v5, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->clearStatus()V

    .line 612
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v1

    .restart local v1       #sip:I
    goto/16 :goto_0

    .line 622
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcherData;->IME_INPUTMETHOD_MAP:Ljava/util/HashMap;

    shl-int v4, v6, v1

    iget v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    add-int/lit8 v5, v5, 0x10

    shl-int v5, v6, v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto/16 :goto_1

    .line 632
    .restart local v2       #sipid:I
    :cond_3
    const/16 v3, 0x9

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v7, v3, :cond_0

    .line 635
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_LandHalfScreenSupport:Z

    if-eqz v3, :cond_4

    .line 636
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iget v2, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrLandHWRSID:I

    .line 640
    :goto_3
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v3

    iput v2, v3, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    goto :goto_2

    .line 638
    :cond_4
    const/4 v2, 0x3

    goto :goto_3
.end method

.method public getLanguageString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1447
    iget-object v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v10}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1448
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, defaultLocaleString:[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07000b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1451
    .local v2, defaultLocaleVaule:[Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 1452
    .local v7, s:I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07002c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 1453
    .local v9, zh_type:[Ljava/lang/String;
    const-string v5, ""

    .line 1455
    .local v5, name:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_5

    .line 1456
    iget-object v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 1457
    .local v8, sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v10

    if-nez v10, :cond_1

    .line 1458
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v10, v2

    if-ge v4, v10, :cond_2

    .line 1459
    sget-object v10, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v11

    aget v10, v10, v11

    aget-object v11, v2, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 1460
    aget-object v5, v1, v4

    .line 1458
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1465
    .end local v4           #j:I
    :cond_1
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v5, v9, v10

    .line 1469
    :cond_2
    iget-object v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v10, v10, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v11, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_OFF:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-eq v10, v11, :cond_3

    .line 1470
    iget-object v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v10, v10, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    if-ne v3, v10, :cond_4

    move-object v6, v5

    .line 1479
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    .local v6, name:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 1474
    .end local v6           #name:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_3
    iget v10, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    if-ne v3, v10, :cond_4

    move-object v6, v5

    .line 1475
    .end local v5           #name:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    goto :goto_2

    .line 1455
    .end local v6           #name:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v8           #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_5
    move-object v6, v5

    .line 1479
    .end local v5           #name:Ljava/lang/String;
    .restart local v6       #name:Ljava/lang/String;
    goto :goto_2
.end method

.method public getLanguageString(Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;)Ljava/lang/String;
    .locals 7
    .parameter "p"

    .prologue
    .line 765
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 766
    .local v1, sip_size:I
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget-object v3, v3, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mStatus:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    sget-object v4, Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;->CS_ON:Lcom/htc/android/htcime/util/SIPSwitcher$CS_State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->CSS:Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;

    iget v2, v3, Lcom/htc/android/htcime/util/SIPSwitcher$ContentSensitiveStatus;->mPosition:I

    .line 767
    .local v2, target_pos:I
    :goto_0
    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    if-ne p1, v3, :cond_1

    add-int v3, v2, v1

    add-int/lit8 v0, v3, 0x1

    .line 769
    .local v0, pos:I
    :goto_1
    const-string v3, "SIPSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "direction - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v4, "SIPSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    rem-int v6, v0, v1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->display:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$200(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    rem-int v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->display:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$200(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 766
    .end local v0           #pos:I
    .end local v2           #target_pos:I
    :cond_0
    iget v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    goto :goto_0

    .line 767
    .restart local v2       #target_pos:I
    :cond_1
    sget-object v3, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->PREV:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    if-ne p1, v3, :cond_2

    add-int v3, v2, v1

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getSIPCount()I
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hideSwitchMenu()V
    .locals 0

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->hideSwitchMenuInner()V

    .line 824
    return-void
.end method

.method public isShowingSwitchMenu()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchingDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/4 v0, 0x1

    .line 830
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public swicthKeyboardType()V
    .locals 7

    .prologue
    const v6, 0x7f0900d8

    .line 99
    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, sp:Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 108
    .local v0, checked:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->unSwitchKeyboardType:Z

    if-eqz v4, :cond_1

    .line 109
    iget v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    .line 110
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->unSwitchKeyboardType:Z

    .line 113
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, types:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    iput v0, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    .line 124
    iget v4, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    iget-object v5, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    goto :goto_0

    .line 114
    .end local v3           #types:Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_1

    .line 115
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public switchSIP(Ljava/lang/String;)V
    .locals 14
    .parameter "KeyboardName"

    .prologue
    .line 129
    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 131
    .local v6, r:Landroid/content/res/Resources;
    const v12, 0x7f070009

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, defaultLocaleString:[Ljava/lang/String;
    const v12, 0x7f07000b

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, defaultLocaleVaule:[Ljava/lang/String;
    const v12, 0x7f0900e3

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, SIPSwitchKey:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v12}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/android/htcime/util/CustomizeUtil;->getIMESettingsData(Landroid/content/Context;)V

    .line 137
    sget v12, Lcom/htc/android/htcime/util/CustomizeUtil;->mZHSIP:I

    add-int/lit8 v9, v12, 0x1

    .line 139
    .local v9, supportSIPs:I
    const/4 v10, -0x1

    .line 140
    .local v10, switchPos:I
    const/4 v11, 0x0

    .line 141
    .local v11, zhPos:I
    const/4 v5, -0x1

    .line 143
    .local v5, latinPos:I
    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 144
    .local v7, s:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 145
    iget-object v12, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    .line 146
    .local v8, sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v12

    if-nez v12, :cond_1

    .line 147
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v12, v2

    if-ge v4, v12, :cond_5

    .line 148
    sget-object v12, Lcom/htc/android/htcime/util/SIPSwitcherData;->EIME_LANG_MAP:[I

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v13

    aget v12, v12, v13

    aget-object v13, v2, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 149
    add-int/lit8 v5, v5, 0x1

    .line 150
    aget-object v12, v1, v4

    invoke-virtual {v12, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 151
    move v10, v5

    .line 147
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    .end local v4           #j:I
    :cond_1
    if-ltz v10, :cond_4

    .line 168
    .end local v8           #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_2
    :goto_2
    if-ltz v10, :cond_3

    .line 169
    const/4 v12, 0x0

    invoke-direct {p0, v10, v12}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthSIP(IZ)V

    .line 172
    :cond_3
    return-void

    .line 158
    .restart local v8       #sp:Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 159
    sget-object v12, Lcom/htc/android/htcime/util/SmartRecoderUtil;->zh_type:[Ljava/lang/String;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->sip:I
    invoke-static {v8}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$000(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v12, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 160
    add-int v10, v5, v11

    .line 161
    goto :goto_2

    .line 144
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public updateCircle()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 460
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 461
    .local v5, sp:Landroid/content/SharedPreferences;
    if-nez v5, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mHTCIMMService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 464
    .local v4, r:Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKey:Ljava/lang/String;

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 465
    .local v3, newSIPSelect:I
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKey:Ljava/lang/String;

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 466
    .local v2, newLatinLangSelect:I
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSwitchKeyDef:Ljava/lang/String;

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 467
    .local v1, SIPSelectDef:I
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangKeyDef:Ljava/lang/String;

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 470
    .local v0, LatinLangSelectDef:I
    const v6, 0x7f0900d8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    .line 473
    const-string v6, "SIPSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCircle, mSIPType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v6, "SIPSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCircle, newSIPSelect - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v6, "SIPSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCircle, mSIPSelect - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v6, "SIPSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCircle, newLatinLangSelect - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v6, "SIPSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCircle, mData.mLanguage - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v7, "SIPSwitcher"

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    invoke-virtual {v6}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-ne v3, v9, :cond_2

    const/4 v3, 0x1

    .line 482
    :cond_2
    if-ne v2, v9, :cond_3

    const/4 v2, 0x1

    .line 483
    :cond_3
    if-ne v1, v9, :cond_4

    const/4 v1, 0x1

    .line 484
    :cond_4
    if-ne v0, v9, :cond_5

    const/4 v0, 0x1

    .line 487
    :cond_5
    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    if-ne v3, v6, :cond_6

    iget v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    if-ne v2, v6, :cond_6

    sget v6, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    if-ne v1, v6, :cond_6

    sget v6, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    if-ne v0, v6, :cond_6

    sget-boolean v6, Lcom/htc/android/htcime/util/SIPSwitcherData;->Language_Change:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 490
    :cond_6
    iput v3, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelect:I

    .line 491
    iput v2, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelect:I

    .line 492
    sput v1, Lcom/htc/android/htcime/util/SIPSwitcher;->mSIPSelectDef:I

    .line 493
    sput v0, Lcom/htc/android/htcime/util/SIPSwitcher;->mEIMELangSelectDef:I

    .line 494
    invoke-direct {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->createSwitchCircle()V

    .line 495
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/SIPSwitcher;->DBGLOG()V

    .line 496
    const/4 v6, 0x0

    sput-boolean v6, Lcom/htc/android/htcime/util/SIPSwitcherData;->Language_Change:Z

    goto/16 :goto_0

    .line 498
    :cond_7
    const-string v6, "SIPSwitcher"

    const-string v7, "...SKIP update switch circle..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    if-eq v7, v6, :cond_0

    .line 502
    const-string v6, "SIPSwitcher"

    const-string v7, "IME Service language not equal to switcher"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v7, "SIPSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mData.mLanguage - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    sget v8, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " mSwitchSIPList.lang"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v9, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchSIPList:Ljava/util/List;

    iget v7, p0, Lcom/htc/android/htcime/util/SIPSwitcher;->mSwitchPosition:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;

    #getter for: Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->lang:I
    invoke-static {v6}, Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;->access$100(Lcom/htc/android/htcime/util/SIPSwitcher$switchPair;)I

    move-result v6

    sput v6, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    goto/16 :goto_0
.end method
