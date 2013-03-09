.class Lcom/android/mms/util/CForwardPreference;
.super Lcom/htc/preference/HtcEditTextPreference;
.source "MsgForwardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/CForwardPreference$MSGFORAWRD;,
        Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    }
.end annotation


# static fields
.field public static PREF_KEY_EMAIL:Ljava/lang/String; = null

.field public static PREF_KEY_PHONE:Ljava/lang/String; = null

.field private static final SRC_TAGS:[Ljava/lang/String; = null

.field private static final VALUE_DISABLE:Ljava/lang/String; = "0"

.field private static final VALUE_ENABLE:Ljava/lang/String; = "1"

.field public static final VALUE_SEPARATOR:Ljava/lang/String; = ":"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_atyParent:Landroid/app/Activity;

.field public m_bEnable:Z

.field private m_ibtnContactPick:Landroid/widget/ImageButton;

.field private m_itContact:Landroid/content/Intent;

.field private m_keyListener:Landroid/text/method/BaseKeyListener;

.field private m_nIDResult:I

.field private m_nTimestamp:J

.field private m_nWhichBtnClicked:I

.field private m_strForward:Ljava/lang/String;

.field private m_strTypeCaption:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 902
    const-string v0, "pref_key_msg_forwarding_phone"

    sput-object v0, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_PHONE:Ljava/lang/String;

    .line 903
    const-string v0, "pref_key_msg_forwarding_email"

    sput-object v0, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_EMAIL:Ljava/lang/String;

    .line 955
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/CForwardPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/util/CForwardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 971
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 962
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 939
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/util/CForwardPreference;->m_nTimestamp:J

    .line 940
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    .line 941
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/CForwardPreference;->m_strTypeCaption:Ljava/lang/String;

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 943
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/mms/util/CForwardPreference;->m_nWhichBtnClicked:I

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/CForwardPreference;->m_keyListener:Landroid/text/method/BaseKeyListener;

    .line 964
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/android/mms/util/CForwardPreference;->setDialogLayoutResource(I)V

    .line 966
    iput-object p1, p0, Lcom/android/mms/util/CForwardPreference;->mContext:Landroid/content/Context;

    .line 967
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/CForwardPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/mms/util/CForwardPreference;->m_atyParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/CForwardPreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/mms/util/CForwardPreference;->m_itContact:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/util/CForwardPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 891
    iget v0, p0, Lcom/android/mms/util/CForwardPreference;->m_nIDResult:I

    return v0
.end method

.method public static getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z
    .locals 5
    .parameter "ctx"
    .parameter "valueOut"

    .prologue
    const/4 v3, 0x0

    .line 994
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return v3

    .line 998
    :cond_1
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 999
    .local v0, prefDefault:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1003
    const-string v2, ""

    .line 1004
    .local v2, strValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1005
    .local v1, strPrefKey:Ljava/lang/String;
    iget v3, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1006
    sget-object v1, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_PHONE:Ljava/lang/String;

    .line 1012
    :goto_1
    const-string v3, "0:"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1014
    invoke-static {v2, p1}, Lcom/android/mms/util/CForwardPreference;->parsePreferenceValue(Ljava/lang/String;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v3

    goto :goto_0

    .line 1009
    :cond_2
    sget-object v1, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_EMAIL:Ljava/lang/String;

    goto :goto_1
.end method

.method public static parsePreferenceValue(Ljava/lang/String;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z
    .locals 5
    .parameter "strValue"
    .parameter "valueOut"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 974
    if-nez p1, :cond_0

    .line 990
    :goto_0
    return v1

    .line 978
    :cond_0
    iput-boolean v1, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    .line 979
    const-string v3, ""

    iput-object v3, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    .line 981
    if-eqz p0, :cond_1

    .line 982
    const-string v3, ":"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, aryValues:[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v4, :cond_1

    .line 984
    aget-object v1, v0, v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    .line 985
    aget-object v1, v0, v2

    iput-object v1, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    .line 986
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    .end local v0           #aryValues:[Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 990
    goto :goto_0
.end method

.method private showForwardWarningDialog()V
    .locals 4

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 1329
    .local v1, edtText:Landroid/widget/EditText;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1330
    .local v0, dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0200d1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1331
    const v2, 0x7f0903be

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1332
    const v2, 0x7f0903bf

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1334
    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/util/CForwardPreference$4;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/util/CForwardPreference$4;-><init>(Lcom/android/mms/util/CForwardPreference;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1340
    new-instance v2, Lcom/android/mms/util/CForwardPreference$5;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/util/CForwardPreference$5;-><init>(Lcom/android/mms/util/CForwardPreference;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1346
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1347
    return-void
.end method

.method private showNofifyInvalidDialog(Ljava/lang/String;)V
    .locals 6
    .parameter "strInvalid"

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 1307
    .local v1, edtText:Landroid/widget/EditText;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1308
    .local v0, dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0200d1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1309
    const v2, 0x7f09011c

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1310
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090057

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1312
    const v2, 0x20c015f

    new-instance v3, Lcom/android/mms/util/CForwardPreference$2;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/util/CForwardPreference$2;-><init>(Lcom/android/mms/util/CForwardPreference;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1318
    new-instance v2, Lcom/android/mms/util/CForwardPreference$3;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/util/CForwardPreference$3;-><init>(Lcom/android/mms/util/CForwardPreference;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1324
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1325
    return-void
.end method

.method protected static updateToTelephonyProvider(Landroid/content/Context;)Z
    .locals 10
    .parameter "ctx"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1064
    if-nez p0, :cond_0

    .line 1095
    :goto_0
    return v5

    .line 1068
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1069
    .local v0, crTP:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1071
    .local v3, values:Landroid/content/ContentValues;
    new-instance v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v2}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 1072
    .local v2, phone:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    new-instance v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v1}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 1074
    .local v1, email:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    iput v4, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 1075
    const/4 v6, 0x2

    iput v6, v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 1077
    invoke-static {p0, v2}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v6, :cond_1

    .line 1078
    const-string v6, "forward_phone_number"

    iget-object v7, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :goto_1
    const-string v6, "forward_phone_time_stamp"

    iget-wide v7, v2, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1086
    invoke-static {p0, v1}, Lcom/android/mms/util/CForwardPreference;->getPreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v6, :cond_2

    .line 1087
    const-string v6, "forward_emial_address"

    iget-object v7, v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :goto_2
    const-string v6, "forward_email_time_stamp"

    iget-wide v7, v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1095
    sget-object v6, Lcom/android/mms/util/CForwardPreference$MSGFORAWRD;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    :goto_3
    move v5, v4

    goto :goto_0

    .line 1081
    :cond_1
    const-string v6, "forward_phone_number"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1090
    :cond_2
    const-string v6, "forward_emial_address"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v4, v5

    .line 1095
    goto :goto_3
.end method

.method public static writePreferenceValue(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z
    .locals 7
    .parameter "ctx"
    .parameter "valueIn"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1019
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return v3

    .line 1023
    :cond_1
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1024
    .local v0, prefDefault:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 1028
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->bEnable:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->strValue:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nTimestamp:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, strValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1031
    .local v1, strPrefKey:Ljava/lang/String;
    iget v3, p1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    if-ne v3, v4, :cond_3

    .line 1032
    sget-object v1, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_PHONE:Ljava/lang/String;

    .line 1038
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1039
    invoke-static {p0}, Lcom/android/mms/util/CForwardPreference;->updateToTelephonyProvider(Landroid/content/Context;)Z

    move v3, v4

    .line 1060
    goto :goto_0

    .line 1028
    .end local v1           #strPrefKey:Ljava/lang/String;
    .end local v2           #strValue:Ljava/lang/String;
    :cond_2
    const-string v3, "0"

    goto :goto_1

    .line 1035
    .restart local v1       #strPrefKey:Ljava/lang/String;
    .restart local v2       #strValue:Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_EMAIL:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public initDefault(Landroid/app/Activity;ILandroid/content/Intent;Ljava/lang/String;Z)V
    .locals 2
    .parameter "actParent"
    .parameter "nIDResult"
    .parameter "itContact"
    .parameter "strTypeCaption"
    .parameter "bPhoneNumOnly"

    .prologue
    const/4 v1, 0x0

    .line 1285
    iput-object p1, p0, Lcom/android/mms/util/CForwardPreference;->m_atyParent:Landroid/app/Activity;

    .line 1286
    iput p2, p0, Lcom/android/mms/util/CForwardPreference;->m_nIDResult:I

    .line 1287
    iput-object p3, p0, Lcom/android/mms/util/CForwardPreference;->m_itContact:Landroid/content/Intent;

    .line 1288
    iput-object p4, p0, Lcom/android/mms/util/CForwardPreference;->m_strTypeCaption:Ljava/lang/String;

    .line 1289
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mms/util/CForwardPreference;->m_keyListener:Landroid/text/method/BaseKeyListener;

    .line 1290
    return-void

    .line 1289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .parameter "dialogView"
    .parameter "editText"

    .prologue
    .line 1209
    const v1, 0x7f0e00cf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1212
    .local v0, container:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1213
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1216
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1167
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 1168
    const v2, 0x1010001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1169
    .local v1, txtType:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_strTypeCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 1175
    .local v0, edtText:Landroid/widget/EditText;
    const v2, 0x7f0e00d0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_ibtnContactPick:Landroid/widget/ImageButton;

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1182
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_keyListener:Landroid/text/method/BaseKeyListener;

    if-eqz v2, :cond_2

    .line 1183
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_keyListener:Landroid/text/method/BaseKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1192
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_ibtnContactPick:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 1193
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_ibtnContactPick:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/mms/util/CForwardPreference$1;

    invoke-direct {v3, p0}, Lcom/android/mms/util/CForwardPreference$1;-><init>(Lcom/android/mms/util/CForwardPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    :cond_1
    return-void

    .line 1186
    :cond_2
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    .line 1140
    invoke-super {p0, p1}, Lcom/htc/preference/HtcEditTextPreference;->onBindView(Landroid/view/View;)V

    .line 1143
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1144
    .local v2, txtSummary:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1148
    iget-boolean v3, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    if-eqz v3, :cond_1

    .line 1149
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1150
    .local v1, csTemp:Ljava/lang/CharSequence;
    sget-object v3, Lcom/android/mms/util/CForwardPreference;->SRC_TAGS:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1155
    .end local v1           #csTemp:Ljava/lang/CharSequence;
    .local v0, csSummary:Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_2

    .line 1156
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    .end local v0           #csSummary:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1152
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902a9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #csSummary:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1159
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1222
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 1224
    iget-boolean v0, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 1227
    :cond_0
    iput p2, p0, Lcom/android/mms/util/CForwardPreference;->m_nWhichBtnClicked:I

    .line 1228
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcEditTextPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->notifyChanged()V

    .line 1231
    return-void

    .line 1224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    .line 1237
    const-string v2, "MsgForwardHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDialogClosed(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/mms/util/MsgForwardHelper;->closeDialog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    sget-boolean v2, Lcom/android/mms/util/MsgForwardHelper;->closeDialog:Z

    if-eqz v2, :cond_0

    .line 1240
    sput-boolean v5, Lcom/android/mms/util/MsgForwardHelper;->closeDialog:Z

    .line 1280
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget v2, p0, Lcom/android/mms/util/CForwardPreference;->m_nWhichBtnClicked:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/mms/util/CForwardPreference;->m_nWhichBtnClicked:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_3

    .line 1247
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    .line 1248
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$Recipient;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1249
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/util/CForwardPreference;->showNofifyInvalidDialog(Ljava/lang/String;)V

    .line 1250
    iput-boolean v5, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 1258
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/util/CForwardPreference;->m_nTimestamp:J

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    if-eqz v2, :cond_5

    const-string v2, "1"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/util/CForwardPreference;->m_nTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, strValue:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/mms/util/CForwardPreference;->setText(Ljava/lang/String;)V

    .line 1263
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/CForwardPreference;->updateToTelephonyProvider(Landroid/content/Context;)Z

    .line 1264
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->notifyChanged()V

    .line 1265
    new-instance v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;

    invoke-direct {v1}, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;-><init>()V

    .line 1267
    .local v1, valuePref:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/CForwardPreference;->PREF_KEY_PHONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1268
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    .line 1274
    :goto_3
    invoke-static {v0, v1}, Lcom/android/mms/util/CForwardPreference;->parsePreferenceValue(Ljava/lang/String;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 1275
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/mms/util/MsgForwardUtility;->responseToCSServer(Landroid/content/Context;Lcom/android/mms/util/CForwardPreference$PREF_VALUE;)Z

    .line 1278
    .end local v0           #strValue:Ljava/lang/String;
    .end local v1           #valuePref:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    :cond_3
    invoke-super {p0, v5}, Lcom/htc/preference/HtcEditTextPreference;->onDialogClosed(Z)V

    .line 1279
    iget-object v2, p0, Lcom/android/mms/util/CForwardPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/MsgForwardHelper;->updateForwardIndicator(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1253
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1254
    invoke-direct {p0}, Lcom/android/mms/util/CForwardPreference;->showForwardWarningDialog()V

    .line 1255
    iput-boolean v5, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    goto :goto_1

    .line 1260
    :cond_5
    const-string v2, "0"

    goto :goto_2

    .line 1271
    .restart local v0       #strValue:Ljava/lang/String;
    .restart local v1       #valuePref:Lcom/android/mms/util/CForwardPreference$PREF_VALUE;
    :cond_6
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/mms/util/CForwardPreference$PREF_VALUE;->nType:I

    goto :goto_3
.end method

.method protected onPrepareDialogBuilder(Lcom/htc/widget/HtcAlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    const/4 v1, 0x0

    .line 1101
    iget-boolean v0, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1103
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1111
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1112
    return-void

    .line 1106
    :cond_0
    invoke-virtual {p1, v1, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1107
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 6
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    const/4 v5, 0x3

    .line 1119
    if-eqz p1, :cond_2

    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/util/CForwardPreference;->m_nTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/util/CForwardPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1126
    .local v1, strValue:Ljava/lang/String;
    :goto_1
    const-string v2, ":"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, aryValues:[Ljava/lang/String;
    array-length v2, v0

    if-ne v2, v5, :cond_0

    .line 1128
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/util/CForwardPreference;->m_bEnable:Z

    .line 1129
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/mms/util/CForwardPreference;->m_strForward:Ljava/lang/String;

    .line 1130
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/util/CForwardPreference;->m_nTimestamp:J

    .line 1131
    invoke-virtual {p0, v1}, Lcom/android/mms/util/CForwardPreference;->setText(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->notifyChanged()V

    .line 1135
    :cond_0
    return-void

    .line 1120
    .end local v0           #aryValues:[Ljava/lang/String;
    .end local v1           #strValue:Ljava/lang/String;
    :cond_1
    const-string v2, "0"

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 1123
    check-cast v1, Ljava/lang/String;

    .restart local v1       #strValue:Ljava/lang/String;
    goto :goto_1
.end method

.method public setContactPickValue(Ljava/lang/String;)V
    .locals 1
    .parameter "strValue"

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/mms/util/CForwardPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 1296
    .local v0, edtText:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 1297
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    :cond_0
    return-void
.end method
