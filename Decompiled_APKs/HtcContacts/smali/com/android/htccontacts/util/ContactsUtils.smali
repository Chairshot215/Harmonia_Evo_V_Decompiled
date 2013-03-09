.class public Lcom/android/htccontacts/util/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;,
        Lcom/android/htccontacts/util/ContactsUtils$Facebook;,
        Lcom/android/htccontacts/util/ContactsUtils$Plurk;,
        Lcom/android/htccontacts/util/ContactsUtils$Tweet;,
        Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;,
        Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;,
        Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;,
        Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;,
        Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;,
        Lcom/android/htccontacts/util/ContactsUtils$PhoneNumber;,
        Lcom/android/htccontacts/util/ContactsUtils$ProviderNames;,
        Lcom/android/htccontacts/util/ContactsUtils$DeletionDialogActionTask;,
        Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;
    }
.end annotation


# static fields
.field private static final AVAILABLE_THRESHOLD_KBYTES:I = 0x140

.field public static final COMMON_DATA_PROJECTION:[Ljava/lang/String; = null

.field public static final COMPESS_QUALITY:I = 0x5a

.field private static final DEBUG:Z = false

.field public static final FONT_SIZE:[I = null

.field private static final FOOTER_SIZE_BYTES:I = 0xe

.field static final JamoBase:I = 0x3131

.field static final JamoMax:I = 0x3163

.field private static KOREAN_JAUM_CONVERT_MAP:[I = null

.field static final LBase:I = 0x1100

.field static final LCount:I = 0x13

.field public static final LINK_RESULT:I = 0x2f1

.field static final NCount:I = 0x24c

.field private static final ObtainSIMTagMonitor:[Ljava/lang/Object; = null

.field public static final PEOPLE_PERFORMANCE_TUNING:Ljava/lang/String; = "debug.tuning"

.field static final SBase:I = 0xac00

.field static final SCount:I = 0x2ba4

.field public static final SHOW_DATE:I = 0x2

.field public static final SHOW_EXACT_TIME:I = 0x1

.field public static final SHOW_TODAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactsUtils"

.field static final TBase:I = 0x11a7

.field static final TBaseMax:I = 0x11c3

.field static final TCount:I = 0x1c

.field public static final TYPE_MAIL:Ljava/lang/String; = "type_mail"

.field public static final TYPE_MESSAGE:Ljava/lang/String; = "type_message"

.field public static final TYPE_PHONE_TYPE:Ljava/lang/String; = "type_phone_type"

.field static final VBase:I = 0x1161

.field static final VCount:I = 0x15

.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

.field private static isWirelessPrintingEnabled:Z

.field private static isWirelssPrintingEnabledAlreadyChecked:Z

.field private static mMaxAlphaTagLength:I

.field private static final m_strLaputaEntryActions:[Ljava/lang/String;

.field private static sDateFormat:Ljava/lang/CharSequence;

.field private static sDateFormatShort:Ljava/lang/CharSequence;

.field private static sFontSizeIndex:I

.field public static sIsProfilingEnabled:Z

.field public static userProfilingAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 189
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->ObtainSIMTagMonitor:[Ljava/lang/Object;

    .line 191
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->COMMON_DATA_PROJECTION:[Ljava/lang/String;

    .line 211
    const/4 v0, -0x1

    sput v0, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    .line 212
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->FONT_SIZE:[I

    .line 255
    const/16 v0, 0x77

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    .line 258
    sput-object v7, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 259
    sput-object v7, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormatShort:Ljava/lang/CharSequence;

    .line 260
    const/4 v0, -0x2

    sput v0, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    .line 4215
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.htc.laputa.navipanel.action.VIEW"

    aput-object v1, v0, v3

    const-string v1, "com.htc.laputa.lb.action.BROWSER_FROM_INSTALLER"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->m_strLaputaEntryActions:[Ljava/lang/String;

    .line 4249
    const-wide/high16 v0, 0x4008

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    .line 4250
    const-string v0, "com.android.htccontacts"

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingAppId:Ljava/lang/String;

    .line 5180
    sput-boolean v3, Lcom/android/htccontacts/util/ContactsUtils;->isWirelessPrintingEnabled:Z

    .line 5181
    sput-boolean v3, Lcom/android/htccontacts/util/ContactsUtils;->isWirelssPrintingEnabledAlreadyChecked:Z

    .line 5376
    const/16 v0, 0x33

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    return-void

    .line 212
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 5376
    :array_1
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
        0x61t 0x11t 0x0t 0x0t
        0x62t 0x11t 0x0t 0x0t
        0x63t 0x11t 0x0t 0x0t
        0x64t 0x11t 0x0t 0x0t
        0x65t 0x11t 0x0t 0x0t
        0x66t 0x11t 0x0t 0x0t
        0x67t 0x11t 0x0t 0x0t
        0x68t 0x11t 0x0t 0x0t
        0x69t 0x11t 0x0t 0x0t
        0x6at 0x11t 0x0t 0x0t
        0x6bt 0x11t 0x0t 0x0t
        0x6ct 0x11t 0x0t 0x0t
        0x6dt 0x11t 0x0t 0x0t
        0x6et 0x11t 0x0t 0x0t
        0x6ft 0x11t 0x0t 0x0t
        0x70t 0x11t 0x0t 0x0t
        0x71t 0x11t 0x0t 0x0t
        0x72t 0x11t 0x0t 0x0t
        0x73t 0x11t 0x0t 0x0t
        0x74t 0x11t 0x0t 0x0t
        0x75t 0x11t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5474
    return-void
.end method

.method public static CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "dataSet1"
    .parameter "dataSet2"

    .prologue
    .line 5460
    if-ne p0, p1, :cond_0

    .line 5461
    const/4 v0, 0x1

    .line 5466
    :goto_0
    return v0

    .line 5463
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 5464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5466
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static DetectGotoHome(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 2027
    :try_start_0
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 2028
    .local v3, myActivityManager:Landroid/app/ActivityManager;
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v2

    .line 2029
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2030
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v1, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2031
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v6

    .line 2049
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v3           #myActivityManager:Landroid/app/ActivityManager;
    :cond_1
    :goto_0
    return v4

    .line 2034
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v3       #myActivityManager:Landroid/app/ActivityManager;
    :cond_2
    const/4 v4, 0x0

    .line 2037
    .local v4, res:Z
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    const-string v7, "android.intent.category.HOME"

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    .line 2038
    const/4 v4, 0x1

    goto :goto_0

    .line 2042
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v3           #myActivityManager:Landroid/app/ActivityManager;
    .end local v4           #res:Z
    :catch_0
    move-exception v0

    .line 2043
    .local v0, e:Ljava/lang/SecurityException;
    const-string v5, "ContactsUtils"

    const-string v7, "DetectGotoHome"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    .line 2044
    goto :goto_0

    .line 2045
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2046
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "ContactsUtils"

    const-string v7, "DetectGotoHome"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    .line 2047
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v3       #myActivityManager:Landroid/app/ActivityManager;
    :cond_3
    move v4, v6

    .line 2049
    goto :goto_0
.end method

.method public static IsLaputaPackageExist(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 4222
    const/4 v1, 0x1

    .line 4223
    .local v1, bIsPackageInstalled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4224
    .local v4, objPM:Landroid/content/pm/PackageManager;
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->m_strLaputaEntryActions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 4225
    .local v7, strActionName:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4226
    .local v6, objTryIntent:Landroid/content/Intent;
    const/high16 v8, 0x1

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 4228
    .local v5, objResolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v5, :cond_0

    .line 4229
    const-string v8, "ContactsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HtcLaputaInstallerUtil::IsLaputaPackageExist(): Missing intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    const/4 v1, 0x0

    .line 4224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4235
    .end local v5           #objResolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #objTryIntent:Landroid/content/Intent;
    .end local v7           #strActionName:Ljava/lang/String;
    :cond_1
    return v1
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/ContactsUtils;->goToLinkScreen(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    sput p0, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->caculateSIMOCTET(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isContainDoubleByteChars(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static addInputFilterToTextView(Landroid/widget/TextView;Landroid/text/InputFilter;)V
    .locals 4
    .parameter "view"
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    .line 3231
    if-nez p0, :cond_0

    .line 3244
    :goto_0
    return-void

    .line 3233
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 3234
    .local v0, filters:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    .line 3235
    .local v1, newfilters:[Landroid/text/InputFilter;
    if-nez v0, :cond_1

    .line 3236
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 3237
    aput-object p1, v1, v3

    .line 3243
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 3239
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Landroid/text/InputFilter;

    .line 3240
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3241
    array-length v2, v0

    aput-object p1, v1, v2

    goto :goto_1
.end method

.method public static final appendExcludeReadOnlyContacts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "preSelection"
    .parameter "column"

    .prologue
    .line 3599
    const/4 v0, 0x0

    .line 3600
    .local v0, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3606
    :goto_0
    return-object v0

    .line 3604
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final appendIncludeReadOnlyContacts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "preSelection"
    .parameter "column"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3670
    const/4 v0, 0x0

    return-object v0
.end method

.method public static applyBatchDeleteSmartGroupMember(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3919
    .local p1, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3921
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->obtainFrequencyConfigTable(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 3923
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 3924
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3925
    .local v2, intValue:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 3926
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3927
    .local v0, boolValue:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3928
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6, p1}, Lcom/htc/provider/HtcContactsContract$Frequency;->applyBatchReset(Landroid/content/ContentResolver;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 3934
    .end local v0           #boolValue:Ljava/lang/Boolean;
    .end local v2           #intValue:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 3987
    if-ne p0, p1, :cond_0

    .line 3988
    const/4 v0, 0x1

    .line 3993
    :goto_0
    return v0

    .line 3990
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 3991
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3993
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 3940
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static broadcastFavoriteChangeIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2355
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2356
    return-void
.end method

.method public static broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "contactId"

    .prologue
    .line 2359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2360
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "contact_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2361
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2362
    return-void
.end method

.method public static broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "groupName"

    .prologue
    .line 2387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2389
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2390
    return-void
.end method

.method public static broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "groupName"
    .parameter "personId"

    .prologue
    .line 2443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2444
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2445
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2446
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2447
    return-void
.end method

.method public static broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "newGroupName"
    .parameter "oldGroupName"

    .prologue
    .line 2404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2405
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2406
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2407
    const-string v1, "old_grouptitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2415
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2417
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 2418
    return-void

    .line 2408
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2410
    const-string v1, "old_grouptitle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2411
    const-string v1, "ContactsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastFavoriteChangeIntent: group is deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    const-string v1, "group_has_deleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static broadcastFavoriteChangeIntentWithDeltedContactList(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "includeSIM"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2393
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2394
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "contact_id_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2395
    const-string v1, "delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2396
    const-string v1, "isSim"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2397
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2398
    return-void
.end method

.method public static broadcastFavoriteChangeIntentWithGroupNameString(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "contactId"
    .parameter "groupNameString"

    .prologue
    .line 2365
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2366
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "contact_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2367
    const-string v1, "group_name_string"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2368
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2369
    return-void
.end method

.method public static broadcastFavoriteClearIntent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "oldGroupName"

    .prologue
    .line 2423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2424
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2425
    const-string v1, "old_grouptitle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2426
    const-string v1, "group_has_cleared"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2427
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2428
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 2429
    return-void
.end method

.method public static broadcastFavoriteDeleteionChangeIntent(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "groupName"
    .parameter "personId"

    .prologue
    .line 2433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2434
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2435
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2436
    const-string v1, "delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2437
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2438
    return-void
.end method

.method public static broadcastFavoriteDeletionIntent(Landroid/content/Context;JZ)V
    .locals 3
    .parameter "context"
    .parameter "contactId"
    .parameter "includeSIM"

    .prologue
    .line 2372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "contact_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2374
    const-string v1, "delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2375
    const-string v1, "isSim"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2376
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2377
    return-void
.end method

.method public static broadcastFavoriteIntentWithGroupId(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "contactId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2380
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2381
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "contact_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2382
    const-string v1, "group_row_id_list"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2383
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2384
    return-void
.end method

.method public static broadcastFavoriteLinkChangeIntent(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2452
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "link"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2453
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2454
    return-void
.end method

.method public static broadcastFavoriteSIMContactChangeIntent(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "recordNumber"

    .prologue
    .line 2466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isSim"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2468
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2469
    return-void
.end method

.method public static broadcastSuggestionChangeIntent(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2457
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getSenseVersion()F

    move-result v1

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 2458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CONTACT_MERGE_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2459
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "manually link"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2460
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2462
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static buildActionString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "kind"
    .parameter "values"
    .parameter "lowerCase"

    .prologue
    const/4 v1, 0x0

    .line 1857
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1864
    :cond_0
    :goto_0
    return-object v1

    .line 1860
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    invoke-interface {v2, p0, p2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1861
    .local v0, actionHeader:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1864
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "kind"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 1868
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1872
    :cond_0
    :goto_0
    return-object v1

    .line 1871
    :cond_1
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    invoke-interface {v2, p0, p2}, Lcom/android/htccontacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1872
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static buildImIntent(Landroid/content/ContentValues;)Landroid/content/Intent;
    .locals 9
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 1041
    const-string v6, "vnd.android.cursor.item/email_v2"

    const-string v8, "mimetype"

    invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1043
    .local v4, isEmail:Z
    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isProtocolValid(Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v7

    .line 1062
    :goto_0
    return-object v6

    .line 1047
    :cond_0
    if-eqz v4, :cond_2

    const/4 v5, 0x5

    .line 1049
    .local v5, protocol:I
    :goto_1
    const-string v6, "data6"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, host:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v6, "data1"

    :goto_2
    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, data:Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1053
    invoke-static {v5}, Lcom/android/htccontacts/util/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v2

    .line 1056
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1057
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, authority:Ljava/lang/String;
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    const-string v7, "imto"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1060
    .local v3, imUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v6, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1047
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #imUri:Landroid/net/Uri;
    .end local v5           #protocol:I
    :cond_2
    const-string v6, "data5"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    .line 1050
    .restart local v2       #host:Ljava/lang/String;
    .restart local v5       #protocol:I
    :cond_3
    const-string v6, "data1"

    goto :goto_2

    .restart local v1       #data:Ljava/lang/String;
    :cond_4
    move-object v6, v7

    .line 1062
    goto :goto_0
.end method

.method public static buildImIntent(Lcom/android/htccontacts/util/ImData;)Landroid/content/Intent;
    .locals 7
    .parameter "imData"

    .prologue
    const/4 v5, 0x0

    .line 713
    if-nez p0, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-object v5

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v4

    .line 716
    .local v4, protocol:I
    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, host:Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v6, v4, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getCustomProtocol()Ljava/lang/String;

    move-result-object v2

    .line 720
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getImHandle()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, data:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 722
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, authority:Ljava/lang/String;
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "imto"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 725
    .local v3, imUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static buildYahooVideoCallIntent(Lcom/android/htccontacts/util/ImData;)Landroid/content/Intent;
    .locals 7
    .parameter "imData"

    .prologue
    const/4 v5, 0x0

    .line 731
    if-nez p0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-object v5

    .line 733
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getProtocol()I

    move-result v4

    .line 734
    .local v4, protocol:I
    const/4 v6, 0x2

    if-ne v6, v4, :cond_0

    .line 735
    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, host:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/util/ImData;->getImHandle()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, data:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 738
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, authority:Ljava/lang/String;
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "videoto"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 741
    .local v3, imUri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private static caculateSIMOCTET(Ljava/lang/String;)I
    .locals 3
    .parameter "text"

    .prologue
    .line 2958
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2959
    .local v0, length:I
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isContainDoubleByteChars(Ljava/lang/String;)I

    move-result v1

    .line 2960
    .local v1, str:I
    if-ltz v1, :cond_0

    .line 2961
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 2963
    :cond_0
    return v0
.end method

.method public static checkExchangeReady(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 3421
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.htc.android.mail.eas"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 3422
    .local v0, account:[Landroid/accounts/Account;
    array-length v2, v0

    if-lt v2, v1, :cond_0

    .line 3425
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 3817
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0x91

    if-ne v9, v10, :cond_1

    .line 3818
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->checkNetworkIncludeWiMax(Landroid/content/Context;)Z

    move-result v7

    .line 3838
    :cond_0
    :goto_0
    return v7

    .line 3820
    :cond_1
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3821
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3822
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 3823
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3824
    .local v3, usbNet:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, mOn:Z
    const/4 v5, 0x0

    .local v5, wOn:Z
    const/4 v4, 0x0

    .line 3825
    .local v4, usbOn:Z
    if-eqz v2, :cond_2

    .line 3826
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 3828
    :cond_2
    if-eqz v6, :cond_3

    .line 3829
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 3831
    :cond_3
    if-eqz v3, :cond_4

    .line 3832
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 3834
    :cond_4
    if-eq v5, v8, :cond_5

    if-eq v1, v8, :cond_5

    if-ne v4, v8, :cond_0

    :cond_5
    move v7, v8

    .line 3838
    goto :goto_0
.end method

.method public static checkNetworkIncludeWiMax(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3847
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3848
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3849
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 3850
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/16 v11, 0x12

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3851
    .local v3, usbNet:Landroid/net/NetworkInfo;
    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 3853
    .local v7, wimax:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .local v1, mOn:Z
    const/4 v5, 0x0

    .local v5, wOn:Z
    const/4 v4, 0x0

    .local v4, usbOn:Z
    const/4 v8, 0x0

    .line 3854
    .local v8, wimaxOn:Z
    if-eqz v2, :cond_0

    .line 3855
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 3857
    :cond_0
    if-eqz v6, :cond_1

    .line 3858
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 3860
    :cond_1
    if-eqz v7, :cond_2

    .line 3861
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    .line 3863
    :cond_2
    if-eqz v3, :cond_3

    .line 3864
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 3866
    :cond_3
    if-eq v5, v10, :cond_4

    if-eq v1, v10, :cond_4

    if-eq v4, v10, :cond_4

    if-eq v8, v10, :cond_4

    .line 3870
    :goto_0
    return v9

    :cond_4
    move v9, v10

    goto :goto_0
.end method

.method public static checkSystemMyContactAndObtainDisplayText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 4858
    move-object v0, p1

    .line 4859
    .local v0, display_name:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "My Contacts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4863
    const v1, 0x7f0a03c2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4865
    :cond_0
    return-object p1
.end method

.method public static conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "givenName"
    .parameter "familyName"
    .parameter "isGivenFamilyOrder"

    .prologue
    .line 2317
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/util/NameUtuls;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 645
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 647
    .local v0, cm:Landroid/text/ClipboardManager;
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 651
    .end local v0           #cm:Landroid/text/ClipboardManager;
    :cond_0
    return-void
.end method

.method private correctResourcesLocale()V
    .locals 6

    .prologue
    .line 2618
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2619
    .local v2, res:Landroid/content/res/Resources;
    if-nez v2, :cond_1

    .line 2620
    const-string v4, "ContactsUtils"

    const-string v5, "Resources.getSystem() is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 2625
    .local v3, resISO3Language:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2626
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    .line 2627
    const-string v4, "ContactsUtils"

    const-string v5, "res.getConfiguration() is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2630
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    .line 2632
    .local v1, currentISO3Language:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2636
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2637
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2638
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static final couldBePhoneNumber(Ljava/lang/String;)Z
    .locals 7
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 3712
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3723
    :cond_0
    :goto_0
    return v5

    .line 3716
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3718
    .local v2, digits:[C
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 3719
    .local v1, c:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3718
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3723
    .end local v1           #c:C
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static createTabIndicatorView(Landroid/view/ViewGroup;Lcom/android/htccontacts/model/ContactsSource;)Landroid/view/View;
    .locals 2
    .parameter "parent"
    .parameter "source"

    .prologue
    .line 1209
    const/4 v0, 0x0

    .line 1210
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 1211
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/htccontacts/model/ContactsSource;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1213
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/htccontacts/util/ContactsUtils;->createTabIndicatorView(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static createTabIndicatorView(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 5
    .parameter "parent"
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 1184
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1186
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030073

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1187
    .local v2, tabIndicator:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1192
    const v3, 0x7f070103

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1193
    .local v0, iconView:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    return-object v2
.end method

.method public static createTmoVideoCallDialog(Landroid/app/Activity;Ljava/util/ArrayList;)Landroid/app/Dialog;
    .locals 5
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 4171
    .local p1, tmoVideoCallData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ImData;>;"
    const/4 v2, 0x0

    .line 4173
    .local v2, tmoVideoCallDialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v0, Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/util/ContactsUtils$TMODialogListener;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 4175
    .local v0, clTmoVideoCallDialog:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/htccontacts/widget/TmoImAdapter;

    const v3, 0x7f030041

    const v4, 0x7f07003b

    invoke-direct {v1, p0, v3, v4, p1}, Lcom/android/htccontacts/widget/TmoImAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 4176
    .local v1, tiAdapter:Lcom/android/htccontacts/widget/TmoImAdapter;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0370

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 4180
    return-object v2
.end method

.method public static cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 5647
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5661
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5652
    :pswitch_1
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5663
    :goto_0
    :pswitch_2
    return-void

    .line 5655
    :pswitch_3
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5658
    :pswitch_4
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 5647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static decomposeHangul(C)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    .line 5326
    const v5, 0xac00

    sub-int v1, p0, v5

    .line 5327
    .local v1, SIndex:I
    if-ltz v1, :cond_0

    const/16 v5, 0x2ba4

    if-lt v1, v5, :cond_1

    .line 5328
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 5337
    :goto_0
    return-object v5

    .line 5330
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 5331
    .local v4, result:Ljava/lang/StringBuffer;
    div-int/lit16 v5, v1, 0x24c

    add-int/lit16 v0, v5, 0x1100

    .line 5332
    .local v0, L:I
    rem-int/lit16 v5, v1, 0x24c

    div-int/lit8 v5, v5, 0x1c

    add-int/lit16 v3, v5, 0x1161

    .line 5333
    .local v3, V:I
    rem-int/lit8 v5, v1, 0x1c

    add-int/lit16 v2, v5, 0x11a7

    .line 5334
    .local v2, T:I
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5335
    int-to-char v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5336
    const/16 v5, 0x11a7

    if-eq v2, v5, :cond_2

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5337
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static enableRoundCornerByProject()Z
    .locals 1

    .prologue
    .line 4870
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4871
    const/4 v0, 0x0

    .line 4873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static enableULOGProfileAlarm(Landroid/content/Context;JJ)V
    .locals 9
    .parameter "context"
    .parameter "triggerAtTime"
    .parameter "interval"

    .prologue
    .line 4530
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4531
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_ULOG_PROFILE"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4532
    .local v7, alarm:Landroid/content/Intent;
    const v8, 0xf001

    .line 4534
    .local v8, requestCode:I
    if-eqz v0, :cond_0

    .line 4535
    const/high16 v1, 0x1000

    invoke-static {p0, v8, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 4538
    .local v6, operation:Landroid/app/PendingIntent;
    const/4 v1, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 4540
    .end local v6           #operation:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public static final excludeReadOnlyAndUnSyncableRawContacts(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "preSelection"

    .prologue
    .line 3610
    const/4 v1, 0x0

    .line 3611
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3612
    const-string v1, "raw_contact_is_read_only = 0 "

    .line 3618
    :goto_0
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->excludeReadyOnlyRawContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3619
    .local v0, excludeList:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3622
    :cond_0
    return-object v1

    .line 3615
    .end local v0           #excludeList:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "raw_contact_is_read_only"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static final excludeReadyOnlyRawContacts(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 3626
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v6

    .line 3627
    .local v6, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getUnEditableSyncSourcesTypes()Ljava/util/ArrayList;

    move-result-object v3

    .line 3628
    .local v3, readyOnlyTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3629
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 3630
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3631
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 3632
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v7, v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    .line 3633
    .local v7, type:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v1, v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    .line 3634
    .local v1, dataSet:Ljava/lang/String;
    const-string v8, " NOT ( "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3635
    const-string v8, "account_type"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3636
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3637
    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3638
    const-string v8, " AND "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3639
    if-nez v1, :cond_1

    .line 3640
    const-string v8, "data_set"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3641
    const-string v8, " IS NULL "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3650
    :goto_1
    const-string v8, " ) "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3652
    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3653
    add-int/lit8 v8, v5, -0x1

    if-ge v2, v8, :cond_0

    .line 3654
    const-string v8, "   AND "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3631
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3644
    :cond_1
    const-string v8, "data_set"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3645
    const-string v8, " = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3646
    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3658
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    const-string v9, "  (  "

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 3659
    const-string v8, " ) "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3660
    if-lez v5, :cond_3

    .line 3661
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3663
    :cond_3
    return-object v4
.end method

.method public static generateMarkedCharSequence(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"
    .parameter "key"
    .parameter "backSpan"
    .parameter "foreSpan"

    .prologue
    .line 2115
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportMarkSearchKeyword()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p0

    .line 2128
    :cond_0
    :goto_0
    return-object v0

    .line 2118
    :cond_1
    const/4 v0, 0x0

    .line 2119
    .local v0, result:Landroid/text/SpannableString;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2122
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/contacts/ContactsUtility;->isContainCJKWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2123
    invoke-static {p0, p1, p2, p3}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence1(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    .line 2126
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/android/htccontacts/util/ContactsUtils;->generateMarkedCharSequence2(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateMarkedCharSequence1(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;
    .locals 8
    .parameter "text"
    .parameter "key"
    .parameter "backSpan"
    .parameter "foreSpan"

    .prologue
    const/16 v7, 0x21

    const/4 v0, 0x0

    .line 2142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2167
    :cond_0
    :goto_0
    return-object v0

    .line 2146
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2149
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2153
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2154
    .local v4, lowtext:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2156
    .local v3, lowkey:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2157
    .local v2, index:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v2, v5

    .line 2158
    .local v1, end:I
    if-ltz v2, :cond_0

    if-gt v2, v1, :cond_0

    .line 2161
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2163
    .local v0, displayString:Landroid/text/SpannableString;
    invoke-virtual {v0, p2, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2165
    invoke-virtual {v0, p3, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static generateMarkedCharSequence2(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/ForegroundColorSpan;)Landroid/text/SpannableString;
    .locals 9
    .parameter "text"
    .parameter "key"
    .parameter "backSpan"
    .parameter "foreSpan"

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 2187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2222
    :cond_0
    :goto_0
    return-object v0

    .line 2191
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2198
    move-object v4, p0

    .line 2199
    .local v4, lowtext:Ljava/lang/String;
    move-object v3, p1

    .line 2201
    .local v3, lowkey:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2202
    invoke-static {v4}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2203
    invoke-static {v3}, Lcom/htc/search/SmartKeyMapping;->transformLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2211
    :goto_1
    const/16 v5, 0x64

    invoke-static {v4, v3, v7, v7, v5}, Lcom/android/htccontacts/util/ContactsUtils;->getStartIndex(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    .line 2212
    .local v2, index:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v2, v5

    .line 2213
    .local v1, end:I
    if-ltz v2, :cond_0

    if-gt v2, v1, :cond_0

    .line 2216
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2218
    .local v0, displayString:Landroid/text/SpannableString;
    invoke-virtual {v0, p2, v2, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2220
    invoke-virtual {v0, p3, v2, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 2206
    .end local v0           #displayString:Landroid/text/SpannableString;
    .end local v1           #end:I
    .end local v2           #index:I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2207
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static generateProfileULogValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 18
    .parameter "resolver"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "count"

    .prologue
    .line 4439
    const-string v16, "%s,%d,%s"

    .line 4440
    .local v16, logValueFormat:Ljava/lang/String;
    const-string v4, "account_name=? AND account_type=? AND group_visible=1"

    .line 4442
    .local v4, groupVisibleSelection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "group_visible"

    aput-object v2, v3, v1

    .line 4444
    .local v3, gruopProjection:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ungrouped_visible"

    aput-object v2, v8, v1

    .line 4445
    .local v8, settingProejction:[Ljava/lang/String;
    const-string v9, "account_name = ? AND account_type = ? "

    .line 4447
    .local v9, settingSelection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 4449
    .local v5, selectionArg:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v12

    .line 4450
    .local v12, code:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4451
    .local v14, logKey:Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 4452
    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 4453
    const/4 v13, 0x0

    .line 4454
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 4455
    .local v15, logValue:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4458
    const/16 v17, 0x0

    .line 4459
    .local v17, visible:Z
    if-eqz v13, :cond_0

    .line 4460
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    .line 4461
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4463
    :cond_0
    const/4 v13, 0x0

    .line 4464
    if-nez v17, :cond_1

    .line 4465
    sget-object v7, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4468
    if-eqz v13, :cond_1

    .line 4469
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    .line 4470
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4474
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    const/4 v2, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 4475
    return-object v15
.end method

.method public static getAddContactIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1824
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1825
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1826
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1827
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1828
    .local v4, c:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1829
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p1, v6, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1839
    :cond_0
    :goto_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1840
    .local v5, p:Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1841
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v0, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1842
    if-eqz v1, :cond_1

    .line 1844
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1845
    const/4 v1, 0x0

    .line 1847
    :cond_1
    if-eqz v0, :cond_2

    .line 1849
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1850
    const/4 v0, 0x0

    .line 1852
    :cond_2
    return-object v2

    .line 1831
    .end local v5           #p:Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p1, v6, v7}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1832
    .local v3, bmScaleSrc:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 1833
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v3, v6, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1834
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getBestResolve(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .parameter "pm"
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3312
    const/high16 v9, 0x1

    invoke-virtual {p0, p1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 3314
    .local v2, foundResolve:Landroid/content/pm/ResolveInfo;
    iget v9, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v10, 0xfff

    and-int/2addr v9, v10

    if-nez v9, :cond_0

    move v1, v7

    .line 3317
    .local v1, foundDisambig:Z
    :goto_0
    if-nez v1, :cond_1

    .line 3336
    .end local v2           #foundResolve:Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v2

    .end local v1           #foundDisambig:Z
    .restart local v2       #foundResolve:Landroid/content/pm/ResolveInfo;
    :cond_0
    move v1, v8

    .line 3314
    goto :goto_0

    .line 3323
    .restart local v1       #foundDisambig:Z
    :cond_1
    const/4 v0, 0x0

    .line 3324
    .local v0, firstSystem:Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3325
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move v6, v7

    .line 3327
    .local v6, isSystem:Z
    :goto_3
    const/4 v5, 0x0

    .line 3332
    .local v5, isPrefer:Z
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_2

    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_3
    move v6, v8

    .line 3325
    goto :goto_3

    .line 3336
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    if-eqz v0, :cond_5

    .end local v0           #firstSystem:Landroid/content/pm/ResolveInfo;
    :goto_4
    move-object v2, v0

    goto :goto_1

    .restart local v0       #firstSystem:Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v0, v7

    goto :goto_4
.end method

.method public static getBytesForResource(Landroid/content/res/Resources;I)[B
    .locals 6
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 2883
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 2906
    :cond_0
    :goto_0
    return-object v3

    .line 2887
    :cond_1
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2888
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2890
    .local v0, assetStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v5, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    invoke-virtual {v1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2894
    :goto_1
    if-eqz v1, :cond_2

    .line 2895
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2897
    :cond_2
    if-eqz v0, :cond_0

    .line 2898
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 2900
    .local v3, result:[B
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2901
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2891
    .end local v3           #result:[B
    :catch_1
    move-exception v2

    .line 2892
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmSrc"
    .parameter "nSize"

    .prologue
    .line 1819
    invoke-static {p0, p1, p1}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bmSrc"

    .prologue
    .line 1812
    sget v0, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    .line 1813
    .local v0, nSize:I
    invoke-static {p0, v0}, Lcom/android/htccontacts/util/ContactsUtils;->getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getComfirmDialog(Landroid/content/Context;IIILcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "MessageId"
    .parameter "iconId"
    .parameter "actionListener"

    .prologue
    .line 2670
    if-nez p0, :cond_0

    .line 2671
    const/4 v1, 0x0

    .line 2691
    :goto_0
    return-object v1

    .line 2673
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2674
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2675
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2677
    const v1, 0x7f0a014f

    new-instance v2, Lcom/android/htccontacts/util/ContactsUtils$5;

    invoke-direct {v2, p4}, Lcom/android/htccontacts/util/ContactsUtils$5;-><init>(Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2684
    const v1, 0x7f0a0152

    new-instance v2, Lcom/android/htccontacts/util/ContactsUtils$6;

    invoke-direct {v2, p4}, Lcom/android/htccontacts/util/ContactsUtils$6;-><init>(Lcom/android/htccontacts/util/ContactsUtils$ActionDoneListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2691
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public static getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZ)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "root"
    .parameter "textResId"
    .parameter "iconResId"
    .parameter "isClickable"

    .prologue
    const/4 v4, 0x0

    .line 4072
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2bc

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 4073
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setFocusable(Z)V

    .line 4074
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get1Button()Lcom/android/htccontacts/widget/HtcListItem1Button;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItem1Button;->getButton()Landroid/widget/Button;

    move-result-object v1

    .line 4075
    .local v1, button:Landroid/widget/Button;
    if-ltz p2, :cond_0

    .line 4076
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 4078
    :cond_0
    if-lez p3, :cond_1

    .line 4079
    invoke-virtual {v1, p3, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4081
    :cond_1
    return-object v0
.end method

.method public static getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIZLandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "root"
    .parameter "textResId"
    .parameter "iconResId"
    .parameter "isClickable"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 4104
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2bc

    invoke-direct {v0, v2, v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;I)V

    .line 4105
    .local v0, builder:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    invoke-virtual {v0, v4}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setFocusable(Z)V

    .line 4106
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get1Button()Lcom/android/htccontacts/widget/HtcListItem1Button;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/HtcListItem1Button;->getButton()Landroid/widget/Button;

    move-result-object v1

    .line 4107
    .local v1, button:Landroid/widget/Button;
    if-eqz p5, :cond_0

    .line 4108
    invoke-virtual {v1, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4110
    :cond_0
    if-ltz p2, :cond_1

    .line 4111
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(I)V

    .line 4113
    :cond_1
    if-lez p3, :cond_2

    .line 4114
    invoke-virtual {v1, p3, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4116
    :cond_2
    return-object v0
.end method

.method public static getComposeNewItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;IZLandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "root"
    .parameter "description"
    .parameter "iconResId"
    .parameter "isClickable"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 4142
    const v2, 0x7f030057

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 4143
    .local v1, view:Landroid/view/View;
    const v2, 0x7f07004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4145
    .local v0, button:Landroid/widget/Button;
    if-eqz p5, :cond_0

    .line 4146
    invoke-virtual {v0, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4148
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4149
    if-lez p3, :cond_1

    .line 4150
    invoke-virtual {v0, p3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 4153
    :cond_1
    return-object v1
.end method

.method public static getContactListOrderByLastFirst(Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 4040
    const/4 v7, 0x0

    .line 4041
    .local v7, lastFirst:Z
    const-string v0, "content://com.android.contacts/contacts/display/sort/order/query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, queryOrderUri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 4042
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4043
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 4045
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4046
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4047
    .local v8, order:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 4048
    const-string v0, "Last Name"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    goto :goto_0

    .line 4052
    .end local v8           #order:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4055
    :cond_2
    return v7

    .line 4052
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getDateCompleteString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "millis"

    .prologue
    const/4 v8, 0x1

    .line 819
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 820
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 827
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, defaultDateFormat:Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 831
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v4, Landroid/text/format/Time;->year:I

    .line 832
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v4, Landroid/text/format/Time;->month:I

    .line 833
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v4, Landroid/text/format/Time;->monthDay:I

    .line 834
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 835
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 840
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 842
    .local v5, timeFormat:Ljava/lang/String;
    new-instance v2, Ljava/util/Formatter;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 843
    .local v2, formatter:Ljava/util/Formatter;
    const-string v6, "%s"

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, result:Ljava/lang/String;
    return-object v3
.end method

.method public static getDateFormatShortWithoutWeekday(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, -0x1

    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format_short"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v0, "\uff08EE\uff09"

    .line 668
    .local v0, EEbrackets:Ljava/lang/String;
    const-string v6, "\uff08EE\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 669
    .local v1, nEEbracketsindex:I
    if-eq v8, v1, :cond_0

    .line 670
    const-string v6, "\uff08EE\uff09"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 672
    :cond_0
    const-string v6, "EE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 673
    .local v2, nEEindex:I
    if-eq v8, v2, :cond_1

    .line 674
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 676
    :cond_1
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 677
    .local v3, nPattern1index:I
    if-eq v8, v3, :cond_2

    .line 678
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 680
    :cond_2
    const-string v6, " ,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 681
    .local v4, nPattern2index:I
    if-eq v8, v4, :cond_3

    .line 682
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 684
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6
.end method

.method public static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "millis"

    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateStringUsingSettingsFormat(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "millis"

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, dateFormatShort:Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateStringUsingSettingsFormatShort(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "millis"

    .prologue
    .line 811
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format_short"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, dateFormatShort:Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateStringWithoutWeekday(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "millis"

    .prologue
    .line 640
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->getDateFormatShortWithoutWeekday(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultKindTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "mimeType"

    .prologue
    .line 2280
    const/4 v1, -0x1

    .line 2281
    .local v1, resId:I
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    .line 2282
    .local v2, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 2284
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/htccontacts/model/DataKind;->titleRes:I

    if-lez v3, :cond_0

    .line 2285
    iget v1, v0, Lcom/android/htccontacts/model/DataKind;->titleRes:I

    .line 2287
    :cond_0
    return v1
.end method

.method public static getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 6
    .parameter "context"
    .parameter "resolver"
    .parameter "isSIM"
    .parameter "contactUri"
    .parameter "finishActivity"

    .prologue
    .line 463
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 9
    .parameter "context"
    .parameter "resolver"
    .parameter "isSIM"
    .parameter "contactUri"
    .parameter "finishActivity"
    .parameter "listener"

    .prologue
    .line 490
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 491
    .local v7, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v0, 0x7f0a014a

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 492
    const v0, 0x7f0a014b

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 494
    const v8, 0x7f0a014f

    new-instance v0, Lcom/android/htccontacts/util/ContactsUtils$1;

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move-object v4, p5

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/util/ContactsUtils$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ZLcom/android/htccontacts/util/ContactsUtils$DeleteListener;Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v7, v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 527
    const v0, 0x7f0a0152

    new-instance v1, Lcom/android/htccontacts/util/ContactsUtils$2;

    invoke-direct {v1}, Lcom/android/htccontacts/util/ContactsUtils$2;-><init>()V

    invoke-virtual {v7, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 533
    return-object v7
.end method

.method public static getDeleteContactsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_DELETE_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/app/HtcProgressDialog;
    .locals 3
    .parameter "contex"
    .parameter "title"
    .parameter "message"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 2695
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2696
    .local v0, progress:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 2697
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2698
    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2699
    invoke-virtual {v0, p2}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2700
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 2701
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 2702
    invoke-virtual {v0, p3}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 2705
    new-instance v1, Lcom/android/htccontacts/util/ContactsUtils$7;

    invoke-direct {v1}, Lcom/android/htccontacts/util/ContactsUtils$7;-><init>()V

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2715
    return-object v0
.end method

.method public static final getDisplayLabel(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "mimetype"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 886
    const-string v3, ""

    .line 891
    .local v3, display:Ljava/lang/CharSequence;
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 892
    const/4 v2, 0x1

    .line 893
    .local v2, defaultType:I
    const/4 v1, 0x0

    .line 894
    .local v1, customType:I
    const v0, 0x1070003

    .line 912
    .local v0, arrayResId:I
    :goto_0
    if-eqz p2, :cond_5

    .line 913
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 915
    .local v6, labels:[Ljava/lang/CharSequence;
    add-int/lit8 v7, p2, -0x1

    :try_start_0
    aget-object v3, v6, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #labels:[Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    move-object v4, v3

    .line 924
    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    .end local v3           #display:Ljava/lang/CharSequence;
    .local v4, display:Ljava/lang/Object;
    :goto_2
    return-object v4

    .line 895
    .end local v4           #display:Ljava/lang/Object;
    .restart local v3       #display:Ljava/lang/CharSequence;
    :cond_1
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 896
    const/4 v2, 0x1

    .line 897
    .restart local v2       #defaultType:I
    const/4 v1, 0x0

    .line 898
    .restart local v1       #customType:I
    const/high16 v0, 0x107

    .restart local v0       #arrayResId:I
    goto :goto_0

    .line 899
    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    :cond_2
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 900
    const/4 v2, 0x1

    .line 901
    .restart local v2       #defaultType:I
    const/4 v1, 0x0

    .line 902
    .restart local v1       #customType:I
    const v0, 0x1070004

    .restart local v0       #arrayResId:I
    goto :goto_0

    .line 903
    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    :cond_3
    const-string v7, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 904
    const/4 v2, 0x1

    .line 905
    .restart local v2       #defaultType:I
    const/4 v1, 0x0

    .line 906
    .restart local v1       #customType:I
    const v0, 0x1070002

    .restart local v0       #arrayResId:I
    goto :goto_0

    .end local v0           #arrayResId:I
    .end local v1           #customType:I
    .end local v2           #defaultType:I
    :cond_4
    move-object v4, v3

    .line 909
    .restart local v4       #display:Ljava/lang/Object;
    goto :goto_2

    .line 916
    .end local v4           #display:Ljava/lang/Object;
    .restart local v0       #arrayResId:I
    .restart local v1       #customType:I
    .restart local v2       #defaultType:I
    .restart local v6       #labels:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    .line 917
    .local v5, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v7, 0x0

    aget-object v3, v6, v7

    goto :goto_1

    .line 920
    .end local v5           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v6           #labels:[Ljava/lang/CharSequence;
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 921
    move-object v3, p3

    goto :goto_1
.end method

.method public static final getDisplayLabel(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "mimeType"
    .parameter "cursor"

    .prologue
    .line 859
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "vnd.android.cursor.item/sms-address"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 862
    :cond_0
    const-string p1, "vnd.android.cursor.item/phone_v2"

    .line 863
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 864
    .local v1, colType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 878
    .local v0, colLabel:I
    :goto_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 879
    .local v3, type:I
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, label:Ljava/lang/CharSequence;
    invoke-static {p0, p1, v3, v2}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayLabel(Landroid/content/Context;Ljava/lang/String;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v0           #colLabel:I
    .end local v1           #colType:I
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #type:I
    :goto_1
    return-object v4

    .line 865
    :cond_1
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 866
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 867
    .restart local v1       #colType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #colLabel:I
    goto :goto_0

    .line 868
    .end local v0           #colLabel:I
    .end local v1           #colType:I
    :cond_2
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 869
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 870
    .restart local v1       #colType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #colLabel:I
    goto :goto_0

    .line 871
    .end local v0           #colLabel:I
    .end local v1           #colType:I
    :cond_3
    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 872
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 873
    .restart local v1       #colType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .restart local v0       #colLabel:I
    goto :goto_0

    .line 875
    .end local v0           #colLabel:I
    .end local v1           #colType:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getDisplayNameOrderLastFirst(Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 4009
    const/4 v7, 0x0

    .line 4010
    .local v7, lastFirst:Z
    const-string v0, "content://com.android.contacts/contacts/display/sort/order/query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, queryOrderUri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 4011
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4012
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 4014
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4015
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4016
    .local v8, order:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 4017
    const-string v0, "Last Name"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    goto :goto_0

    .line 4021
    .end local v8           #order:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4024
    :cond_2
    return v7

    .line 4021
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getDisplayOptionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 1382
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/htccontacts/ui/ContactsPreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "mimeType"
    .parameter "typeValue"
    .parameter "label"

    .prologue
    .line 2276
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "mimeType"
    .parameter "typeValue"
    .parameter "label"

    .prologue
    .line 2254
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v3

    .line 2255
    .local v3, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v2

    .line 2258
    .local v2, kind:Lcom/android/htccontacts/model/DataKind;
    const/4 v0, 0x0

    .line 2260
    .local v0, displayLabel:Ljava/lang/String;
    iget-object v5, v2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 2261
    iget-object v5, v2, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 2262
    .local v4, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v5, v4, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v5, p4, :cond_0

    .line 2263
    if-eqz p5, :cond_2

    .line 2264
    move-object v0, p5

    .line 2272
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_1
    :goto_0
    return-object v0

    .line 2266
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v4, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2268
    goto :goto_0
.end method

.method public static final getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "columnName"
    .parameter "key"

    .prologue
    .line 2089
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2090
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "  (   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2091
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2092
    const-string v1, "   =   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2093
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2094
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2095
    const-string v1, "  )  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2096
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExactDateTimeUsingSystemFormat(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "day"
    .parameter "flagShowDateOrTime"

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, result:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .line 289
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, f:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .end local v0           #f:Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    return-object v1

    .line 292
    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 294
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 295
    .local v2, systemTimeFormatter:Ljava/text/DateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFacebookMessageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 36
    .parameter "context"

    .prologue
    .line 4778
    const/16 v21, 0x0

    .line 4779
    .local v21, intent:Landroid/content/Intent;
    if-eqz p0, :cond_2

    .line 4780
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/provider/HtcContactsContract;->FACEBOOK_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "select * from posts where userid in (select loginId from accounts where defaultAccount=1) ORDER BY post_time DESC"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 4785
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_2

    .line 4786
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4787
    const-string v3, "post_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 4788
    .local v26, post_id:Ljava/lang/String;
    const-string v3, "username"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 4789
    .local v35, username:Ljava/lang/String;
    const-string v3, "userid"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 4790
    .local v34, user_id:Ljava/lang/String;
    const-string v3, "avatar"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4791
    .local v15, avatar:Ljava/lang/String;
    const-string v3, "profile_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4792
    .local v28, profile_type:Ljava/lang/String;
    const-string v3, "targetid"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 4793
    .local v30, targetId:Ljava/lang/String;
    const-string v3, "targetname"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 4794
    .local v31, targetName:Ljava/lang/String;
    const-string v3, "target_avatar"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 4795
    .local v29, targetAvatar:Ljava/lang/String;
    const-string v3, "target_profile_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 4796
    .local v32, target_profile_type:Ljava/lang/String;
    const-string v3, "message"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4799
    .local v25, message:Ljava/lang/String;
    const-string v3, "link"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4800
    .local v13, att_link:Ljava/lang/String;
    const-string v3, "att_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4801
    .local v14, att_name:Ljava/lang/String;
    const-string v3, "att_caption"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4802
    .local v11, att_caption:Ljava/lang/String;
    const-string v3, "att_decription"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4803
    .local v12, att_description:Ljava/lang/String;
    const-string v3, "likes"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 4804
    .local v22, like_count:J
    const-wide/16 v3, 0x1

    const-string v5, "can_like"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    const/16 v18, 0x1

    .line 4805
    .local v18, canLike:Z
    :goto_0
    const-wide/16 v3, 0x1

    const-string v5, "can_comment"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    const/16 v17, 0x1

    .line 4806
    .local v17, canComment:Z
    :goto_1
    const-wide/16 v3, 0x1

    const-string v5, "user_likes"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    const/16 v33, 0x1

    .line 4807
    .local v33, userLikes:Z
    :goto_2
    new-instance v27, Ljava/util/Date;

    const-string v3, "post_time"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 4808
    .local v27, posted:Ljava/util/Date;
    const-string v3, "comment_count"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 4809
    .local v19, comment_count:J
    const-string v3, "liker"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 4810
    .local v24, liker:Ljava/lang/String;
    const-string v3, "album_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4811
    .local v10, albumName:Ljava/lang/String;
    const-string v3, "album_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4813
    .local v9, albumId:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 4814
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v3, "com.htc.socialnetwork.facebook"

    const-string v4, "com.htc.socialnetwork.facebook.FacebookCommentActivity"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4815
    const-string v3, "com.htc.socialnetwork.facebook.VIEW_USER_LIST"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4816
    const-string v3, "post_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4817
    const-string v3, "username"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4818
    const-string v3, "userid"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4819
    const-string v3, "avatar"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4820
    const-string v3, "profile_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4821
    const-string v3, "targetid"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4822
    const-string v3, "targetname"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4823
    const-string v3, "target_avatar"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4824
    const-string v3, "target_profile_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4825
    const-string v3, "message"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4830
    const-string v3, "link"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4831
    const-string v3, "att_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4832
    const-string v3, "att_caption"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4833
    const-string v3, "att_decription"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4834
    const-string v3, "likes"

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4835
    const-string v3, "can_like"

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4836
    const-string v3, "can_comment"

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4837
    const-string v3, "user_likes"

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4838
    const-string v3, "post_time"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4839
    const-string v3, "comment_count"

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4840
    const-string v3, "liker"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4841
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4842
    const-string v3, "album_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4844
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4845
    const-string v3, "album_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4849
    .end local v9           #albumId:Ljava/lang/String;
    .end local v10           #albumName:Ljava/lang/String;
    .end local v11           #att_caption:Ljava/lang/String;
    .end local v12           #att_description:Ljava/lang/String;
    .end local v13           #att_link:Ljava/lang/String;
    .end local v14           #att_name:Ljava/lang/String;
    .end local v15           #avatar:Ljava/lang/String;
    .end local v17           #canComment:Z
    .end local v18           #canLike:Z
    .end local v19           #comment_count:J
    .end local v22           #like_count:J
    .end local v24           #liker:Ljava/lang/String;
    .end local v25           #message:Ljava/lang/String;
    .end local v26           #post_id:Ljava/lang/String;
    .end local v27           #posted:Ljava/util/Date;
    .end local v28           #profile_type:Ljava/lang/String;
    .end local v29           #targetAvatar:Ljava/lang/String;
    .end local v30           #targetId:Ljava/lang/String;
    .end local v31           #targetName:Ljava/lang/String;
    .end local v32           #target_profile_type:Ljava/lang/String;
    .end local v33           #userLikes:Z
    .end local v34           #user_id:Ljava/lang/String;
    .end local v35           #username:Ljava/lang/String;
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 4853
    .end local v16           #c:Landroid/database/Cursor;
    :cond_2
    return-object v21

    .line 4804
    .restart local v11       #att_caption:Ljava/lang/String;
    .restart local v12       #att_description:Ljava/lang/String;
    .restart local v13       #att_link:Ljava/lang/String;
    .restart local v14       #att_name:Ljava/lang/String;
    .restart local v15       #avatar:Ljava/lang/String;
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v22       #like_count:J
    .restart local v25       #message:Ljava/lang/String;
    .restart local v26       #post_id:Ljava/lang/String;
    .restart local v28       #profile_type:Ljava/lang/String;
    .restart local v29       #targetAvatar:Ljava/lang/String;
    .restart local v30       #targetId:Ljava/lang/String;
    .restart local v31       #targetName:Ljava/lang/String;
    .restart local v32       #target_profile_type:Ljava/lang/String;
    .restart local v34       #user_id:Ljava/lang/String;
    .restart local v35       #username:Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 4805
    .restart local v18       #canLike:Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 4806
    .restart local v17       #canComment:Z
    :cond_5
    const/16 v33, 0x0

    goto/16 :goto_2
.end method

.method public static final getFilterWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "columnName"
    .parameter "pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2075
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getFilterContactNameWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getFilterWhereStirngOnlyPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "columnName"
    .parameter "pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2086
    invoke-static {p0, p1}, Lcom/htc/util/contacts/ContactsUtility;->getFiltePrefixrWhereStirng(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFontSize(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 229
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->initFontSizeIndex(Landroid/content/Context;)V

    .line 230
    sget v0, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    return v0
.end method

.method public static getGroupDataById(Landroid/content/ContentResolver;J)Landroid/content/ContentValues;
    .locals 18
    .parameter "resolver"
    .parameter "id"

    .prologue
    .line 1234
    const/16 v2, 0x9

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "account_name"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "account_type"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "title"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "title_res"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "notes"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "system_id"

    aput-object v5, v4, v2

    const/16 v2, 0x8

    const-string v5, "data_set"

    aput-object v5, v4, v2

    .line 1245
    .local v4, projection:[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1246
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1247
    .local v10, cursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 1248
    .local v16, values:Landroid/content/ContentValues;
    if-eqz v10, :cond_2

    .line 1250
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1251
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1252
    .end local v16           #values:Landroid/content/ContentValues;
    .local v17, values:Landroid/content/ContentValues;
    move-object v8, v4

    .local v8, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v14, v8

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v9, v8, v13

    .line 1253
    .local v9, column:Ljava/lang/String;
    const-string v2, "title_res"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_id"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    :cond_0
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1255
    .local v15, resId:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1252
    .end local v15           #resId:I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1258
    :cond_1
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1259
    .local v11, data:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1264
    .end local v9           #column:Ljava/lang/String;
    .end local v11           #data:Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    :catch_0
    move-exception v12

    move-object/from16 v16, v17

    .line 1265
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v17           #values:Landroid/content/ContentValues;
    .local v12, e:Ljava/lang/Exception;
    .restart local v16       #values:Landroid/content/ContentValues;
    :goto_2
    const/16 v16, 0x0

    .line 1267
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1270
    .end local v12           #e:Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-object v16

    .end local v16           #values:Landroid/content/ContentValues;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v16, v17

    .line 1267
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v17           #values:Landroid/content/ContentValues;
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .end local v16           #values:Landroid/content/ContentValues;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v17       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    move-object/from16 v16, v17

    .end local v17           #values:Landroid/content/ContentValues;
    .restart local v16       #values:Landroid/content/ContentValues;
    goto :goto_4

    .line 1264
    .end local v8           #arr$:[Ljava/lang/String;
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method public static getGroupDataByIdList(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 24
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v2, 0xb

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "account_name"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "account_type"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "sourceid"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "title"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "title_res"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "notes"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "system_id"

    aput-object v6, v4, v2

    const/16 v2, 0x8

    const-string v6, "sortorder"

    aput-object v6, v4, v2

    const/16 v2, 0x9

    const-string v6, "data_set"

    aput-object v6, v4, v2

    const/16 v2, 0xa

    const-string v6, "group_is_read_only"

    aput-object v6, v4, v2

    .line 1289
    .local v4, projection:[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1290
    const/16 v23, 0x0

    .line 1337
    :cond_0
    :goto_0
    return-object v23

    .line 1293
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1294
    .local v20, size:I
    if-nez v20, :cond_2

    .line 1295
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1297
    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1299
    .local v9, buf:Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 1300
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1301
    .local v16, id:J
    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1302
    add-int/lit8 v2, v20, -0x1

    if-ge v14, v2, :cond_3

    .line 1303
    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1299
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1306
    .end local v16           #id:J
    :cond_4
    const/4 v2, 0x0

    const-string v6, "_id  IN ( "

    invoke-virtual {v9, v2, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1307
    const-string v2, " ) "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1308
    const-string v2, "  AND deleted = 0 "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1309
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1312
    .local v5, selection:Ljava/lang/String;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v23, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Groups;->GROUP_RAW_URI:Landroid/net/Uri;

    .line 1314
    .local v3, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1315
    .local v11, cursor:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 1316
    .local v21, values:Landroid/content/ContentValues;
    if-eqz v11, :cond_0

    move-object/from16 v22, v21

    .line 1318
    .end local v21           #values:Landroid/content/ContentValues;
    .local v22, values:Landroid/content/ContentValues;
    :goto_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1319
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1320
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    move-object v8, v4

    .local v8, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v0, v8

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_3
    move/from16 v0, v19

    if-ge v15, v0, :cond_7

    aget-object v10, v8, v15

    .line 1321
    .local v10, column:Ljava/lang/String;
    const-string v2, "title_res"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "_id"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "sortorder"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1322
    :cond_5
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1323
    .local v18, intvalue:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    .end local v18           #intvalue:I
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1325
    :cond_6
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1326
    .local v12, data:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1331
    .end local v10           #column:Ljava/lang/String;
    .end local v12           #data:Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #len$:I
    :catch_0
    move-exception v13

    .line 1332
    .end local v8           #arr$:[Ljava/lang/String;
    .local v13, e:Ljava/lang/Exception;
    :goto_5
    const/16 v21, 0x0

    .line 1334
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1329
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v15       #i$:I
    .restart local v19       #len$:I
    :cond_7
    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v22, v21

    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v22       #values:Landroid/content/ContentValues;
    goto :goto_2

    .line 1334
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #len$:I
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v21, v22

    .line 1335
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 1334
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v22       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    move-object/from16 v21, v22

    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    :goto_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v8       #arr$:[Ljava/lang/String;
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 1331
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v22       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    move-object/from16 v21, v22

    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    goto :goto_5
.end method

.method public static getGroupDataList(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "resolver"
    .parameter
    .parameter "mimetype"
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3346
    .local p1, mNoAddressMemberIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 3347
    .local v12, dataUri:Landroid/net/Uri;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3348
    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 3353
    :cond_0
    :goto_0
    const/4 v10, 0x0

    .line 3354
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 3355
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3357
    .local v17, memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3358
    .local v3, queryUri:Landroid/net/Uri;
    const-string v2, "group_with_favorite"

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3359
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3360
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3364
    if-eqz v10, :cond_2

    .line 3366
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3367
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3368
    .local v14, id:J
    const-wide/16 v4, 0x0

    cmp-long v2, v14, v4

    if-lez v2, :cond_1

    .line 3369
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3372
    .end local v14           #id:J
    :catch_0
    move-exception v2

    .line 3374
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3375
    const/4 v10, 0x0

    .line 3379
    :cond_2
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 3380
    .local v16, idList:Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 3382
    .local v19, numberList:Ljava/lang/StringBuilder;
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 3383
    const-string v2, "( is_super_primary = 1 AND ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3384
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 3385
    .restart local v14       #id:J
    const-string v2, "contact_id = "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3386
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3387
    const-string v2, " OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3388
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3350
    .end local v3           #queryUri:Landroid/net/Uri;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #id:J
    .end local v16           #idList:Ljava/lang/StringBuilder;
    .end local v17           #memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19           #numberList:Ljava/lang/StringBuilder;
    :cond_3
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3351
    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 3374
    .restart local v3       #queryUri:Landroid/net/Uri;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v17       #memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3375
    const/4 v10, 0x0

    .line 3376
    goto :goto_2

    .line 3374
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3375
    const/4 v10, 0x0

    throw v2

    .line 3391
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v16       #idList:Ljava/lang/StringBuilder;
    .restart local v19       #numberList:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_6

    .line 3392
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3394
    :cond_6
    const-string v2, "))"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 3396
    const/16 v20, -0x1

    .line 3397
    .local v20, person:I
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "data1"

    aput-object v4, v6, v2

    const/4 v2, 0x1

    const-string v4, "contact_id"

    aput-object v4, v6, v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v12

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3401
    .local v11, cmCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_a

    .line 3402
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3404
    :cond_7
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 3405
    .local v18, number:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3406
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3407
    const/16 v2, 0x3b

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3408
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3409
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3411
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3413
    .end local v18           #number:Ljava/lang/String;
    :cond_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3416
    .end local v11           #cmCursor:Landroid/database/Cursor;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v20           #person:I
    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getHelpIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.htc.showme"

    const-string v3, "com.htc.showme.ui.Search"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 279
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "people"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    return-object v0
.end method

.method public static getImportExportPath(Z)Ljava/lang/String;
    .locals 2
    .parameter "usePhoneStorage"

    .prologue
    .line 5275
    const-string v0, "/sdcard"

    .line 5276
    .local v0, path:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 5278
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5279
    const-string v0, "/sdcard/ext_sd"

    .line 5282
    :cond_0
    return-object v0
.end method

.method public static getIntentIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 3289
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3290
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 3292
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 3293
    .local v0, bestResolve:Landroid/content/pm/ResolveInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 3294
    .local v5, size:I
    if-ne v5, v7, :cond_1

    .line 3295
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bestResolve:Landroid/content/pm/ResolveInfo;
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3300
    .restart local v0       #bestResolve:Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 3301
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3302
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3307
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 3296
    :cond_1
    if-le v5, v7, :cond_0

    .line 3297
    invoke-static {v4, p1, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getBestResolve(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    .line 3307
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getIntentSendEmail(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "toWhere"

    .prologue
    const/4 v6, 0x1

    .line 1881
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1882
    const/4 v0, 0x0

    .line 1891
    :goto_0
    return-object v0

    .line 1885
    :cond_0
    const-string v2, "mailto:%s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1886
    .local v1, mailTo:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1890
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "type_mail"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getIntentToAddFavorite(JI)Landroid/content/Intent;
    .locals 3
    .parameter "userId"
    .parameter "type"

    .prologue
    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 1363
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1364
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.HtcContactGlanceSelectDefaultActionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1367
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1369
    :cond_0
    return-object v0
.end method

.method public static getInvitableIntent(Lcom/android/htccontacts/model/AccountType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter "accountType"
    .parameter "lookupUri"

    .prologue
    .line 5441
    iget-object v2, p0, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 5442
    .local v2, resPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/model/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 5443
    .local v0, className:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5444
    :cond_0
    const/4 v1, 0x0

    .line 5453
    :goto_0
    return-object v1

    .line 5446
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5447
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5449
    const-string v3, "com.android.contacts.action.INVITE_CONTACT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5452
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getMyContactCardIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.mycontact.MyContactLayerCarouselActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    return-object v0
.end method

.method public static getNumberType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    .line 747
    invoke-static {}, Lcom/htc/util/contacts/PhoneUtils;->getEmergencyNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, emergencyNums:[Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, voiceMailNumber:Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lcom/htc/util/contacts/PhoneUtils;->getType(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getOpenContactDetailIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 1378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getOrCreateStarredInAndroidGroupIfNeed(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 19
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 3504
    const-wide/16 v17, -0x1

    .line 3505
    .local v17, starrGroupId:J
    const-string v7, "Starred in Android"

    .line 3506
    .local v7, STARRED_IN_ANDROID:Ljava/lang/String;
    const-string v8, "com.google"

    .line 3509
    .local v8, accountType:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "title"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "should_sync"

    aput-object v4, v3, v1

    const-string v4, "account_name =? AND account_type =? AND data_set IS NULL "

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 v1, 0x1

    aput-object v8, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3515
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 3516
    .local v13, myContactsExists:Z
    const-wide/16 v11, -0x1

    .line 3517
    .local v11, groupId:J
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3518
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3519
    const/4 v13, 0x1

    .line 3521
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v11, v1

    .line 3522
    if-eqz v13, :cond_3

    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-lez v1, :cond_3

    .line 3530
    :cond_1
    move-wide/from16 v17, v11

    .line 3533
    if-nez v13, :cond_2

    .line 3535
    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 3536
    .local v14, newGroup:Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3537
    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    const-string v1, "account_type"

    invoke-virtual {v14, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    const-string v1, "data_set"

    invoke-virtual {v14, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3540
    const-string v1, "group_visible"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3542
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3545
    .local v15, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "title=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3550
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3555
    :try_start_1
    const-string v1, "com.android.contacts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v16

    .line 3557
    .local v16, results:[Landroid/content/ContentProviderResult;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 3558
    const/4 v1, 0x1

    aget-object v1, v16, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v17

    .line 3570
    .end local v14           #newGroup:Landroid/content/ContentValues;
    .end local v15           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v16           #results:[Landroid/content/ContentProviderResult;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-wide/from16 v1, v17

    .line 3573
    :goto_1
    return-wide v1

    .line 3526
    :cond_3
    const-wide/16 v11, -0x1

    goto/16 :goto_0

    .line 3560
    .restart local v14       #newGroup:Landroid/content/ContentValues;
    .restart local v15       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v10

    .line 3561
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Problem querying for groups"

    invoke-direct {v1, v2, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3570
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v14           #newGroup:Landroid/content/ContentValues;
    .end local v15           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3562
    .restart local v14       #newGroup:Landroid/content/ContentValues;
    .restart local v15       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v10

    .line 3565
    .local v10, e:Landroid/content/OperationApplicationException;
    const-wide/16 v1, -0x1

    .line 3570
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getPhoneTypeResource(I)I
    .locals 1
    .parameter "nType"

    .prologue
    .line 688
    packed-switch p0, :pswitch_data_0

    .line 709
    const v0, 0x7f0a008f

    :goto_0
    return v0

    .line 689
    :pswitch_0
    const v0, 0x7f0a008e

    goto :goto_0

    .line 690
    :pswitch_1
    const v0, 0x7f0a008d

    goto :goto_0

    .line 691
    :pswitch_2
    const v0, 0x7f0a007c

    goto :goto_0

    .line 692
    :pswitch_3
    const v0, 0x7f0a007d

    goto :goto_0

    .line 693
    :pswitch_4
    const v0, 0x7f0a007e

    goto :goto_0

    .line 694
    :pswitch_5
    const v0, 0x7f0a007f

    goto :goto_0

    .line 695
    :pswitch_6
    const v0, 0x7f0a0080

    goto :goto_0

    .line 696
    :pswitch_7
    const v0, 0x7f0a0081

    goto :goto_0

    .line 697
    :pswitch_8
    const v0, 0x7f0a0082

    goto :goto_0

    .line 698
    :pswitch_9
    const v0, 0x7f0a0083

    goto :goto_0

    .line 699
    :pswitch_a
    const v0, 0x7f0a0084

    goto :goto_0

    .line 700
    :pswitch_b
    const v0, 0x7f0a0085

    goto :goto_0

    .line 701
    :pswitch_c
    const v0, 0x7f0a0086

    goto :goto_0

    .line 702
    :pswitch_d
    const v0, 0x7f0a0087

    goto :goto_0

    .line 703
    :pswitch_e
    const v0, 0x7f0a0088

    goto :goto_0

    .line 704
    :pswitch_f
    const v0, 0x7f0a0089

    goto :goto_0

    .line 705
    :pswitch_10
    const v0, 0x7f0a008a

    goto :goto_0

    .line 706
    :pswitch_11
    const v0, 0x7f0a008b

    goto :goto_0

    .line 707
    :pswitch_12
    const v0, 0x7f0a0090

    goto :goto_0

    .line 708
    :pswitch_13
    const v0, 0x7f0a008c

    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static getPhoneTypeString(Landroid/content/res/Resources;IZ)Ljava/lang/String;
    .locals 3
    .parameter "res"
    .parameter "type"
    .parameter "withColon"

    .prologue
    const/4 v1, 0x0

    .line 1399
    if-nez p0, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-object v1

    .line 1403
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1404
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0, p2}, Lcom/android/htccontacts/util/ContactsUtils;->getPhoneTypeString(Landroid/content/res/Resources;ILjava/lang/StringBuilder;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPhoneTypeString(Landroid/content/res/Resources;ILjava/lang/StringBuilder;Z)Z
    .locals 3
    .parameter "res"
    .parameter "type"
    .parameter "sb"
    .parameter "withColon"

    .prologue
    .line 1425
    const/4 v0, 0x0

    .line 1426
    .local v0, result:Z
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 1427
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    .line 1428
    .local v1, typeRes:I
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1429
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    const/4 v0, 0x1

    .line 1432
    .end local v1           #typeRes:I
    :cond_0
    return v0
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1081
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1087
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1088
    return-object v0
.end method

.method public static getPlurkMessageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 31
    .parameter "context"

    .prologue
    .line 4679
    const/4 v14, 0x0

    .line 4680
    .local v14, intent:Landroid/content/Intent;
    if-eqz p0, :cond_1

    .line 4681
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract;->PLURK_RAWQUERY_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "select * from plurks where owner_id in (select user_id from accounts where default_account=1) ORDER BY posted DESC"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4686
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 4687
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4688
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 4689
    .local v12, id:J
    const-string v2, "avastar"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4690
    .local v8, avatar:Ljava/lang/String;
    const-string v2, "content"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4691
    .local v10, content:Ljava/lang/String;
    const-string v2, "content_raw"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4692
    .local v11, content_raw:Ljava/lang/String;
    const-string v2, "is_unreaded"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 4693
    .local v15, is_unread:J
    const-string v2, "lang"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 4694
    .local v17, lang:Ljava/lang/String;
    const-string v2, "limited_to"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 4695
    .local v18, limited_to:J
    const-string v2, "nick_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 4696
    .local v20, nick_name:Ljava/lang/String;
    const-string v2, "owner_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 4697
    .local v21, owner_id:J
    const-string v2, "plurk_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 4698
    .local v23, plurk_type:J
    new-instance v25, Ljava/util/Date;

    const-string v2, "posted"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 4699
    .local v25, posted:Ljava/util/Date;
    const-string v2, "qualifier"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 4700
    .local v26, qualifier:J
    const-string v2, "qualifier_translated"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 4701
    .local v28, qualifier_translated:Ljava/lang/String;
    const-string v2, "response_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 4703
    .local v29, response_count:J
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 4704
    .restart local v14       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.socialnetwork.plurk"

    const-string v4, "com.htc.socialnetwork.plurk.PlurkReplyActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4705
    const-string v2, "_id"

    invoke-virtual {v14, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4706
    const-string v2, "avastar"

    invoke-virtual {v14, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4707
    const-string v2, "content"

    invoke-virtual {v14, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4708
    const-string v2, "content_raw"

    invoke-virtual {v14, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4709
    const-string v3, "is_unreaded"

    const-wide/16 v4, 0x0

    cmp-long v2, v15, v4

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v14, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4711
    const-string v2, "lang"

    move-object/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4712
    const-string v2, "limited_to"

    move-wide/from16 v0, v18

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4713
    const-string v2, "nick_name"

    move-object/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4714
    const-string v2, "owner_id"

    move-wide/from16 v0, v21

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4715
    const-string v2, "_id"

    invoke-virtual {v14, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4716
    const-string v2, "plurk_type"

    move-wide/from16 v0, v23

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4717
    const-string v2, "posted"

    move-object/from16 v0, v25

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4718
    const-string v2, "qualifier"

    move-wide/from16 v0, v26

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4719
    const-string v2, "qualifier_translated"

    move-object/from16 v0, v28

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4721
    const-string v2, "response_count"

    move-wide/from16 v0, v29

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4723
    .end local v8           #avatar:Ljava/lang/String;
    .end local v10           #content:Ljava/lang/String;
    .end local v11           #content_raw:Ljava/lang/String;
    .end local v12           #id:J
    .end local v15           #is_unread:J
    .end local v17           #lang:Ljava/lang/String;
    .end local v18           #limited_to:J
    .end local v20           #nick_name:Ljava/lang/String;
    .end local v21           #owner_id:J
    .end local v23           #plurk_type:J
    .end local v25           #posted:Ljava/util/Date;
    .end local v26           #qualifier:J
    .end local v28           #qualifier_translated:Ljava/lang/String;
    .end local v29           #response_count:J
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4727
    .end local v9           #c:Landroid/database/Cursor;
    :cond_1
    return-object v14

    .line 4709
    .restart local v8       #avatar:Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #content:Ljava/lang/String;
    .restart local v11       #content_raw:Ljava/lang/String;
    .restart local v12       #id:J
    .restart local v15       #is_unread:J
    .restart local v17       #lang:Ljava/lang/String;
    .restart local v18       #limited_to:J
    .restart local v20       #nick_name:Ljava/lang/String;
    .restart local v21       #owner_id:J
    .restart local v23       #plurk_type:J
    .restart local v25       #posted:Ljava/util/Date;
    .restart local v26       #qualifier:J
    .restart local v28       #qualifier_translated:Ljava/lang/String;
    .restart local v29       #response_count:J
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getRelativeDayStringUsingSystemFormat(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "day"
    .parameter "today"
    .parameter "flagShowTodayOrExactTime"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getSIMMaxAlphaTagLength()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x2

    .line 2578
    sget v6, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    if-eq v6, v7, :cond_0

    .line 2579
    sget v5, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    .line 2614
    :goto_0
    return v5

    .line 2582
    :cond_0
    const-string v6, "gsm.usim.alpha-tag.length"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2583
    .local v1, maxLen:I
    if-gtz v1, :cond_1

    .line 2584
    const/16 v5, 0xc

    goto :goto_0

    .line 2587
    :cond_1
    sput v1, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    .line 2588
    sget v6, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    if-lez v6, :cond_2

    .line 2589
    sget v5, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    goto :goto_0

    .line 2595
    :cond_2
    :try_start_0
    const-string v6, "simphonebook"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 2597
    .local v2, simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    const/16 v6, 0x6f3a

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    .line 2598
    .local v3, size:[I
    if-eqz v3, :cond_5

    .line 2599
    const-string v4, ""

    .line 2600
    .local v4, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_3

    .line 2601
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2600
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2604
    :cond_3
    array-length v6, v3

    const/4 v7, 0x3

    if-lt v6, v7, :cond_5

    .line 2605
    const/4 v1, 0x0

    .line 2606
    const/4 v6, 0x0

    aget v6, v3, v6

    add-int/lit8 v1, v6, -0xe

    .line 2607
    if-gez v1, :cond_4

    move v1, v5

    .end local v1           #maxLen:I
    :cond_4
    sput v1, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2614
    .end local v0           #i:I
    .end local v2           #simPhoneBook:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v3           #size:[I
    .end local v4           #str:Ljava/lang/String;
    :cond_5
    :goto_2
    sget v5, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    goto :goto_0

    .line 2611
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static final getSIMMaxAlphaTagLengthWithCallback(Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;)I
    .locals 3
    .parameter "callback"

    .prologue
    .line 2539
    sget v1, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 2540
    sget v1, Lcom/android/htccontacts/util/ContactsUtils;->mMaxAlphaTagLength:I

    .line 2574
    :goto_0
    return v1

    .line 2543
    :cond_0
    new-instance v0, Lcom/android/htccontacts/util/ContactsUtils$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/util/ContactsUtils$4;-><init>(Lcom/android/htccontacts/util/ContactsUtils$GetSIMMaxAlphaTagLengthCallback;)V

    .line 2573
    .local v0, checkThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2574
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getShortSystemDateFormatString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "millis"

    .prologue
    .line 610
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormatShort:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormatShort:Ljava/lang/CharSequence;

    .line 612
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormatShort:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 613
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormatShort:Ljava/lang/CharSequence;

    .line 616
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormatShort:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 617
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormatShort:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getShortcutDrawableIdOfPhoneType(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 3769
    const v0, 0x7f020040

    .line 3770
    .local v0, result:I
    packed-switch p0, :pswitch_data_0

    .line 3806
    :pswitch_0
    const v0, 0x7f020040

    .line 3809
    :goto_0
    return v0

    .line 3772
    :pswitch_1
    const v0, 0x7f020040

    .line 3773
    goto :goto_0

    .line 3776
    :pswitch_2
    const v0, 0x7f02003f

    .line 3777
    goto :goto_0

    .line 3782
    :pswitch_3
    const v0, 0x7f020041

    .line 3783
    goto :goto_0

    .line 3785
    :pswitch_4
    const v0, 0x7f020045

    .line 3786
    goto :goto_0

    .line 3789
    :pswitch_5
    const v0, 0x7f02003e

    .line 3790
    goto :goto_0

    .line 3792
    :pswitch_6
    const v0, 0x7f020046

    .line 3793
    goto :goto_0

    .line 3795
    :pswitch_7
    const v0, 0x7f020042

    .line 3796
    goto :goto_0

    .line 3770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static getStartIndex(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 4
    .parameter "text"
    .parameter "key"
    .parameter "startIndex"
    .parameter "depth"
    .parameter "maxDepth"

    .prologue
    .line 2226
    if-lt p3, p4, :cond_1

    .line 2227
    const/4 v0, -0x1

    .line 2237
    :cond_0
    :goto_0
    return v0

    .line 2229
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2230
    .local v0, index:I
    if-lez v0, :cond_0

    .line 2233
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2234
    .local v1, prevChar:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2237
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, p1, v2, v3, p4}, Lcom/android/htccontacts/util/ContactsUtils;->getStartIndex(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    goto :goto_0
.end method

.method public static getSystemDateFormatString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "millis"

    .prologue
    .line 597
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 599
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormat:Ljava/lang/CharSequence;

    .line 603
    :cond_0
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormat:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 604
    sget-object v0, Lcom/android/htccontacts/util/ContactsUtils;->sDateFormat:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTextforSIMResultErrorUri(Landroid/net/Uri;)I
    .locals 2
    .parameter "resultUri"

    .prologue
    .line 3578
    const/4 v0, -0x1

    .line 3579
    .local v0, result:I
    if-eqz p0, :cond_0

    .line 3580
    sget-object v1, Landroid/provider/HtcUnionContact$SimContacts;->ADN_FULL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3581
    const v0, 0x7f0a023b

    .line 3587
    :cond_0
    :goto_0
    return v0

    .line 3583
    :cond_1
    sget-object v1, Landroid/provider/HtcUnionContact$SimContacts;->ERROR_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3584
    const v0, 0x7f0a023c

    goto :goto_0
.end method

.method public static getTwitterMessageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 22
    .parameter "context"

    .prologue
    .line 4604
    const/4 v14, 0x0

    .line 4605
    .local v14, intent:Landroid/content/Intent;
    if-eqz p0, :cond_1

    .line 4606
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract;->TWITTER_RAWQUERY_CONTENT_URI_3_5:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "select * from messages where deleted = 0 and sender_id in (select user_id from accounts where defaultAccount=1) ORDER BY created_at DESC"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4611
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 4612
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4613
    const-string v2, "id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 4614
    .local v12, id:J
    const-string v2, "sender_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4615
    .local v16, sender_id:J
    const-string v2, "message"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4616
    .local v15, message:Ljava/lang/String;
    const-string v2, "created_at"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4617
    .local v9, created_at:J
    const-string v2, "tsource"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4618
    .local v18, source:Ljava/lang/String;
    const-wide/16 v2, 0x1

    const-string v4, "favorite"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v11, 0x1

    .line 4619
    .local v11, favorite:Z
    :goto_0
    const-string v2, "user_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 4620
    .local v20, userName:Ljava/lang/String;
    const-string v2, "user_screenname"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 4621
    .local v21, userScreenName:Ljava/lang/String;
    const-string v2, "user_avatar"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 4623
    .local v19, userAvatar:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 4624
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.htctwitter"

    const-string v3, "com.htc.htctwitter.TwitterTweetDisplayActivity"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4625
    const-string v2, "id"

    invoke-virtual {v14, v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4626
    const-string v2, "sender_id"

    move-wide/from16 v0, v16

    invoke-virtual {v14, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4627
    const-string v2, "message"

    invoke-virtual {v14, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4628
    const-string v2, "created_at"

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v9

    invoke-virtual {v14, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4629
    const-string v2, "tsource"

    move-object/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4630
    const-string v2, "favorite"

    invoke-virtual {v14, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4631
    const-string v2, "user_name"

    move-object/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4632
    const-string v2, "user_screenname"

    move-object/from16 v0, v21

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4633
    const-string v2, "user_avatar"

    move-object/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4635
    .end local v9           #created_at:J
    .end local v11           #favorite:Z
    .end local v12           #id:J
    .end local v15           #message:Ljava/lang/String;
    .end local v16           #sender_id:J
    .end local v18           #source:Ljava/lang/String;
    .end local v19           #userAvatar:Ljava/lang/String;
    .end local v20           #userName:Ljava/lang/String;
    .end local v21           #userScreenName:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4639
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    return-object v14

    .line 4618
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #created_at:J
    .restart local v12       #id:J
    .restart local v15       #message:Ljava/lang/String;
    .restart local v16       #sender_id:J
    .restart local v18       #source:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static getViewContactCardIntent(Landroid/content/ContentResolver;J)Landroid/content/Intent;
    .locals 1
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    .line 1912
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/htccontacts/util/ContactsUtils;->getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;
    .locals 4
    .parameter "resolver"
    .parameter "contactId"
    .parameter "isSIM"

    .prologue
    .line 1924
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 1925
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1930
    .local v1, uriLookup:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1931
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1933
    if-eqz p3, :cond_0

    .line 1934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1938
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1941
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uriLookup:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getViewIndependentCallHistoryIntent(Lcom/android/htccontacts/HtcContactInfoBase;)Landroid/content/Intent;
    .locals 4
    .parameter "contactInfo"

    .prologue
    .line 754
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 770
    :goto_0
    return-object v0

    .line 755
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 756
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.ContactDetailCallHistoryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v1, "independent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    const-string v1, "independentName"

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    const-string v1, "independentUnknown"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    const-string v1, "independentUnknownNumber"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 763
    :cond_1
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 764
    const-string v1, "photo"

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 765
    const-string v1, "SimType"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isSimType()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 766
    const-string v1, "Presence"

    iget v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPresence:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    const-string v1, "ChatCapability"

    iget v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mChatCapability:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    const-string v1, "MyPhonebookType"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isMyPhonebookType()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getViewIndependentMailIntent(Lcom/android/htccontacts/HtcContactInfoBase;)Landroid/content/Intent;
    .locals 3
    .parameter "contactInfo"

    .prologue
    .line 773
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 786
    :goto_0
    return-object v0

    .line 774
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 775
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.ContactDetailMailActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const-string v1, "independent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    const-string v1, "independentName"

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string v1, "photo"

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 779
    const-string v1, "SimType"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isSimType()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 780
    const-string v1, "Presence"

    iget v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPresence:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v1, "ChatCapability"

    iget v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mChatCapability:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    const-string v1, "MyPhonebookType"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isMyPhonebookType()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 783
    const-string v1, "independentUnknown"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 784
    const-string v1, "independentEmailList"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->getEmailStringList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 785
    const-string v1, "independentNumberList"

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->getNumberStringList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final getlaunchServoSearchClient(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "filter"

    .prologue
    .line 4904
    const-string v4, "content://servo_search/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4906
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4907
    .local v2, sevoIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4908
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4909
    const-string v4, "CATEGORY_ORDER"

    const-string v5, "contacts"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4912
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4913
    const-string v4, "SEARCH"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4916
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4917
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/high16 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 4919
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 4922
    .end local v2           #sevoIntent:Landroid/content/Intent;
    :goto_0
    return-object v2

    .restart local v2       #sevoIntent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static goToLinkScreen(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V
    .locals 2
    .parameter "activity"
    .parameter "contactInfo"

    .prologue
    .line 1744
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1745
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1747
    invoke-virtual {p1}, Lcom/android/htccontacts/HtcContactInfoBase;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1749
    const/16 v1, 0x2f1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1750
    return-void
.end method

.method public static handleSQLiteFullException(Landroid/content/Context;Landroid/database/sqlite/SQLiteFullException;)V
    .locals 2
    .parameter "context"
    .parameter "e"

    .prologue
    .line 2911
    const v0, 0x104011d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 2912
    return-void
.end method

.method public static hasInternalFat()Z
    .locals 1

    .prologue
    .line 5286
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    return v0
.end method

.method private static final includeReadyOnlyRawContacts(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 3675
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v6

    .line 3676
    .local v6, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getUnEditableSyncSourcesTypes()Ljava/util/ArrayList;

    move-result-object v3

    .line 3677
    .local v3, readyOnlyTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3678
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 3679
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3680
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 3681
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v7, v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    .line 3682
    .local v7, type:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    iget-object v1, v8, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    .line 3683
    .local v1, dataSet:Ljava/lang/String;
    const-string v8, " ( "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3685
    const-string v8, "account_type"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3686
    const-string v8, " = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3687
    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3688
    const-string v8, " AND "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3689
    const-string v8, "data_set"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3690
    if-nez v1, :cond_1

    .line 3691
    const-string v8, " IS NULL "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3698
    :goto_1
    const-string v8, " ) "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3699
    add-int/lit8 v8, v5, -0x1

    if-ge v2, v8, :cond_0

    .line 3700
    const-string v8, " OR "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3680
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3693
    :cond_1
    const-string v8, " = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3694
    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3703
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    const-string v9, " ( "

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 3704
    const-string v8, " ) "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3705
    if-lez v5, :cond_3

    .line 3706
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3708
    :cond_3
    return-object v4
.end method

.method private static initFontSizeIndex(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 215
    sget v0, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 216
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Font_Size_Index"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    .line 219
    :cond_0
    return-void
.end method

.method public static initialProfilingSchedule(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 4521
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4522
    .local v0, applicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingContact(Landroid/content/Context;)V

    .line 4523
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingGroups(Landroid/content/Context;)V

    .line 4524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4525
    .local v1, triggerAtTime:J
    const-wide/32 v3, 0x240c8400

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/util/ContactsUtils;->enableULOGProfileAlarm(Landroid/content/Context;JJ)V

    .line 4526
    return-void
.end method

.method public static initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 1220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1222
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1223
    return-void
.end method

.method public static initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 1229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1231
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1232
    return-void
.end method

.method public static final is3GSim(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 2482
    if-nez p0, :cond_1

    .line 2489
    :cond_0
    :goto_0
    return v3

    .line 2485
    :cond_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2487
    .local v2, telephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->isSimReady(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    .line 2488
    .local v1, simReady:Z
    const/4 v0, 0x0

    .line 2489
    .local v0, is3GSIM:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isBackupAssistantEnabled()Z
    .locals 2

    .prologue
    .line 5203
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallDurationHideProject()Z
    .locals 2

    .prologue
    .line 5789
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    .line 5790
    const/4 v0, 0x1

    .line 5792
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCanReadWriteSIM(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 4550
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isSimReady(Landroid/content/Context;)Z

    move-result v3

    .line 4551
    .local v3, simReady:Z
    if-eqz v3, :cond_1

    .line 4552
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 4553
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v4, :cond_1

    .line 4554
    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 4556
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4557
    .local v0, acccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v7, "com.anddroid.contacts.sim"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4569
    .end local v0           #acccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v4           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static final isContainChineseWord(Ljava/lang/String;)Z
    .locals 1
    .parameter "word"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2312
    invoke-static {p0}, Lcom/htc/util/contacts/ContactsUtility;->isContainChineseWord(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isContainDoubleByteChars(Ljava/lang/String;)I
    .locals 7
    .parameter "text"

    .prologue
    .line 2915
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2916
    const/4 v4, -0x1

    .line 2932
    :cond_0
    :goto_0
    return v4

    .line 2919
    :cond_1
    const/4 v4, -0x1

    .line 2920
    .local v4, targetIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 2921
    .local v0, array:[C
    array-length v3, v0

    .line 2922
    .local v3, leng:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 2924
    :try_start_0
    aget-char v5, v0, v2

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2922
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2926
    :catch_0
    move-exception v1

    .line 2927
    .local v1, e:Lcom/android/internal/telephony/EncodeException;
    move v4, v2

    .line 2928
    goto :goto_0
.end method

.method public static isDBAccessable()Z
    .locals 12

    .prologue
    .line 4238
    const/4 v0, 0x1

    .line 4239
    .local v0, accessable:Z
    new-instance v5, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4240
    .local v5, dataFs:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v3, v8

    .line 4241
    .local v3, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v1, v8

    .line 4242
    .local v1, availeBlocks:J
    mul-long v8, v1, v3

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 4243
    .local v6, freeKsize:J
    const-wide/16 v8, 0x140

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    .line 4244
    const/4 v0, 0x0

    .line 4246
    :cond_0
    return v0
.end method

.method public static isDopodProject()Z
    .locals 2

    .prologue
    .line 3272
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 3273
    const/4 v0, 0x1

    .line 3275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEditableAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 4157
    const/4 v3, 0x0

    .line 4158
    .local v3, result:Z
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 4160
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 4161
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4162
    .local v0, acccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4164
    const/4 v3, 0x1

    goto :goto_0

    .line 4167
    .end local v0           #acccountWithDataSet:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_1
    return v3
.end method

.method public static isEditableContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 3496
    if-nez p1, :cond_0

    .line 3497
    const/4 v1, 0x1

    .line 3500
    :goto_0
    return v1

    .line 3499
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    .line 3500
    .local v0, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->isEditableAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isExchangeStyleSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "account_type"

    .prologue
    .line 2350
    const-string v0, "com.android.exchange"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.android.mail.eas"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFamilyNamePersonaltNameOrder(Ljava/util/Locale;)Z
    .locals 1
    .parameter "locale"

    .prologue
    .line 4028
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isGoogleFilterStyle()Z
    .locals 2

    .prologue
    .line 4879
    const/16 v0, 0x22

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_0

    const/16 v0, 0x50

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 2793
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHangulOrJamo(C)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 5311
    const/4 v1, 0x0

    .line 5312
    .local v1, result:Z
    const v2, 0xac00

    sub-int v0, p0, v2

    .line 5314
    .local v0, SIndex:I
    if-ltz v0, :cond_0

    const/16 v2, 0x2ba4

    if-gt v0, v2, :cond_0

    .line 5315
    const/4 v1, 0x1

    .line 5322
    :goto_0
    return v1

    .line 5316
    :cond_0
    const/16 v2, 0x3131

    if-lt p0, v2, :cond_1

    const/16 v2, 0x3163

    if-le p0, v2, :cond_2

    :cond_1
    const/16 v2, 0x1100

    if-lt p0, v2, :cond_3

    const/16 v2, 0x11c2

    if-gt p0, v2, :cond_3

    .line 5317
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 5320
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHardwareKeypadSupport()Z
    .locals 1

    .prologue
    .line 2321
    const/4 v0, 0x0

    return v0
.end method

.method public static isHelpAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 265
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getHelpIntent()Landroid/content/Intent;

    move-result-object v0

    .line 267
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 268
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 269
    const-string v4, "ContactsUtils"

    const-string v5, "Show Me application exists."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return v3

    .line 272
    :cond_0
    const-string v3, "ContactsUtils"

    const-string v4, "Show Me application does not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMessagelOrderByDate2()Z
    .locals 2

    .prologue
    .line 5239
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x8a

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    const-wide/high16 v0, 0x4010

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMrProject()Z
    .locals 2

    .prologue
    .line 3263
    const/16 v0, 0x39

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3a

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x18

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 3266
    :cond_0
    const/4 v0, 0x1

    .line 3268
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultipleEditableNameSource(Lcom/android/htccontacts/model/ContactsSource;)Z
    .locals 4
    .parameter "source"

    .prologue
    .line 2325
    const/4 v1, 0x0

    .line 2327
    .local v1, multipleName:Z
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/ContactsSource;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 2328
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 2329
    const/4 v1, 0x1

    .line 2331
    :cond_0
    return v1
.end method

.method public static isMultipleEditableNameSource(Ljava/lang/String;)Z
    .locals 2
    .parameter "accountType"

    .prologue
    .line 2336
    const/4 v0, 0x0

    .line 2337
    .local v0, multipleName:Z
    const-string v1, "com.anddroid.contacts.sim"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2338
    const/4 v0, 0x0

    .line 2346
    :cond_0
    :goto_0
    return v0

    .line 2339
    :cond_1
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.mail.eas"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.android.pcsc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p0, :cond_0

    .line 2344
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPeoplePerformanceTuningEnabled()Z
    .locals 1

    .prologue
    .line 5225
    const/4 v0, 0x1

    return v0
.end method

.method private static isProtocolValid(Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 1067
    const-string v3, "data5"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, protocolString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1076
    :goto_0
    return v2

    .line 1072
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    const/4 v2, 0x1

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static isSD_Card_Plugin()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5245
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5248
    const-string v2, "removed"

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bad_removal"

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5271
    .local v0, file:Ljava/io/File;
    .local v1, isSDPlugin:Z
    :cond_0
    :goto_0
    return v1

    .line 5254
    .end local v0           #file:Ljava/io/File;
    .end local v1           #isSDPlugin:Z
    :cond_1
    const-string v2, "removed"

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bad_removal"

    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5260
    :cond_2
    const/4 v1, 0x0

    .line 5261
    .restart local v1       #isSDPlugin:Z
    const/4 v0, 0x0

    .line 5262
    .restart local v0       #file:Ljava/io/File;
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5263
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v2, "/sdcard/ext_sd"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5267
    .restart local v0       #file:Ljava/io/File;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5268
    const/4 v1, 0x1

    goto :goto_0

    .line 5265
    :cond_3
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    const-string v2, "/sdcard"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_1
.end method

.method public static final isSKTOrKorea()Z
    .locals 2

    .prologue
    .line 5292
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSimReady(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2473
    if-nez p0, :cond_0

    .line 2474
    const/4 v1, 0x0

    .line 2478
    :goto_0
    return v1

    .line 2476
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2478
    .local v0, telephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->isSimReady(Landroid/telephony/TelephonyManager;)Z

    move-result v1

    goto :goto_0
.end method

.method public static final isSimReady(Landroid/telephony/TelephonyManager;)Z
    .locals 3
    .parameter "telephoneMgr"

    .prologue
    const/4 v0, 0x0

    .line 2726
    if-nez p0, :cond_1

    .line 2732
    :cond_0
    :goto_0
    return v0

    .line 2729
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2730
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSocialnetwork(J)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 653
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 655
    :cond_1
    const-wide/16 v1, 0x4

    cmp-long v1, v1, p0

    if-eqz v1, :cond_0

    .line 657
    const-wide/16 v1, 0x3

    cmp-long v1, v1, p0

    if-eqz v1, :cond_0

    .line 659
    const-wide/16 v1, 0x2

    cmp-long v1, v1, p0

    if-eqz v1, :cond_0

    .line 662
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupport(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3279
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3285
    :cond_0
    :goto_0
    return v2

    .line 3280
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3281
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3282
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 3285
    goto :goto_0
.end method

.method public static isSupportComposeMessage(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 3727
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3728
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3729
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3730
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3731
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSupportContactCardMechaIm()Z
    .locals 2

    .prologue
    .line 2008
    const/16 v0, 0x61

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_0

    .line 2009
    const/4 v0, 0x1

    .line 2011
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportContactCardTmoIm()Z
    .locals 2

    .prologue
    .line 2002
    const/16 v0, 0x30

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_0

    .line 2003
    const/4 v0, 0x1

    .line 2005
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportGridAlbumView()Z
    .locals 2

    .prologue
    .line 5229
    const-wide v0, 0x4000e147ae147ae1L

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isSense3_5a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5232
    const/4 v0, 0x1

    .line 5234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupportMarkSearchKeyword()Z
    .locals 1

    .prologue
    .line 2061
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSendEmail(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 3735
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3736
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3737
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3738
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final isSupportUCS2Filter()Z
    .locals 1

    .prologue
    .line 2057
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->isSupportUCS2Filter()Z

    move-result v0

    return v0
.end method

.method public static isTmiProject()Z
    .locals 2

    .prologue
    .line 2020
    const/16 v0, 0xd0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    .line 2021
    const/4 v0, 0x1

    .line 2023
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTmoProject()Z
    .locals 2

    .prologue
    .line 2014
    const/16 v0, 0x9b

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    .line 2015
    const/4 v0, 0x1

    .line 2017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isUseServoSearchClient(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 4887
    const/16 v3, 0x7d

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v3, v4, :cond_0

    .line 4888
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4889
    .local v2, sevoIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4890
    const-string v3, "content://servo_search/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4891
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4892
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 4894
    .local v0, info:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 4895
    const/4 v3, 0x1

    .line 4899
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #sevoIntent:Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isValidGoogleAccount(Lcom/android/htccontacts/model/AccountWithDataSet;)Z
    .locals 3
    .parameter "accountDataSet"

    .prologue
    const/4 v0, 0x0

    .line 3998
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4004
    :cond_0
    :goto_0
    return v0

    .line 4001
    :cond_1
    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4004
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 3248
    const/16 v0, 0x3a

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x18

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x40

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x91

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 3253
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3255
    const/4 v0, 0x0

    .line 3259
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWirelessPrintingEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5183
    sget-boolean v4, Lcom/android/htccontacts/util/ContactsUtils;->isWirelssPrintingEnabledAlreadyChecked:Z

    if-eqz v4, :cond_0

    .line 5184
    sget-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->isWirelessPrintingEnabled:Z

    .line 5197
    :goto_0
    return v2

    .line 5186
    :cond_0
    sput-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->isWirelssPrintingEnabledAlreadyChecked:Z

    .line 5187
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5188
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.westtek.jcp"

    const-string v5, "com.westtek.jcp.JCPRINT"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5190
    .local v0, jcp_component:Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 5191
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    :goto_1
    sput-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->isWirelessPrintingEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5197
    :cond_1
    :goto_2
    sget-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->isWirelessPrintingEnabled:Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 5191
    goto :goto_1

    .line 5193
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public static loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "photoId"
    .parameter "options"

    .prologue
    const/4 v0, 0x0

    .line 965
    const/4 v7, 0x0

    .line 966
    .local v7, photoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 968
    .local v6, photoBm:Landroid/graphics/Bitmap;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 988
    :goto_0
    return-object v0

    .line 972
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 977
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 979
    .local v8, photoData:[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 983
    .end local v8           #photoData:[B
    :cond_1
    if-eqz v7, :cond_2

    .line 984
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 988
    goto :goto_0

    .line 983
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 984
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static loadContactPhoto(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "cursor"
    .parameter "bitmapColumnIndex"
    .parameter "options"

    .prologue
    .line 938
    if-nez p0, :cond_0

    .line 939
    const/4 v1, 0x0

    .line 943
    :goto_0
    return-object v1

    .line 942
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 943
    .local v0, data:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 5668
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5670
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5672
    const/16 v1, 0x1d

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5673
    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5674
    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5675
    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5676
    const/16 v1, 0x21

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5677
    const/16 v1, 0x22

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5678
    const/16 v1, 0x23

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5679
    const/16 v1, 0x24

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5680
    const/16 v1, 0x25

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5681
    const/16 v1, 0x26

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5682
    const/16 v1, 0x27

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5683
    const/16 v1, 0x28

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5684
    const/16 v1, 0x29

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5685
    const/16 v1, 0x2a

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5686
    const/16 v1, 0x2b

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5687
    const/16 v1, 0x2c

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5688
    const/16 v1, 0x2d

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5689
    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5690
    const/16 v1, 0x2f

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5691
    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5692
    const/16 v1, 0x31

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5693
    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5694
    const/16 v1, 0x33

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5695
    const/16 v1, 0x34

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5696
    const/16 v1, 0x35

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5697
    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5699
    return-object v0
.end method

.method public static loadImageFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "source"

    .prologue
    .line 2244
    const/4 v0, 0x0

    .line 2245
    .local v0, is:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 2246
    .local v1, result:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2249
    .end local v1           #result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .restart local v1       #result:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "placeholderImageResource"
    .parameter "context"
    .parameter "options"

    .prologue
    .line 956
    if-nez p0, :cond_0

    .line 957
    const/4 v0, 0x0

    .line 959
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 5623
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5625
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5627
    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5628
    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5629
    const/16 v1, 0x11

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5630
    const/16 v1, 0x12

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5631
    const/16 v1, 0x13

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5632
    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5633
    const/16 v1, 0x15

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5634
    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5635
    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5636
    const/16 v1, 0x18

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5637
    const/16 v1, 0x19

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5638
    const/16 v1, 0x1a

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5639
    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5640
    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5641
    const/16 v1, 0x1b

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 5643
    return-object v0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .parameter "protocol"

    .prologue
    .line 1015
    packed-switch p0, :pswitch_data_0

    .line 1033
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1017
    :pswitch_0
    const-string v0, "GTalk"

    goto :goto_0

    .line 1019
    :pswitch_1
    const-string v0, "AIM"

    goto :goto_0

    .line 1021
    :pswitch_2
    const-string v0, "MSN"

    goto :goto_0

    .line 1023
    :pswitch_3
    const-string v0, "Yahoo"

    goto :goto_0

    .line 1025
    :pswitch_4
    const-string v0, "ICQ"

    goto :goto_0

    .line 1027
    :pswitch_5
    const-string v0, "JABBER"

    goto :goto_0

    .line 1029
    :pswitch_6
    const-string v0, "SKYPE"

    goto :goto_0

    .line 1031
    :pswitch_7
    const-string v0, "QQ"

    goto :goto_0

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static obtainActivityIconRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3758
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3759
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3761
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 3762
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3765
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtainActivityTitleRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3743
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3744
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 3745
    .local v0, bundle:Landroid/os/Bundle;
    const/high16 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3747
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 3748
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3749
    .local v3, seq:Ljava/lang/CharSequence;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3750
    .restart local v0       #bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 3751
    const-string v4, "labelRes"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3754
    .end local v3           #seq:Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method public static obtainAddableGroupMembers(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4927
    .local p1, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4928
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 4929
    .local v15, includeFavorite:Z
    const/16 v16, 0x0

    .line 4930
    .local v16, includeFrequency:Z
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 4932
    .local v19, targetContacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 4933
    .local v7, buf:Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 4934
    .local v13, groupCounts:I
    const/4 v10, 0x0

    .line 4936
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 4937
    .local v20, title:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4938
    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4939
    const/4 v15, 0x1

    .line 4942
    :cond_1
    const-string v3, "Frequent Contacts"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4943
    const/16 v16, 0x1

    .line 4946
    :cond_2
    if-nez v16, :cond_3

    if-eqz v15, :cond_4

    .line 4947
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 4948
    goto :goto_0

    .line 4951
    :cond_4
    invoke-static/range {v20 .. v20}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4952
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4953
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 4957
    .end local v20           #title:Ljava/lang/String;
    :cond_5
    if-nez v13, :cond_6

    .line 4958
    const/16 v18, 0x0

    .line 5060
    :goto_1
    return-object v18

    .line 4961
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    .line 4962
    .local v17, len:I
    if-lez v17, :cond_b

    .line 4963
    const-string v3, "mysense"

    const-string v5, "enter group memebers"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4964
    add-int/lit8 v3, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 4966
    const/4 v3, 0x0

    const-string v5, "title IN ("

    invoke-virtual {v7, v3, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 4967
    const-string v3, " ) "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4970
    const-string v3, " And (system_id<>\'Contacts\' or system_id is null )"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4971
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4974
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4976
    if-eqz v10, :cond_8

    .line 4977
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4978
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 4979
    .local v11, gId:J
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 4980
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 4982
    .end local v11           #gId:J
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4985
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    .line 4986
    if-lez v17, :cond_9

    .line 4987
    add-int/lit8 v3, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 4989
    const/4 v3, 0x0

    const-string v5, "data1 IN ( "

    invoke-virtual {v7, v3, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 4990
    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4991
    const-string v3, " AND "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4992
    const-string v3, "mimetype"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4993
    const-string v3, " = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4994
    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4997
    :cond_9
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "contact_id"

    aput-object v6, v3, v5

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5001
    if-eqz v10, :cond_b

    .line 5002
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5003
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 5004
    .local v8, cId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 5006
    .end local v8           #cId:J
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5009
    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5010
    if-eqz v15, :cond_d

    .line 5011
    const-string v3, "mysense"

    const-string v5, "enter favorites"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5013
    const-string v4, "starred = 1 "

    .line 5014
    .local v4, selection:Ljava/lang/String;
    const-string v3, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lcom/android/htccontacts/util/ContactsUtils;->appendExcludeReadOnlyContacts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5017
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5021
    const-string v3, "mysense"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enter favorites : selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    if-eqz v10, :cond_d

    .line 5024
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5025
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 5026
    .restart local v8       #cId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5028
    .end local v8           #cId:J
    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5032
    .end local v4           #selection:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 5033
    if-eqz v16, :cond_f

    .line 5034
    const-string v3, "mysense"

    const-string v5, "enter frequency"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Picker;->EXCLUDE_SIM_CONTACT:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5037
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5038
    .restart local v4       #selection:Ljava/lang/String;
    const-string v3, "contact_is_read_only"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lcom/android/htccontacts/util/ContactsUtils;->appendExcludeReadOnlyContacts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5041
    sget-object v2, Lcom/htc/provider/HtcContactsContract$Contacts;->ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 5042
    .local v2, queryUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "Frequent Contacts"

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 5046
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5049
    if-eqz v10, :cond_f

    .line 5050
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5051
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 5052
    .restart local v8       #cId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5054
    .end local v8           #cId:J
    :cond_e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5058
    .end local v2           #queryUri:Landroid/net/Uri;
    .end local v4           #selection:Ljava/lang/String;
    :cond_f
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 5059
    .local v18, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method public static final obtainAlbumTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1977
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1978
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1979
    invoke-static {p0, v2}, Lcom/android/htccontacts/util/ContactsUtils;->obtainActivityTitleRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1980
    .local v0, galleryBundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1981
    .local v1, galleryTitle:Ljava/lang/String;
    const-string v3, "labelRes"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1982
    const-string v3, "labelRes"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1984
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1985
    const v3, 0x7f0a00da

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1987
    :cond_1
    return-object v1
.end method

.method public static final obtainCameraTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1990
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1991
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/android/htccontacts/util/ContactsUtils;->obtainActivityTitleRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1992
    .local v0, cameraBundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1993
    .local v1, cameraTitle:Ljava/lang/String;
    const-string v3, "labelRes"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1994
    const-string v3, "labelRes"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1996
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1997
    const v3, 0x7f0a012b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1999
    :cond_1
    return-object v1
.end method

.method public static obtainCompareLeadingChar(Ljava/lang/String;)C
    .locals 2
    .parameter "chars"

    .prologue
    .line 5367
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5368
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 5369
    .local v0, leading:C
    invoke-static {v0}, Lcom/android/htccontacts/util/ContactsUtils;->obtainNormalizeCharacter(C)C

    move-result v1

    .line 5372
    .end local v0           #leading:C
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x23

    goto :goto_0
.end method

.method public static obtainFrequencyConfigTable(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 16
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3875
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3876
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 3877
    .local v6, config:I
    const-string v2, "content://com.android.contacts/frequency/config/query"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3878
    .local v1, QueryConfigUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3879
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3880
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3882
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3883
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 3886
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3887
    const/4 v7, 0x0

    .line 3891
    :cond_1
    if-gtz v6, :cond_2

    .line 3892
    const/16 v6, 0x20

    .line 3895
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3896
    .local v10, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3897
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3898
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3899
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3900
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3901
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3903
    move v14, v6

    .line 3904
    .local v14, temp:I
    const/4 v12, 0x1

    .line 3905
    .local v12, mask:I
    const/4 v13, 0x0

    .line 3906
    .local v13, result:I
    const/4 v9, 0x0

    .line 3907
    .local v9, index:I
    const/4 v8, 0x6

    .local v8, i:I
    :goto_0
    const/4 v2, 0x1

    if-lt v8, v2, :cond_4

    .line 3908
    and-int/lit8 v13, v14, 0x1

    .line 3909
    add-int/lit8 v9, v8, -0x1

    .line 3910
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 3911
    .local v15, v:I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez v13, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3912
    shr-int/lit8 v14, v14, 0x1

    .line 3907
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3886
    .end local v8           #i:I
    .end local v9           #index:I
    .end local v10           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #mask:I
    .end local v13           #result:I
    .end local v14           #temp:I
    .end local v15           #v:I
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3887
    const/4 v7, 0x0

    throw v2

    .line 3911
    .restart local v8       #i:I
    .restart local v9       #index:I
    .restart local v10       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12       #mask:I
    .restart local v13       #result:I
    .restart local v14       #temp:I
    .restart local v15       #v:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 3914
    .end local v15           #v:I
    :cond_4
    return-object v11
.end method

.method public static obtainHangulLeading(C)C
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 5341
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->decomposeHangul(C)Ljava/lang/String;

    move-result-object v1

    .line 5342
    .local v1, decomposed:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5343
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 5344
    const/16 v4, 0x3131

    if-lt p0, v4, :cond_0

    const/16 v4, 0x3163

    if-gt p0, v4, :cond_0

    .line 5345
    add-int/lit16 v3, p0, -0x3131

    .line 5346
    .local v3, index:I
    if-ltz v3, :cond_0

    sget-object v4, Lcom/android/htccontacts/util/ContactsUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 5347
    sget-object v4, Lcom/android/htccontacts/util/ContactsUtils;->KOREAN_JAUM_CONVERT_MAP:[I

    aget v2, v4, v3

    .line 5348
    .local v2, hangulCode:I
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 5349
    .local v0, chars:[C
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 5350
    aget-char p0, v0, v5

    .line 5355
    .end local v0           #chars:[C
    .end local v2           #hangulCode:I
    .end local v3           #index:I
    :cond_0
    return p0
.end method

.method public static obtainNormalizeCharacter(C)C
    .locals 2
    .parameter "s"

    .prologue
    .line 5359
    move v0, p0

    .line 5360
    .local v0, result:C
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isHangulOrJamo(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5361
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->obtainHangulLeading(C)C

    move-result v0

    .line 5363
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .parameter "date"

    .prologue
    .line 541
    const/4 v3, 0x0

    .line 542
    .local v3, calendar:Ljava/util/Calendar;
    if-eqz p0, :cond_0

    .line 545
    :try_start_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 546
    .local v5, time:Landroid/text/format/Time;
    const-string v6, "-"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    invoke-virtual {v5, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 563
    :goto_0
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 564
    .local v1, UTC:Ljava/util/TimeZone;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 566
    .local v0, Current:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 569
    .local v2, cal:Ljava/util/Calendar;
    iget-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 570
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 579
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 587
    move-object v3, v2

    .line 593
    .end local v0           #Current:Ljava/util/TimeZone;
    .end local v1           #UTC:Ljava/util/TimeZone;
    .end local v2           #cal:Ljava/util/Calendar;
    .end local v5           #time:Landroid/text/format/Time;
    :cond_0
    :goto_2
    return-object v3

    .line 550
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_1
    invoke-virtual {v5, p0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    .end local v5           #time:Landroid/text/format/Time;
    :catch_0
    move-exception v4

    .line 590
    .local v4, e:Landroid/util/TimeFormatException;
    const-string v6, "ContactsUtils"

    const-string v7, "parseDate"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 572
    .end local v4           #e:Landroid/util/TimeFormatException;
    .restart local v0       #Current:Ljava/util/TimeZone;
    .restart local v1       #UTC:Ljava/util/TimeZone;
    .restart local v2       #cal:Ljava/util/Calendar;
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_2
    :try_start_1
    iget-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v7, "UTC"

    if-ne v6, v7, :cond_3

    .line 573
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 576
    :cond_3
    iget-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static pauseEASSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 2296
    const-string v0, "com.android.htccontacts"

    invoke-static {p0, v0}, Lcom/android/htccontacts/util/ContactsUtils;->pauseEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 2297
    return-void
.end method

.method public static pauseEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "tag"

    .prologue
    .line 2290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.pauseSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2291
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2292
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2293
    return-void
.end method

.method public static queryContactEntities(Landroid/content/Context;JZ)Ljava/util/ArrayList;
    .locals 22
    .parameter "context"
    .parameter "contactId"
    .parameter "onlyEditable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5739
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5740
    .local v14, entitiesContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v4, p1

    if-ltz v2, :cond_1

    .line 5741
    :cond_0
    const-string v2, "ContactsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactEntities invalid parameter context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 5785
    .end local v14           #entitiesContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .local v15, entitiesContact:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_0
    return-object v15

    .line 5744
    .end local v15           #entitiesContact:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v14       #entitiesContact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_1
    const/16 v20, 0x0

    .line 5745
    .local v20, readyOnlyTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    if-eqz p3, :cond_2

    .line 5746
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v21

    .line 5747
    .local v21, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual/range {v21 .. v21}, Lcom/android/htccontacts/model/AccountTypeManager;->getUnEditableSyncSourcesTypes()Ljava/util/ArrayList;

    move-result-object v20

    .line 5749
    .end local v21           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    .line 5750
    .local v17, lookupUri:Landroid/net/Uri;
    if-nez v17, :cond_3

    .line 5751
    const-string v2, "ContactsUtils"

    const-string v4, "queryContactEntities lookupUri null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 5752
    .restart local v15       #entitiesContact:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    goto :goto_0

    .line 5754
    .end local v15           #entitiesContact:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_3
    const-string v2, "entities"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5755
    .local v3, entityUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5756
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_9

    .line 5758
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5759
    const-wide/16 v9, -0x1

    .line 5760
    .local v9, currentRawContactId:J
    const/16 v16, 0x0

    .line 5761
    .local v16, entity:Landroid/content/Entity;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5762
    .local v13, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5763
    if-eqz p3, :cond_5

    if-eqz v20, :cond_5

    .line 5764
    const/16 v2, 0x10

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x11

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v8

    .line 5765
    .local v8, ad:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5762
    .end local v8           #ad:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :cond_4
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 5769
    :cond_5
    const/16 v2, 0xe

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 5770
    .local v18, rawContactId:J
    cmp-long v2, v18, v9

    if-eqz v2, :cond_6

    .line 5771
    move-wide/from16 v9, v18

    .line 5772
    new-instance v16, Landroid/content/Entity;

    .end local v16           #entity:Landroid/content/Entity;
    invoke-static {v11}, Lcom/android/htccontacts/util/ContactsUtils;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 5773
    .restart local v16       #entity:Landroid/content/Entity;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5775
    :cond_6
    const/16 v2, 0x1c

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5776
    invoke-static {v11}, Lcom/android/htccontacts/util/ContactsUtils;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v12

    .line 5777
    .local v12, data:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v12}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_2

    .line 5780
    .end local v12           #data:Landroid/content/ContentValues;
    .end local v18           #rawContactId:J
    :cond_7
    move-object v14, v13

    .line 5782
    .end local v9           #currentRawContactId:J
    .end local v13           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v16           #entity:Landroid/content/Entity;
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5783
    const/4 v11, 0x0

    :cond_9
    move-object v15, v14

    .line 5785
    .restart local v15       #entitiesContact:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    goto/16 :goto_0
.end method

.method public static queryContactInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 28
    .parameter "context"
    .parameter "contactUri"

    .prologue
    .line 5100
    if-nez p1, :cond_0

    .line 5101
    const/4 v10, 0x0

    .line 5176
    :goto_0
    return-object v10

    .line 5103
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 5104
    .local v8, _id:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "lookup"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "photo_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "starred"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "custom_ringtone"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "contact_presence"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "send_to_voicemail"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "vip"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "default_action"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "contact_chat_capability"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "status_update_id"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "ext_account_Type"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 5121
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 5123
    const/16 v21, 0x0

    .line 5124
    .local v21, lookupKey:Ljava/lang/String;
    const/16 v16, 0x0

    .line 5125
    .local v16, displayName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 5126
    .local v25, ringtonePath:Ljava/lang/String;
    const/4 v15, 0x0

    .line 5127
    .local v15, defaultAction:Ljava/lang/String;
    const/16 v17, 0x0

    .line 5128
    .local v17, extAccountType:Ljava/lang/String;
    const/16 v18, 0x0

    .line 5129
    .local v18, isFavorite:Z
    const/16 v19, 0x0

    .line 5130
    .local v19, isSendToVoiceMail:Z
    const/16 v20, 0x0

    .line 5131
    .local v20, isVIP:Z
    const-wide/16 v13, 0x0

    .line 5132
    .local v13, contactId:J
    const-wide/16 v22, 0x0

    .line 5133
    .local v22, photoId:J
    const-wide/16 v26, 0x0

    .line 5134
    .local v26, statusUpdateId:J
    const/16 v24, -0x1

    .line 5135
    .local v24, presence:I
    const/4 v12, -0x1

    .line 5136
    .local v12, chatCapability:I
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5137
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 5138
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 5139
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 5140
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 5141
    const-wide/16 v2, 0x1

    const/4 v4, 0x4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/16 v18, 0x1

    .line 5142
    :goto_1
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 5143
    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5144
    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 5146
    :cond_1
    const/4 v2, 0x7

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    const/16 v19, 0x1

    .line 5147
    :goto_2
    const/16 v2, 0x8

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_5

    const/16 v20, 0x1

    .line 5148
    :goto_3
    const/16 v2, 0x9

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5149
    const/16 v2, 0xa

    invoke-interface {v11, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5150
    const/16 v2, 0xa

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 5152
    :cond_2
    const/16 v2, 0xb

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 5153
    const/16 v2, 0xc

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5155
    new-instance v10, Landroid/os/Bundle;

    const/16 v2, 0xc

    invoke-direct {v10, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 5156
    .local v10, b:Landroid/os/Bundle;
    const-string v2, "_id"

    invoke-virtual {v10, v2, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5157
    const-string v2, "lookup"

    move-object/from16 v0, v21

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5158
    const-string v2, "photo_id"

    move-wide/from16 v0, v22

    invoke-virtual {v10, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5159
    const-string v2, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    const-string v2, "starred"

    move/from16 v0, v18

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5161
    const-string v2, "custom_ringtone"

    move-object/from16 v0, v25

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5162
    const-string v2, "contact_presence"

    move/from16 v0, v24

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5163
    const-string v2, "send_to_voicemail"

    move/from16 v0, v19

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5164
    const-string v2, "vip"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5165
    const-string v2, "default_action"

    invoke-virtual {v10, v2, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5166
    const-string v2, "contact_chat_capability"

    invoke-virtual {v10, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5167
    const-string v2, "status_update_id"

    move-wide/from16 v0, v26

    invoke-virtual {v10, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5168
    const-string v2, "ext_account_Type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5173
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5141
    .end local v10           #b:Landroid/os/Bundle;
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 5146
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 5147
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 5173
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 5176
    .end local v12           #chatCapability:I
    .end local v13           #contactId:J
    .end local v15           #defaultAction:Ljava/lang/String;
    .end local v16           #displayName:Ljava/lang/String;
    .end local v17           #extAccountType:Ljava/lang/String;
    .end local v18           #isFavorite:Z
    .end local v19           #isSendToVoiceMail:Z
    .end local v20           #isVIP:Z
    .end local v21           #lookupKey:Ljava/lang/String;
    .end local v22           #photoId:J
    .end local v24           #presence:I
    .end local v25           #ringtonePath:Ljava/lang/String;
    .end local v26           #statusUpdateId:J
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 5173
    .restart local v12       #chatCapability:I
    .restart local v13       #contactId:J
    .restart local v15       #defaultAction:Ljava/lang/String;
    .restart local v16       #displayName:Ljava/lang/String;
    .restart local v17       #extAccountType:Ljava/lang/String;
    .restart local v18       #isFavorite:Z
    .restart local v19       #isSendToVoiceMail:Z
    .restart local v20       #isVIP:Z
    .restart local v21       #lookupKey:Ljava/lang/String;
    .restart local v22       #photoId:J
    .restart local v24       #presence:I
    .restart local v25       #ringtonePath:Ljava/lang/String;
    .restart local v26       #statusUpdateId:J
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 8
    .parameter "cr"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1154
    const/4 v6, 0x0

    .line 1155
    .local v6, rawContactIdCursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    .local v7, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1160
    if-eqz v6, :cond_1

    .line 1161
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1166
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 1167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1166
    :cond_1
    if-eqz v6, :cond_2

    .line 1167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1170
    :cond_2
    return-object v7
.end method

.method public static queryForContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "rawContactId"

    .prologue
    .line 1092
    const/4 v8, 0x0

    .line 1093
    .local v8, contactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 1095
    .local v6, contactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1098
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 1102
    :cond_0
    if-eqz v8, :cond_1

    .line 1103
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1106
    :cond_1
    return-wide v6

    .line 1102
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 1103
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryForRawContactId(Landroid/content/ContentResolver;J)J
    .locals 9
    .parameter "cr"
    .parameter "contactId"

    .prologue
    .line 1135
    const/4 v8, 0x0

    .line 1136
    .local v8, rawContactIdCursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 1138
    .local v6, rawContactId:J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1141
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 1146
    :cond_0
    if-eqz v8, :cond_1

    .line 1147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1150
    :cond_1
    return-wide v6

    .line 1146
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 1147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 19
    .parameter "context"
    .parameter "profileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5703
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5704
    .local v13, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p2}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5705
    :cond_0
    const-string v2, "ContactsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryProfileEntities invalid parameter context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v13

    .line 5735
    .end local v13           #entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .local v14, entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_0
    return-object v14

    .line 5708
    .end local v14           #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v13       #entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 5709
    .local v16, lookupUri:Landroid/net/Uri;
    if-nez v16, :cond_2

    move-object v14, v13

    .restart local v14       #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    goto :goto_0

    .line 5710
    .end local v14           #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :cond_2
    const-string v2, "entities"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5711
    .local v3, entityUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/htccontacts/util/ContactsUtils$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5712
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_7

    .line 5714
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5715
    const-wide/16 v8, -0x1

    .line 5716
    .local v8, currentRawContactId:J
    const/4 v15, 0x0

    .line 5717
    .local v15, entity:Landroid/content/Entity;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5718
    .local v12, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5719
    const/16 v2, 0xe

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 5720
    .local v17, rawContactId:J
    cmp-long v2, v17, v8

    if-eqz v2, :cond_3

    .line 5721
    move-wide/from16 v8, v17

    .line 5722
    new-instance v15, Landroid/content/Entity;

    .end local v15           #entity:Landroid/content/Entity;
    invoke-static {v10}, Lcom/android/htccontacts/util/ContactsUtils;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 5723
    .restart local v15       #entity:Landroid/content/Entity;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5725
    :cond_3
    const/16 v2, 0x1c

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 5726
    invoke-static {v10}, Lcom/android/htccontacts/util/ContactsUtils;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v11

    .line 5727
    .local v11, data:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 5718
    .end local v11           #data:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 5730
    .end local v17           #rawContactId:J
    :cond_5
    move-object v13, v12

    .line 5732
    .end local v8           #currentRawContactId:J
    .end local v12           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v15           #entity:Landroid/content/Entity;
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5733
    const/4 v10, 0x0

    :cond_7
    move-object v14, v13

    .line 5735
    .restart local v14       #entitiesMy:Ljava/lang/Object;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    goto :goto_0
.end method

.method public static querySuggestCount(Landroid/content/Context;J)I
    .locals 8
    .parameter "context"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 5076
    const/4 v7, 0x0

    .line 5078
    .local v7, suggestCount:I
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Suggestion;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 5080
    .local v1, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5081
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 5083
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 5086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5093
    :goto_0
    return v7

    .line 5086
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 5090
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static querySuggestCount(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 3
    .parameter "context"
    .parameter "contactUri"

    .prologue
    .line 5066
    if-nez p1, :cond_0

    .line 5067
    const/4 v2, 0x0

    .line 5070
    :goto_0
    return v2

    .line 5069
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 5070
    .local v0, contactId:J
    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->querySuggestCount(Landroid/content/Context;J)I

    move-result v2

    goto :goto_0
.end method

.method public static querySuperPrimaryPhone(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .parameter "cr"
    .parameter "contactId"

    .prologue
    .line 1111
    const/4 v7, 0x0

    .line 1112
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1114
    .local v8, phone:Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1115
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1117
    .local v1, dataUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data1"

    aput-object v3, v2, v0

    const-string v3, "mimetype=mimetype AND is_super_primary=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1122
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1127
    :cond_0
    if-eqz v7, :cond_1

    .line 1128
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1131
    :cond_1
    return-object v8

    .line 1127
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v6           #baseUri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 1128
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static readEntities(Landroid/content/EntityIterator;)Ljava/util/ArrayList;
    .locals 2
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/EntityIterator;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1896
    .local v0, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz p0, :cond_0

    .line 1897
    :goto_0
    invoke-interface {p0}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1898
    invoke-interface {p0}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1901
    :cond_0
    return-object v0
.end method

.method public static final refineSQLSelectionKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "selection"

    .prologue
    .line 2101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2102
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2103
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2104
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2105
    .local v1, c:C
    const/16 v4, 0x27

    if-ne v1, v4, :cond_0

    .line 2106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2108
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2103
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2110
    .end local v1           #c:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static restrainSIMTextViewLength(Landroid/widget/TextView;I)V
    .locals 9
    .parameter "view"
    .parameter "MAX_OCTET_NUMB"

    .prologue
    .line 3130
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 3177
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    new-instance v3, Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;

    invoke-direct {v3, p1}, Lcom/android/htccontacts/util/ContactsUtils$SIMCharacterLengthFilter;-><init>(I)V

    .line 3133
    .local v3, newFilter:Landroid/text/InputFilter;
    invoke-static {p0, v3}, Lcom/android/htccontacts/util/ContactsUtils;->addInputFilterToTextView(Landroid/widget/TextView;Landroid/text/InputFilter;)V

    .line 3135
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3138
    .local v5, temp:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 3141
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3142
    .local v6, text:Ljava/lang/String;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 3143
    .local v4, originalLen:I
    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsUtils;->isContainDoubleByteChars(Ljava/lang/String;)I

    move-result v2

    .line 3144
    .local v2, firstDoubleByte:I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_7

    .line 3149
    add-int/lit8 v7, p1, -0x1

    div-int/lit8 v7, v7, 0x2

    if-ge v2, v7, :cond_3

    .line 3150
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    add-int/lit8 v8, p1, -0x1

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 3151
    .local v1, end:I
    :goto_1
    if-ltz v1, :cond_0

    if-ge v1, v4, :cond_0

    .line 3152
    invoke-interface {v0, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 3150
    .end local v1           #end:I
    :cond_2
    add-int/lit8 v7, p1, -0x1

    div-int/lit8 v1, v7, 0x2

    goto :goto_1

    .line 3154
    :cond_3
    add-int/lit8 v7, p1, -0x1

    if-ge v2, v7, :cond_5

    .line 3155
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 3156
    .restart local v1       #end:I
    :goto_2
    if-ltz v1, :cond_0

    if-ge v1, v4, :cond_0

    .line 3157
    invoke-interface {v0, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .end local v1           #end:I
    :cond_4
    move v1, v2

    .line 3155
    goto :goto_2

    .line 3160
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, p1, -0x1

    if-ge v7, v8, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 3161
    .restart local v1       #end:I
    :goto_3
    if-ltz v1, :cond_0

    if-ge v1, v4, :cond_0

    .line 3162
    invoke-interface {v0, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 3160
    .end local v1           #end:I
    :cond_6
    add-int/lit8 v1, p1, -0x1

    goto :goto_3

    .line 3167
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, p1, :cond_0

    .line 3168
    move v1, p1

    .line 3169
    .restart local v1       #end:I
    if-ltz v1, :cond_0

    if-ge v1, v4, :cond_0

    .line 3170
    invoke-interface {v0, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto/16 :goto_0
.end method

.method public static restrainTextViewLength(Landroid/widget/TextView;I)V
    .locals 3
    .parameter "view"
    .parameter "length"

    .prologue
    .line 3219
    if-eqz p0, :cond_0

    if-gez p1, :cond_1

    .line 3228
    :cond_0
    :goto_0
    return-void

    .line 3221
    :cond_1
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 3222
    .local v1, newFilter:Landroid/text/InputFilter;
    invoke-static {p0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->addInputFilterToTextView(Landroid/widget/TextView;Landroid/text/InputFilter;)V

    .line 3224
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 3225
    .local v0, editable:Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 3226
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public static resumeEASSync(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2307
    const-string v0, "com.android.htccontacts"

    const/16 v1, 0x2710

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->resumeEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2308
    return-void
.end method

.method public static resumeEASSyncWithTag(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "tag"
    .parameter "delay"

    .prologue
    .line 2300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.resumeSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2301
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2302
    const-string v1, "com.htc.eas.extra.delayTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2303
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2304
    return-void
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 3
    .parameter "context"
    .parameter "iv"
    .parameter "nSrcID"

    .prologue
    .line 1754
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1755
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 1757
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1758
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1760
    invoke-static {p0, p1, v1}, Lcom/android/htccontacts/util/ContactsUtils;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1764
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "context"
    .parameter "iv"
    .parameter "bmSrc"

    .prologue
    .line 1768
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    invoke-static {p2}, Lcom/android/htccontacts/util/ContactsUtils;->getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1770
    .local v0, bmCenterCropThumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getPeoplePhotoMaskBgResourceId(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1771
    .local v1, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1772
    if-eqz v0, :cond_2

    .line 1774
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1775
    const/4 v0, 0x0

    .line 1777
    :cond_2
    const/4 v1, 0x0

    .line 1778
    goto :goto_0
.end method

.method public static setApplyMaskBitmapToImageViewForSelectionPhoto(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 3
    .parameter "context"
    .parameter "iv"
    .parameter "nSrcID"

    .prologue
    .line 1783
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1784
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1787
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1789
    invoke-static {p0, p1, v1}, Lcom/android/htccontacts/util/ContactsUtils;->setApplyMaskBitmapToImageViewForSelectionPhoto(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 1793
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static setApplyMaskBitmapToImageViewForSelectionPhoto(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "context"
    .parameter "iv"
    .parameter "bmSrc"

    .prologue
    .line 1797
    invoke-static {p2}, Lcom/android/htccontacts/util/ContactsUtils;->getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1798
    .local v0, bmCenterCropThumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0}, Lcom/android/htccontacts/customize/CustomizeResource;->getSelectPhotoMaskBgResourceId(Landroid/content/Context;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/htccontacts/util/ContactsUtils;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1799
    .local v1, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1800
    if-eqz v0, :cond_0

    .line 1802
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1803
    const/4 v0, 0x0

    .line 1805
    :cond_0
    const/4 v1, 0x0

    .line 1806
    return-void
.end method

.method public static setFontSize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 234
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->initFontSizeIndex(Landroid/content/Context;)V

    .line 235
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->updateFontConf(Landroid/content/Context;)V

    .line 236
    return-void
.end method

.method public static setFontSize(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "index"

    .prologue
    .line 239
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->initFontSizeIndex(Landroid/content/Context;)V

    .line 240
    sget v1, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    if-eq v1, p1, :cond_0

    .line 241
    sput p1, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    .line 242
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Font_Size_Index"

    sget v2, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->updateFontConf(Landroid/content/Context;)V

    .line 248
    const/4 v1, 0x1

    .line 250
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shareMyContactCard(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "myContactContactId"

    .prologue
    .line 4543
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4544
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.htccontacts.ACTION_SEND_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4545
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "text/x-vCard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4546
    const-string v2, "isMyContactCard"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4547
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4548
    return-void
.end method

.method public static final shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .parameter "context"
    .parameter "mimetype1"
    .parameter "data1"
    .parameter "mimetype2"
    .parameter "data2"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3950
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v5, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3952
    if-ne p2, p4, :cond_1

    .line 3979
    :cond_0
    :goto_0
    return v3

    .line 3955
    :cond_1
    if-eqz p2, :cond_2

    if-nez p4, :cond_3

    :cond_2
    move v3, v4

    .line 3956
    goto :goto_0

    .line 3963
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/htccontacts/util/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3964
    .local v0, dataParts1:[Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/htccontacts/util/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3965
    .local v1, dataParts2:[Ljava/lang/String;
    array-length v5, v0

    array-length v6, v1

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 3966
    goto :goto_0

    .line 3968
    :cond_4
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 3969
    aget-object v5, v0, v2

    aget-object v6, v1, v2

    invoke-static {p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    .line 3970
    goto :goto_0

    .line 3968
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3976
    .end local v0           #dataParts1:[Ljava/lang/String;
    .end local v1           #dataParts2:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_6
    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_0

    .line 3979
    :cond_7
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_0
.end method

.method public static showAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 2747
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsUtils;->showAuthenticatorInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;

    move-result-object v0

    .line 2748
    .local v0, info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    const/4 v1, 0x0

    .line 2749
    .local v1, label:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2750
    iget-object v1, v0, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->title:Ljava/lang/String;

    .line 2752
    :cond_0
    return-object v1
.end method

.method public static showAccountLabelForListView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 2757
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v3

    .line 2758
    .local v3, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v3, p0, p1, p2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2760
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v2, v1

    .line 2771
    .end local v1           #label:Ljava/lang/String;
    .local v2, label:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2765
    .end local v2           #label:Ljava/lang/String;
    .restart local v1       #label:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/util/ContactsUtils;->showAuthenticatorInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;

    move-result-object v0

    .line 2767
    .local v0, info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    if-eqz v0, :cond_1

    .line 2769
    iget-object v1, v0, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->title:Ljava/lang/String;

    :cond_1
    move-object v2, v1

    .line 2771
    .end local v1           #label:Ljava/lang/String;
    .restart local v2       #label:Ljava/lang/String;
    goto :goto_0
.end method

.method public static showAuthenticatorInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 2776
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 2777
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getCountactSyncSourcesInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 2778
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;>;"
    const/4 v3, 0x0

    .line 2779
    .local v3, result:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;

    .line 2780
    .local v1, info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    iget-object v5, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->type:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->type:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->dataSet:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2781
    move-object v3, v1

    .line 2785
    .end local v1           #info:Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
    :cond_1
    return-object v3
.end method

.method public static final simSupportEmailLength(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2527
    if-nez p0, :cond_0

    .line 2528
    const/4 v0, 0x1

    .line 2532
    :goto_0
    return v0

    .line 2530
    :cond_0
    const-string v1, "gsm.usim.email.length"

    const/16 v2, 0x28

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2532
    .local v0, simEmailCount:I
    goto :goto_0
.end method

.method public static final simSupportEmailNum(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2508
    if-nez p0, :cond_0

    .line 2509
    const/4 v0, 0x1

    .line 2515
    :goto_0
    return v0

    .line 2512
    :cond_0
    const-string v1, "gsm.usim.email.max-no"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2515
    .local v0, simEmailCount:I
    goto :goto_0
.end method

.method public static final simSupportPhoneLength(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2519
    const-string v1, "gsm.usim.number.length"

    const/16 v2, 0x28

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2523
    .local v0, simEmailCount:I
    return v0
.end method

.method public static final simSupportPhoneNum(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 2493
    if-nez p0, :cond_0

    .line 2494
    const/4 v0, 0x1

    .line 2503
    :goto_0
    return v0

    .line 2496
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2500
    .local v1, telephonyMgr:Landroid/telephony/TelephonyManager;
    const-string v2, "gsm.usim.anr.max-no"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 2503
    .local v0, simPhoneNumberCount:I
    goto :goto_0
.end method

.method public static triggerExchangeSyc(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.eas.syncContacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3592
    .local v0, service:Landroid/content/Intent;
    const-string v1, "localsync"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3593
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3594
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3595
    return-void
.end method

.method public static trimSIMCharEditable(Landroid/text/Editable;I)Landroid/text/Editable;
    .locals 8
    .parameter "s"
    .parameter "MAX_OCTET_NUMBER"

    .prologue
    .line 3028
    move-object v1, p0

    .line 3029
    .local v1, editable:Landroid/text/Editable;
    if-lez p1, :cond_0

    .line 3030
    move v0, p1

    .line 3031
    .local v0, MAX_OCTET_NUMB:I
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3032
    .local v5, text:Ljava/lang/String;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    .line 3033
    .local v4, originalLen:I
    invoke-static {v5}, Lcom/android/htccontacts/util/ContactsUtils;->isContainDoubleByteChars(Ljava/lang/String;)I

    move-result v3

    .line 3034
    .local v3, firstDoubleByte:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    .line 3039
    add-int/lit8 v6, v0, -0x1

    div-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_2

    .line 3040
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 3041
    .local v2, end:I
    :goto_0
    if-ltz v2, :cond_0

    if-ge v2, v4, :cond_0

    .line 3042
    invoke-interface {v1, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 3067
    .end local v0           #MAX_OCTET_NUMB:I
    .end local v2           #end:I
    .end local v3           #firstDoubleByte:I
    .end local v4           #originalLen:I
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 3040
    .restart local v0       #MAX_OCTET_NUMB:I
    .restart local v3       #firstDoubleByte:I
    .restart local v4       #originalLen:I
    .restart local v5       #text:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v0, -0x1

    div-int/lit8 v2, v6, 0x2

    goto :goto_0

    .line 3044
    :cond_2
    add-int/lit8 v6, v0, -0x1

    if-ge v3, v6, :cond_4

    .line 3045
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v3, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 3046
    .restart local v2       #end:I
    :goto_2
    if-ltz v2, :cond_0

    if-ge v2, v4, :cond_0

    .line 3047
    invoke-interface {v1, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .end local v2           #end:I
    :cond_3
    move v2, v3

    .line 3045
    goto :goto_2

    .line 3050
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 3051
    .restart local v2       #end:I
    :goto_3
    if-ltz v2, :cond_0

    if-ge v2, v4, :cond_0

    .line 3052
    invoke-interface {v1, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 3050
    .end local v2           #end:I
    :cond_5
    add-int/lit8 v2, v0, -0x1

    goto :goto_3

    .line 3057
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_0

    .line 3058
    move v2, v0

    .line 3059
    .restart local v2       #end:I
    if-ltz v2, :cond_0

    if-ge v2, v4, :cond_0

    .line 3060
    invoke-interface {v1, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1
.end method

.method public static trimSIMCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"
    .parameter "MAX_OCTET_NUMBER"

    .prologue
    const/4 v6, 0x0

    .line 2997
    const/4 v3, 0x0

    .line 2998
    .local v3, rtn:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2999
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->isContainDoubleByteChars(Ljava/lang/String;)I

    move-result v1

    .line 3000
    .local v1, firstDoubleByte:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 3005
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3006
    .local v0, end:I
    add-int/lit8 v4, p1, -0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_1

    .line 3007
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3013
    :goto_0
    invoke-interface {p0, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3024
    :goto_1
    return-object v3

    .line 3007
    :cond_0
    add-int/lit8 v4, p1, -0x1

    div-int/lit8 v0, v4, 0x2

    goto :goto_0

    .line 3008
    :cond_1
    add-int/lit8 v4, p1, -0x1

    if-ge v1, v4, :cond_3

    .line 3009
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v4, v1, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 3011
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v5, p1, -0x1

    if-ge v4, v5, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_3
    goto :goto_0

    :cond_4
    add-int/lit8 v0, p1, -0x1

    goto :goto_3

    .line 3016
    .end local v0           #end:I
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3018
    .restart local v0       #end:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, p1, :cond_6

    .line 3019
    invoke-interface {p0, v6, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 3021
    :cond_6
    move-object v3, p0

    goto :goto_1
.end method

.method public static trimSIMText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "name"
    .parameter "MAX_OCTET_NUMBER"

    .prologue
    const/4 v5, 0x0

    .line 2967
    const/4 v2, 0x0

    .line 2968
    .local v2, rtn:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isContainDoubleByteChars(Ljava/lang/String;)I

    move-result v1

    .line 2969
    .local v1, firstDoubleByte:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 2974
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_1

    .line 2975
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p1, -0x1

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2976
    .local v0, end:I
    :goto_0
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2993
    .end local v0           #end:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2975
    :cond_0
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v0, v3, 0x2

    goto :goto_0

    .line 2977
    :cond_1
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_3

    .line 2978
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2979
    .restart local v0       #end:I
    :goto_2
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2980
    goto :goto_1

    .end local v0           #end:I
    :cond_2
    move v0, v1

    .line 2978
    goto :goto_2

    .line 2981
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2982
    .restart local v0       #end:I
    :goto_3
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2983
    goto :goto_1

    .line 2981
    .end local v0           #end:I
    :cond_4
    add-int/lit8 v0, p1, -0x1

    goto :goto_3

    .line 2986
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p1, :cond_6

    .line 2987
    invoke-virtual {p0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2989
    :cond_6
    move-object v2, p0

    goto :goto_1
.end method

.method public static unRestrainTextViewLength(Landroid/widget/TextView;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 3185
    if-nez p0, :cond_1

    .line 3210
    :cond_0
    :goto_0
    return-void

    .line 3186
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    .line 3187
    .local v2, filters:[Landroid/text/InputFilter;
    array-length v3, v2

    .line 3188
    .local v3, filtersCount:I
    if-eqz v2, :cond_0

    if-lez v3, :cond_0

    .line 3189
    const/4 v0, 0x0

    .line 3190
    .local v0, LengthFilterCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 3191
    aget-object v1, v2, v4

    .line 3192
    .local v1, filter:Landroid/text/InputFilter;
    if-eqz v1, :cond_2

    instance-of v8, v1, Landroid/text/InputFilter$LengthFilter;

    if-eqz v8, :cond_2

    .line 3193
    add-int/lit8 v0, v0, 0x1

    .line 3190
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3196
    .end local v1           #filter:Landroid/text/InputFilter;
    :cond_3
    sub-int v8, v3, v0

    new-array v5, v8, [Landroid/text/InputFilter;

    .line 3197
    .local v5, newfilters:[Landroid/text/InputFilter;
    if-eqz v5, :cond_5

    array-length v8, v5

    if-lez v8, :cond_5

    .line 3198
    const/4 v6, 0x0

    .line 3199
    .local v6, newfiltersIndex:I
    const/4 v4, 0x0

    move v7, v6

    .end local v6           #newfiltersIndex:I
    .local v7, newfiltersIndex:I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 3200
    aget-object v1, v2, v4

    .line 3201
    .restart local v1       #filter:Landroid/text/InputFilter;
    if-eqz v1, :cond_6

    instance-of v8, v1, Landroid/text/InputFilter$LengthFilter;

    if-nez v8, :cond_6

    .line 3202
    add-int/lit8 v6, v7, 0x1

    .end local v7           #newfiltersIndex:I
    .restart local v6       #newfiltersIndex:I
    aput-object v1, v5, v7

    .line 3199
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #newfiltersIndex:I
    .restart local v7       #newfiltersIndex:I
    goto :goto_2

    .line 3205
    .end local v1           #filter:Landroid/text/InputFilter;
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 3207
    .end local v7           #newfiltersIndex:I
    :cond_5
    const/4 v8, 0x0

    new-array v8, v8, [Landroid/text/InputFilter;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .restart local v1       #filter:Landroid/text/InputFilter;
    .restart local v7       #newfiltersIndex:I
    :cond_6
    move v6, v7

    .end local v7           #newfiltersIndex:I
    .restart local v6       #newfiltersIndex:I
    goto :goto_3
.end method

.method public static final updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V
    .locals 6
    .parameter "activity"
    .parameter "contactInfo"

    .prologue
    .line 1635
    const v2, 0x7f070016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 1637
    .local v1, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    iget-wide v2, p1, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/16 v2, 0x3e7

    iget v3, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    if-eq v2, v3, :cond_1

    iget v2, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/htccontacts/HtcContactInfoBase;->isSimType()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1640
    iget v2, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mSuggestCount:I

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkSuggestBubble(I)V

    .line 1642
    :try_start_0
    iget-object v2, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1646
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkImage(I)V

    .line 1650
    :goto_0
    iget-object v2, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :goto_1
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v2

    new-instance v3, Lcom/android/htccontacts/util/ContactsUtils$3;

    invoke-direct {v3, p0, p1}, Lcom/android/htccontacts/util/ContactsUtils$3;-><init>(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1665
    :goto_2
    return-void

    .line 1648
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setLinkImage(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ContactsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "linkIcon: setBackgroundResource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1662
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getLinkView()Lcom/htc/widget/HeaderBarImage;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_2
.end method

.method public static final updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V
    .locals 12
    .parameter "activity"
    .parameter "contactInfo"
    .parameter "category"

    .prologue
    .line 1589
    if-nez p0, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    if-eqz p1, :cond_0

    .line 1599
    const/4 v11, 0x0

    .line 1600
    .local v11, titleName:Ljava/lang/String;
    instance-of v0, p1, Lcom/android/htccontacts/HtcContactInfoUnknown;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1602
    check-cast v0, Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v10

    .line 1603
    .local v10, defaultNumber:Ljava/lang/String;
    sget-boolean v0, Lcom/android/htccontacts/HtcFeatureList;->FEATURE_N11:Z

    if-eqz v0, :cond_4

    .line 1604
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1622
    .end local v10           #defaultNumber:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1624
    iput-object v11, p1, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 1626
    :cond_3
    iget-object v1, p1, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    iget v2, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mPresence:I

    iget v3, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mChatCapability:I

    iget-object v4, p1, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/htccontacts/HtcContactInfoBase;->isAllSimAccountTyupe()Z

    move-result v7

    invoke-virtual {p1}, Lcom/android/htccontacts/HtcContactInfoBase;->isMyPhonebookType()Z

    move-result v8

    invoke-virtual {p1}, Lcom/android/htccontacts/HtcContactInfoBase;->isUnknownType()Z

    move-result v9

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v9}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V

    goto :goto_0

    .line 1607
    .restart local v10       #defaultNumber:Ljava/lang/String;
    :cond_4
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_5

    .line 1609
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1611
    :cond_5
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_6

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x14

    if-ne v0, v1, :cond_6

    .line 1614
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1616
    :cond_6
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1618
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getACGServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1
.end method

.method public static final updateContactCardTitle(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZZZ)V
    .locals 8
    .parameter "activity"
    .parameter "displayName"
    .parameter "presence"
    .parameter "chatCapability"
    .parameter "contactTypeLabel"
    .parameter "category"
    .parameter "rawPhoto"
    .parameter "isSimType"
    .parameter "isMyPhonebookType"
    .parameter "isUnknownType"

    .prologue
    .line 1477
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1478
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1480
    const v3, 0x7f070016

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 1482
    .local v1, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    if-nez v1, :cond_0

    .line 1506
    :goto_0
    return-void

    .line 1485
    :cond_0
    invoke-virtual {v1, p1, p5}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderText()Lcom/htc/widget/HeaderBarText;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/htc/widget/HeaderBarText;->setSecondaryRightText(Ljava/lang/String;)V

    .line 1491
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1492
    invoke-virtual {v1, p6}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(Landroid/graphics/Bitmap;)V

    .line 1499
    :goto_1
    new-instance v0, Lcom/android/htccontacts/widget/ImPresence;

    const/4 v3, 0x1

    invoke-direct {v0, p2, p3, v3}, Lcom/android/htccontacts/widget/ImPresence;-><init>(IIZ)V

    .line 1501
    .local v0, imPresence:Lcom/android/htccontacts/widget/ImPresence;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderText()Lcom/htc/widget/HeaderBarText;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/ImPresence;->getPresence()I

    move-result v5

    invoke-static {v5}, Lcom/android/htccontacts/ContactPresenceIconUtil;->HtcGetPresenceIconRes(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryTextCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1493
    .end local v0           #imPresence:Lcom/android/htccontacts/widget/ImPresence;
    :cond_1
    if-eqz p7, :cond_2

    .line 1494
    const v3, 0x208025a

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    goto :goto_1

    .line 1496
    :cond_2
    const v3, 0x2080846

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    goto :goto_1
.end method

.method public static updateFavorite(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "uriContact"
    .parameter "isFavorite"
    .parameter "sDefaultActionInfo"

    .prologue
    const/4 v6, 0x1

    .line 1952
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1953
    .local v4, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 1955
    const-string v5, "starred"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1962
    :goto_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1963
    .local v0, contactFixedId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1964
    .local v2, selection:Ljava/lang/String;
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 1965
    .local v3, updateFavoriteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1968
    if-eqz p2, :cond_1

    .line 1969
    const-string v5, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1974
    :goto_1
    return-void

    .line 1959
    .end local v0           #contactFixedId:J
    .end local v2           #selection:Ljava/lang/String;
    .end local v3           #updateFavoriteUri:Landroid/net/Uri;
    :cond_0
    const-string v5, "starred"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1972
    .restart local v0       #contactFixedId:J
    .restart local v2       #selection:Ljava/lang/String;
    .restart local v3       #updateFavoriteUri:Landroid/net/Uri;
    :cond_1
    const-string v5, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteDeleteionChangeIntent(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private static updateFontConf(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 223
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 224
    .local v0, conf:Landroid/content/res/Configuration;
    sget-object v2, Lcom/android/htccontacts/util/ContactsUtils;->FONT_SIZE:[I

    sget v3, Lcom/android/htccontacts/util/ContactsUtils;->sFontSizeIndex:I

    aget v2, v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontsize:I

    .line 225
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 226
    return-void
.end method

.method public static userProfilingContact(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 4345
    sget-boolean v5, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-nez v5, :cond_1

    .line 4434
    :cond_0
    :goto_0
    return-void

    .line 4348
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4349
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v22

    .line 4350
    .local v22, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v19

    .line 4352
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    const-string v5, "content://com.android.contacts/rawcontact/counts"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4354
    .local v4, queryUri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4356
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_0

    .line 4361
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v23

    .line 4362
    .local v23, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const/4 v13, 0x1

    .line 4365
    .local v13, accountNum:I
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingAppId:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "contact_type"

    invoke-interface {v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4367
    const/16 v21, 0x0

    .line 4368
    .local v21, logValue:Ljava/lang/String;
    const/16 v20, 0x0

    .line 4370
    .local v20, logKey:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4371
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4372
    .local v14, accountType:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 4373
    .local v12, accountName:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 4374
    .local v16, count:I
    const-string v5, "DeviceOnly"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4378
    if-eqz v12, :cond_2

    if-eqz v14, :cond_2

    .line 4382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4383
    move/from16 v0, v16

    invoke-static {v3, v12, v14, v0}, Lcom/android/htccontacts/util/ContactsUtils;->generateProfileULogValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 4385
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4386
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v12, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4387
    add-int/lit8 v13, v13, 0x1

    .line 4392
    goto :goto_1

    .line 4394
    .end local v12           #accountName:Ljava/lang/String;
    .end local v14           #accountType:Ljava/lang/String;
    .end local v16           #count:I
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4397
    const-string v8, "account_name = ? AND account_type=? "

    .line 4398
    .local v8, selection:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    .line 4399
    .local v9, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 4400
    .local v11, account:Landroid/accounts/Account;
    iget-object v12, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 4401
    .restart local v12       #accountName:Ljava/lang/String;
    iget-object v14, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 4403
    .restart local v14       #accountType:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 4404
    const/16 v21, 0x0

    .line 4406
    const/4 v5, 0x0

    aput-object v12, v9, v5

    .line 4407
    const/4 v5, 0x1

    aput-object v14, v9, v5

    .line 4408
    const/16 v17, 0x0

    .line 4410
    .local v17, counts:I
    :try_start_1
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    aput-object v10, v7, v5

    const/4 v10, 0x0

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4412
    if-eqz v15, :cond_4

    .line 4413
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v17

    .line 4416
    :cond_4
    if-eqz v15, :cond_5

    .line 4417
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4420
    :cond_5
    move/from16 v0, v17

    invoke-static {v3, v12, v14, v0}, Lcom/android/htccontacts/util/ContactsUtils;->generateProfileULogValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 4421
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4422
    add-int/lit8 v13, v13, 0x1

    .line 4426
    goto :goto_2

    .line 4394
    .end local v8           #selection:Ljava/lang/String;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v11           #account:Landroid/accounts/Account;
    .end local v12           #accountName:Ljava/lang/String;
    .end local v14           #accountType:Ljava/lang/String;
    .end local v17           #counts:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #logKey:Ljava/lang/String;
    .end local v21           #logValue:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 4416
    .restart local v8       #selection:Ljava/lang/String;
    .restart local v9       #selectionArgs:[Ljava/lang/String;
    .restart local v11       #account:Landroid/accounts/Account;
    .restart local v12       #accountName:Ljava/lang/String;
    .restart local v14       #accountType:Ljava/lang/String;
    .restart local v17       #counts:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #logKey:Ljava/lang/String;
    .restart local v21       #logValue:Ljava/lang/String;
    :catchall_1
    move-exception v5

    if-eqz v15, :cond_6

    .line 4417
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 4430
    .end local v11           #account:Landroid/accounts/Account;
    .end local v12           #accountName:Ljava/lang/String;
    .end local v14           #accountType:Ljava/lang/String;
    .end local v17           #counts:I
    :cond_7
    invoke-static/range {v23 .. v23}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 4431
    invoke-virtual/range {v23 .. v23}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto/16 :goto_0
.end method

.method public static userProfilingGroups(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 4297
    sget-boolean v3, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-nez v3, :cond_0

    .line 4342
    :goto_0
    return-void

    .line 4303
    :cond_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v12

    .line 4304
    .local v12, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    sget-object v3, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingAppId:Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v3

    const-string v4, "group_info"

    invoke-interface {v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4307
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4308
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_name_summary"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 4309
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4310
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 4311
    .local v10, groupCounts:I
    if-eqz v9, :cond_2

    .line 4313
    :try_start_0
    const-string v2, "summ_count"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 4314
    .local v7, countIdx:I
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4315
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 4316
    .local v8, counts:I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4317
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4318
    add-int/lit8 v10, v10, 0x1

    .line 4319
    goto :goto_1

    .line 4321
    .end local v8           #counts:I
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4325
    .end local v7           #countIdx:I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    .line 4326
    .local v11, size:I
    if-lez v11, :cond_3

    .line 4327
    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4330
    :cond_3
    const-string v2, "total_group"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4331
    const-string v2, "group_count"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4338
    invoke-static {v12}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 4340
    invoke-virtual {v12}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 4321
    .end local v11           #size:I
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static userProfiling_Contact_View_Option([Ljava/lang/String;[Ljava/lang/Boolean;)V
    .locals 4
    .parameter "keys"
    .parameter "values"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4254
    sget-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-nez v2, :cond_0

    .line 4272
    :goto_0
    return-void

    .line 4259
    :cond_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 4262
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    sget-object v2, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "contact_view_option"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 4264
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4268
    :cond_1
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 4271
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0
.end method

.method public static userProfiling_Detail_Tab_Switch([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "keys"
    .parameter "values"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4276
    sget-boolean v2, Lcom/android/htccontacts/util/ContactsUtils;->sIsProfilingEnabled:Z

    if-nez v2, :cond_0

    .line 4294
    :goto_0
    return-void

    .line 4281
    :cond_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 4284
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    sget-object v2, Lcom/android/htccontacts/util/ContactsUtils;->userProfilingAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "detail_tab_switch"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4285
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 4286
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 4285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4290
    :cond_1
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 4293
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0
.end method
