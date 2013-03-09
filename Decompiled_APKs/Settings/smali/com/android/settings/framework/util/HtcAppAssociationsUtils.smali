.class public Lcom/android/settings/framework/util/HtcAppAssociationsUtils;
.super Ljava/lang/Object;
.source "HtcAppAssociationsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfEnableMethod;,
        Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfCategory;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.providers.settings.HtcPreferredAppProvider"

.field private static final CATEGORY_PROJECTION:[Ljava/lang/String; = null

.field private static final CUSTOMER_ATT_LOCATION_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_ATT_MAP_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_AUDIO_DEFAULT_APP:Ljava/lang/String; = "com.htc.streamplayer"

.field private static final CUSTOMER_LOCATION_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_MAIL_DEFAULT_APP:Ljava/lang/String; = "com.htc.android.mail"

.field private static final CUSTOMER_MAP_DEFAULT_APP:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_PACKAGENAME_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final CUSTOMER_PACKAGENAME_GOOGLE_MAPS:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final CUSTOMER_PACKAGENAME_HTC_MAIL:Ljava/lang/String; = "com.htc.android.mail"

.field private static final CUSTOMER_PACKAGENAME_HTC_PEOPLE:Ljava/lang/String; = "com.android.htccontacts"

.field private static final CUSTOMER_PACKAGENAME_HTC_STREAM_PLAYER:Ljava/lang/String; = "com.htc.streamplayer"

.field private static final CUSTOMER_PHONE_DEFAULT_APP:Ljava/lang/String; = "com.android.htccontacts"

.field private static final CUSTOMER_STREAM_DEFAULT_APP:Ljava/lang/String; = "com.htc.streamplayer"

.field private static final CUSTOMER_VIDEO_DEFAULT_APP:Ljava/lang/String; = "com.htc.streamplayer"

.field private static final CUSTOMER_WEB_DEFAULT_APP:Ljava/lang/String; = "com.android.browser"

.field public static final FLAGS_CATEGORY_DEFAULT_ONLY:I = 0x10040

.field public static final FLAGS_NORMAL:I = 0x40

.field private static final LOGD:Z = true

.field private static final LOG_DEBUG:Z = false

.field public static final QUERY_FLAGS:I = 0x10040

.field private static final SIE_CUSTOMIZATION_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/application_PrimePreferredApp"

.field private static final SIE_FUNCTION_NAME:Ljava/lang/String; = "ActivitySelection"

.field private static final TAG:Ljava/lang/String; = "HtcAppAssociationsUtils (Settings)"

.field private static final VERSION:Ljava/lang/String; = "26.0"

.field private static mEnableAppAssociation:Z

.field private static mEnableMethod:I

.field private static sAllPreferredAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sLock2:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isEnabledBySIE()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->mEnableAppAssociation:Z

    .line 112
    invoke-static {}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getEnableMethod()I

    move-result v0

    sput v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->mEnableMethod:I

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "component_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2126
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2168
    return-void
.end method

.method private static checkExistPreferredPackage(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 8
    .parameter "context"
    .parameter "category"
    .parameter "component"

    .prologue
    const/4 v7, 0x1

    .line 2746
    const/4 v1, 0x0

    .line 2748
    .local v1, bResult:Z
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 2750
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2751
    :cond_0
    const/4 v1, 0x0

    .line 2768
    :cond_1
    :goto_0
    return v1

    .line 2754
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2756
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 2757
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2759
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_3

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_3

    .line 2761
    const/4 v1, 0x1

    .line 2763
    goto :goto_0

    .line 2756
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkExistPreferredPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "preferredPackageName"

    .prologue
    .line 2779
    const/4 v1, 0x0

    .line 2781
    .local v1, bResult:Z
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 2783
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2784
    :cond_0
    const/4 v1, 0x0

    .line 2800
    :cond_1
    :goto_0
    return v1

    .line 2787
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2789
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 2790
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2792
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2793
    const/4 v1, 0x1

    .line 2795
    goto :goto_0

    .line 2789
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkExistPreferredPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter "preferredPackageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2806
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 2827
    :cond_0
    :goto_0
    return v1

    .line 2810
    :cond_1
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2814
    const/4 v1, 0x0

    .line 2815
    .local v1, bResult:Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2817
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 2818
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2820
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    .line 2821
    const/4 v1, 0x1

    .line 2823
    goto :goto_0

    .line 2817
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1564
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1566
    return-void
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "flag"

    .prologue
    .line 1572
    const/4 v2, 0x1

    const/4 v3, -0x1

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 1575
    return-void
.end method

.method public static clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "flag"
    .parameter "category"
    .parameter "action"
    .parameter "actionPackageName"

    .prologue
    .line 1584
    const-string v8, " @@@@@ clearPackagePreferredActivities(): Enter. "

    invoke-static {v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 1585
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@                                  :        package= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 1602
    const/4 v1, 0x0

    .line 1603
    .local v1, callButton:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;
    const/4 v6, 0x0

    .line 1604
    .local v6, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, ""

    .line 1605
    .local v3, callButtonPreferredComponentName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1607
    .local v0, bResetCallButton:Z
    const/4 v8, 0x3

    if-ne p3, v8, :cond_3

    .line 1609
    if-nez v1, :cond_0

    .line 1611
    new-instance v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;

    .end local v1           #callButton:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;
    invoke-direct {v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;-><init>()V

    .line 1614
    .restart local v1       #callButton:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->queryActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 1615
    invoke-virtual {v1, p0, v6, p5}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->checkPackageNameInQueryActivities(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    .line 1617
    if-eqz p4, :cond_1

    const-string v8, ""

    invoke-virtual {v8, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1618
    :cond_1
    const/4 v0, 0x1

    .line 1621
    :cond_2
    invoke-virtual {v1, p0, v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->getPreferredComponentName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 1627
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1644
    const/4 v8, 0x3

    if-ne p3, v8, :cond_4

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    .line 1646
    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    const-string v8, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1649
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1652
    .local v2, callButtonPreferredComponent:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1653
    invoke-virtual {v1, p0, v6, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForCallButton;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 1662
    .end local v2           #callButtonPreferredComponent:Landroid/content/ComponentName;
    :cond_4
    if-eqz p2, :cond_6

    .line 1663
    const-string v8, " @@@@@ clearPackagePreferredActivities(): clear package name without reset other category"

    invoke-static {v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 1758
    :cond_5
    return-void

    .line 1667
    :cond_6
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    .line 1669
    const/4 v7, 0x0

    .line 1671
    .local v7, tempCategory:I
    const/16 v7, 0x8

    .line 1672
    :goto_0
    const/4 v8, 0x1

    if-lt v7, v8, :cond_5

    .line 1676
    sget-object v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1678
    .local v5, componmentName:Ljava/lang/String;
    if-eqz v5, :cond_7

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1680
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1683
    .local v4, component:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1685
    const/4 v8, 0x0

    invoke-static {p0, v4, v7, v8}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1673
    .end local v4           #component:Landroid/content/ComponentName;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method private static getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 2950
    const/4 v6, 0x0

    .line 2953
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2954
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2960
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2961
    :cond_0
    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2997
    :goto_0
    if-eqz v6, :cond_1

    .line 2998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2999
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_1
    const/4 v6, 0x0

    .line 3007
    :cond_1
    return-void

    .line 2965
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2971
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2975
    :cond_3
    const-string v1, "category"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2976
    .local v8, columnIdIndex:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2978
    .local v7, category:I
    const v1, 0x90001

    if-ge v7, v1, :cond_4

    .line 2980
    const-string v1, "component_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2981
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2983
    .local v9, componentName:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    .end local v9           #componentName:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 2989
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #category:I
    .end local v8           #columnIdIndex:I
    :catch_0
    move-exception v10

    .line 2990
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    const-string v2, " @@@@@  ERROR: getAllPreferredXXXXXByDB(): failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2994
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2997
    .restart local v9       #componentName:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 2998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2997
    .end local v9           #componentName:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 2998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2999
    const/4 v6, 0x0

    .line 2997
    :cond_5
    throw v1
.end method

.method public static getAudioPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1190
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCategoryByDatabase(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "componentName"

    .prologue
    .line 3073
    const/4 v0, -0x1

    return v0
.end method

.method public static getCategoryString(I)Ljava/lang/String;
    .locals 1
    .parameter "category"

    .prologue
    .line 2652
    packed-switch p0, :pswitch_data_0

    .line 2678
    const-string v0, "UNKNOWN CATEGORY"

    :goto_0
    return-object v0

    .line 2654
    :pswitch_0
    const-string v0, "Web category"

    goto :goto_0

    .line 2657
    :pswitch_1
    const-string v0, "Mail category"

    goto :goto_0

    .line 2660
    :pswitch_2
    const-string v0, "Phone category"

    goto :goto_0

    .line 2663
    :pswitch_3
    const-string v0, "Map category"

    goto :goto_0

    .line 2666
    :pswitch_4
    const-string v0, "Location category"

    goto :goto_0

    .line 2669
    :pswitch_5
    const-string v0, "Stream category"

    goto :goto_0

    .line 2672
    :pswitch_6
    const-string v0, "Audio category"

    goto :goto_0

    .line 2675
    :pswitch_7
    const-string v0, "Video category"

    goto :goto_0

    .line 2652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static getEnableMethod()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2924
    :try_start_0
    const-string v3, "ro.da1.method"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2927
    .local v1, method:I
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @@@@@ method = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2937
    .end local v1           #method:I
    :goto_0
    return v1

    .line 2932
    .restart local v1       #method:I
    :catch_0
    move-exception v0

    .line 2933
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v4, " @@@@@  ERROR: getEnableMethod() failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 2937
    goto :goto_0
.end method

.method public static getIntentFilter(I)Landroid/content/IntentFilter;
    .locals 4
    .parameter "category"

    .prologue
    .line 2294
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2297
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2298
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2300
    packed-switch p0, :pswitch_data_0

    .line 2376
    const/4 v1, 0x0

    .line 2380
    :goto_0
    return-object v1

    .line 2302
    :pswitch_0
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2303
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2304
    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2313
    :pswitch_1
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2315
    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2324
    :pswitch_2
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2327
    const-string v2, "tel"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2331
    :pswitch_3
    const-string v2, "geo"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2335
    :pswitch_4
    const-string v2, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2336
    const-string v2, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2337
    const-string v2, "http://maps.google.com/maps?"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2346
    :pswitch_5
    const-string v2, "rtsp"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 2352
    :pswitch_6
    :try_start_0
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2353
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2354
    :catch_0
    move-exception v0

    .line 2355
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    const-string v3, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2365
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_7
    :try_start_1
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2366
    const-string v2, "http"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2367
    :catch_1
    move-exception v0

    .line 2368
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    const-string v3, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2300
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
    .end packed-switch
.end method

.method public static getIntentFilterList(Ljava/util/List;I)Z
    .locals 5
    .parameter
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v3, 0x0

    .line 2385
    if-nez p0, :cond_0

    .line 2647
    :goto_0
    return v3

    .line 2395
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2398
    :pswitch_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2400
    .local v1, filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2401
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2402
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2403
    const-string v3, "http"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2404
    const-string v3, "https"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2406
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2647
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2412
    .end local v1           #filter1:Landroid/content/IntentFilter;
    :pswitch_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2414
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2415
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2416
    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2417
    const-string v3, "mailto"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2419
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2421
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2423
    .local v2, filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2424
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2425
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2426
    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2427
    const-string v3, "mailto"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2429
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2435
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2437
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2438
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2439
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2440
    const-string v3, "tel"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2442
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2444
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2446
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2447
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2448
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2449
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2450
    const-string v3, "tel"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2452
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2458
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2460
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2461
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2462
    const-string v3, "geo"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2464
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2466
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2468
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2469
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2470
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2471
    const-string v3, "geo"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2473
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2479
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2481
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2482
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2483
    const-string v3, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2484
    const-string v3, "http://maps.google.com/maps?q="

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2485
    const-string v3, "http://maps.google.com/maps?"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2487
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2489
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2491
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2492
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2493
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2494
    const-string v3, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2495
    const-string v3, "http://maps.google.com/maps?q="

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2496
    const-string v3, "http://maps.google.com/maps?"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2498
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2509
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2511
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2512
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2513
    const-string v3, "rtsp"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2515
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2517
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2519
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2520
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2521
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2522
    const-string v3, "rtsp"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2524
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2530
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2532
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2533
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2536
    :try_start_0
    const-string v3, "audio/*"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2537
    const-string v3, "http"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2544
    :goto_2
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2546
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2548
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2549
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2550
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2553
    :try_start_1
    const-string v3, "audio/*"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2554
    const-string v3, "http"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2561
    :goto_3
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2538
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 2539
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v4, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2555
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    :catch_1
    move-exception v0

    .line 2556
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v4, " @@@@@  ERROR: getIntentFilter(): audio failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2567
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #filter1:Landroid/content/IntentFilter;
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :pswitch_7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2569
    .restart local v1       #filter1:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2570
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2573
    :try_start_2
    const-string v3, "video/*"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2574
    const-string v3, "http"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2581
    :goto_4
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2583
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2585
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2586
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2587
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2590
    :try_start_3
    const-string v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2591
    const-string v3, "http"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2598
    :goto_5
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2575
    .end local v2           #filter2:Landroid/content/IntentFilter;
    :catch_2
    move-exception v0

    .line 2576
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v4, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2592
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #filter2:Landroid/content/IntentFilter;
    :catch_3
    move-exception v0

    .line 2593
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v4, " @@@@@  ERROR: getIntentFilter(): video failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 2395
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
    .end packed-switch
.end method

.method public static getIntentList(Ljava/util/List;I)Z
    .locals 3
    .parameter
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 2174
    if-nez p0, :cond_0

    .line 2288
    :goto_0
    return v0

    .line 2178
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2180
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "https:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2288
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2194
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2206
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2218
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "geo:0,0?q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2225
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http://maps.google.com/maps?q="

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http://maps.google.com/maps?"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2254
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rtsp:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2261
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2268
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2178
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
    .end packed-switch
.end method

.method public static getLocationPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1180
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMailPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1165
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMapPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1175
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 2833
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v6, :cond_1

    .line 2861
    :cond_0
    :goto_0
    return-object v1

    .line 2837
    :cond_1
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2842
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 2843
    .local v4, size:I
    const/4 v1, 0x0

    .line 2845
    .local v1, component:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 2846
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2848
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v6, :cond_2

    .line 2851
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #component:Landroid/content/ComponentName;
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 2853
    .end local v1           #component:Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 2854
    .local v2, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 2857
    .restart local v1       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 2845
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getPhonePreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1170
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "category"
    .parameter "reAdd"

    .prologue
    .line 469
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .parameter "context"
    .parameter "category"
    .parameter "reAdd"
    .parameter "action"
    .parameter "actionPackageName"

    .prologue
    .line 480
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v6, " @@@@@ getPreferredActivity(): Enter."

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      category="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getCategoryString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      add="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v29, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    monitor-enter v29

    .line 487
    const/16 v24, 0x0

    .line 488
    .local v24, preferredPackageName:Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 496
    .local v4, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {p0 .. p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v23

    .line 499
    .local v23, preferredComponentName:Ljava/lang/String;
    if-eqz v23, :cond_2

    const-string v3, ""

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 502
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v6, " @@@@@ getPreferredActivity():      Go DB ------"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v22

    .line 509
    .local v22, preferredComponent:Landroid/content/ComponentName;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 511
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 514
    .local v5, tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_2

    .line 515
    const/4 v3, 0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 518
    :cond_0
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_1
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    monitor-exit v29

    .line 1002
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v22           #preferredComponent:Landroid/content/ComponentName;
    :goto_0
    return-object v25

    .line 562
    :cond_2
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v6, " @@@@@ getPreferredActivity():      Go PM.get ------"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 568
    .local v19, pm:Landroid/content/pm/PackageManager;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v20, pmFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v21, pmPrefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 575
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v18, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentList(Ljava/util/List;I)Z

    .line 578
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    .line 580
    .local v17, intent:Landroid/content/Intent;
    const/16 v16, 0x0

    .local v16, index:I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v26

    .local v26, size:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 621
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 631
    :try_start_1
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-lez v3, :cond_4

    .line 633
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "maps.google.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 639
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 641
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 644
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_4

    .line 646
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    .line 647
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_3
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    :try_start_2
    monitor-exit v29

    goto/16 :goto_0

    .line 1003
    .end local v4           #queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v16           #index:I
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #pmFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v21           #pmPrefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v23           #preferredComponentName:Ljava/lang/String;
    .end local v26           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 682
    .restart local v4       #queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #index:I
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v18       #intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v19       #pm:Landroid/content/pm/PackageManager;
    .restart local v20       #pmFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v21       #pmPrefActList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v23       #preferredComponentName:Ljava/lang/String;
    .restart local v26       #size:I
    :catch_0
    move-exception v15

    .line 683
    .local v15, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    .end local v15           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 687
    :cond_5
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 692
    :try_start_4
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/IntentFilter;

    .line 693
    .local v27, tempFilter:Landroid/content/IntentFilter;
    const/16 v28, 0x0

    .line 695
    .local v28, tempType:Ljava/lang/String;
    if-eqz v27, :cond_6

    .line 696
    invoke-virtual/range {v27 .. v27}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-lez v3, :cond_6

    .line 697
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v28

    .line 702
    :cond_6
    if-eqz v28, :cond_4

    const-string v3, "audio"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 705
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 707
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 710
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_4

    .line 712
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    .line 713
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_7
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v25

    :try_start_5
    monitor-exit v29

    goto/16 :goto_0

    .line 745
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v27           #tempFilter:Landroid/content/IntentFilter;
    .end local v28           #tempType:Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 746
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 750
    .end local v15           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v3, 0x8

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 755
    :try_start_6
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/IntentFilter;

    .line 756
    .restart local v27       #tempFilter:Landroid/content/IntentFilter;
    const/16 v28, 0x0

    .line 758
    .restart local v28       #tempType:Ljava/lang/String;
    if-eqz v27, :cond_9

    .line 759
    invoke-virtual/range {v27 .. v27}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-lez v3, :cond_9

    .line 760
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v28

    .line 765
    :cond_9
    if-eqz v28, :cond_4

    const-string v3, "video"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 768
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 770
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 773
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_4

    .line 775
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    .line 776
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_a
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v25

    :try_start_7
    monitor-exit v29

    goto/16 :goto_0

    .line 808
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    .end local v27           #tempFilter:Landroid/content/IntentFilter;
    .end local v28           #tempType:Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 809
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 832
    .end local v15           #e:Ljava/lang/Exception;
    :cond_b
    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v17, v0

    .line 854
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/IntentFilter;

    .line 855
    .restart local v27       #tempFilter:Landroid/content/IntentFilter;
    const/4 v14, 0x1

    .line 857
    .local v14, bMatch:Z
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    .line 863
    const/4 v14, 0x1

    .line 870
    :goto_3
    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    .line 872
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 874
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 877
    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    if-eqz v5, :cond_4

    .line 879
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    .line 880
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_c
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v25

    :try_start_9
    monitor-exit v29

    goto/16 :goto_0

    .line 867
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    :cond_d
    const/4 v14, 0x0

    goto :goto_3

    .line 917
    .end local v14           #bMatch:Z
    .end local v27           #tempFilter:Landroid/content/IntentFilter;
    :catch_3
    move-exception v15

    .line 918
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 934
    .end local v15           #e:Ljava/lang/Exception;
    :cond_e
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v6, " @@@@@ getPreferredActivity():      Go SIE"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByCustomer(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;

    move-result-object v25

    .line 945
    .local v25, sieComponentName:Ljava/lang/String;
    if-eqz v25, :cond_f

    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 946
    invoke-static/range {v25 .. v25}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .restart local v5       #tempComponent:Landroid/content/ComponentName;
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 948
    invoke-static/range {v3 .. v9}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    monitor-exit v29

    goto/16 :goto_0

    .line 966
    .end local v5           #tempComponent:Landroid/content/ComponentName;
    :cond_f
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v6, " @@@@@ getPreferredActivity():      Go PM.query ------"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 971
    if-eqz v4, :cond_10

    :try_start_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 973
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v13, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 974
    .local v13, ai:Landroid/content/pm/ActivityInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v3, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v8, component:Landroid/content/ComponentName;
    move-object/from16 v6, p0

    move-object v7, v4

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 980
    invoke-static/range {v6 .. v12}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " @@@@@ getPreferredActivity():      return package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v25

    .end local v25           #sieComponentName:Ljava/lang/String;
    :try_start_b
    monitor-exit v29

    goto/16 :goto_0

    .line 991
    .end local v8           #component:Landroid/content/ComponentName;
    .end local v13           #ai:Landroid/content/pm/ActivityInfo;
    .restart local v25       #sieComponentName:Ljava/lang/String;
    :catch_4
    move-exception v15

    .line 992
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 998
    .end local v15           #e:Ljava/lang/Exception;
    :cond_10
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v6, " @@@@@ getPreferredActivity():      NO package."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v25, ""

    .end local v25           #sieComponentName:Ljava/lang/String;
    monitor-exit v29
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method private static getPreferredComponentNameByCustomer(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "category"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p2, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1070
    :cond_0
    const-string v4, ""

    .line 1154
    :goto_0
    return-object v4

    .line 1073
    :cond_1
    const/4 v0, 0x0

    .line 1074
    .local v0, bHandle:Z
    const-string v3, ""

    .line 1077
    .local v3, tempPackageName:Ljava/lang/String;
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1078
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    .line 1079
    const-string v3, "com.google.android.apps.maps"

    .line 1080
    const/4 v0, 0x1

    .line 1094
    :goto_1
    if-nez v0, :cond_5

    .line 1095
    const/4 v0, 0x1

    .line 1097
    packed-switch p1, :pswitch_data_0

    .line 1131
    const/4 v0, 0x0

    .line 1133
    const-string v4, ""

    goto :goto_0

    .line 1082
    :cond_2
    const/4 v4, 0x5

    if-ne p1, v4, :cond_3

    .line 1083
    const-string v3, "com.google.android.apps.maps"

    .line 1084
    const/4 v0, 0x1

    goto :goto_1

    .line 1087
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1091
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1099
    :pswitch_0
    const-string v3, "com.android.browser"

    .line 1137
    :cond_5
    :goto_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    .line 1139
    if-eqz v3, :cond_6

    :try_start_0
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1140
    invoke-static {p2, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1143
    .local v2, tempComponent:Landroid/content/ComponentName;
    if-eqz v2, :cond_6

    .line 1144
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1103
    .end local v2           #tempComponent:Landroid/content/ComponentName;
    :pswitch_1
    const-string v3, "com.htc.android.mail"

    .line 1104
    goto :goto_2

    .line 1107
    :pswitch_2
    const-string v3, "com.android.htccontacts"

    .line 1108
    goto :goto_2

    .line 1111
    :pswitch_3
    const-string v3, "com.google.android.apps.maps"

    .line 1112
    goto :goto_2

    .line 1115
    :pswitch_4
    const-string v3, "com.google.android.apps.maps"

    .line 1116
    goto :goto_2

    .line 1119
    :pswitch_5
    const-string v3, "com.htc.streamplayer"

    .line 1120
    goto :goto_2

    .line 1123
    :pswitch_6
    const-string v3, "com.htc.streamplayer"

    .line 1124
    goto :goto_2

    .line 1127
    :pswitch_7
    const-string v3, "com.htc.streamplayer"

    .line 1128
    goto :goto_2

    .line 1147
    :catch_0
    move-exception v1

    .line 1148
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HtcAppAssociationsUtils (Settings)"

    const-string v5, " @@@@@ ERROR: get preferred app failed by Customer!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const-string v4, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1154
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    const-string v4, ""

    goto :goto_0

    .line 1097
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
    .end packed-switch
.end method

.method private static getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "category"

    .prologue
    .line 3018
    const/4 v6, 0x0

    .line 3021
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3022
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "category=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3028
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    .line 3029
    :cond_0
    const-string v8, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3051
    .local v8, componentName:Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_1

    .line 3052
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3053
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_1
    const/4 v6, 0x0

    .line 3062
    :cond_1
    return-object v8

    .line 3033
    .end local v8           #componentName:Ljava/lang/String;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3039
    const-string v1, "component_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 3040
    .local v7, columnIdIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8       #componentName:Ljava/lang/String;
    goto :goto_0

    .line 3043
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #columnIdIndex:I
    .end local v8           #componentName:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3044
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    const-string v2, " @@@@@  ERROR: getPreferredXXXXXByDB(): failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3048
    const-string v8, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3051
    .restart local v8       #componentName:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 3052
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3051
    .end local v8           #componentName:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 3052
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3053
    const/4 v6, 0x0

    .line 3051
    :cond_3
    throw v1
.end method

.method private static getPreferredComponentNameBySIE(Landroid/content/Context;ILjava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "category"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1012
    .local p2, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 1014
    .local v1, bHandle:Z
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSiePackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 1015
    .local v7, tempPackageName:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieClassName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1017
    .local v5, tempClassName:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1018
    :cond_0
    const-string v8, ""

    .line 1062
    :goto_0
    return-object v8

    .line 1021
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1022
    :cond_2
    const/4 v1, 0x0

    .line 1025
    :cond_3
    const/4 v8, 0x1

    if-nez v8, :cond_8

    .line 1027
    if-eqz v5, :cond_4

    :try_start_0
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1028
    :cond_4
    invoke-static {p2, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1031
    .local v6, tempComponent:Landroid/content/ComponentName;
    if-eqz v6, :cond_8

    .line 1032
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1036
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 1038
    .local v4, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_7

    .line 1039
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1041
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1042
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .restart local v6       #tempComponent:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1038
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1048
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_7
    invoke-static {p2, v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1051
    .restart local v6       #tempComponent:Landroid/content/ComponentName;
    if-eqz v6, :cond_8

    .line 1052
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 1055
    .end local v3           #i:I
    .end local v4           #size:I
    .end local v6           #tempComponent:Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 1056
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "HtcAppAssociationsUtils (Settings)"

    const-string v9, " @@@@@ ERROR: get preferred app failed by SIE!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string v8, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1062
    .end local v2           #e:Ljava/lang/Exception;
    :cond_8
    const-string v8, ""

    goto :goto_0
.end method

.method public static getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "urlData"

    .prologue
    .line 3179
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredComponentNameBySpecialCase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "urlData"
    .parameter "dataType"

    .prologue
    const/4 v9, 0x1

    .line 3187
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3188
    :cond_0
    const-string v3, ""

    .line 3261
    :goto_0
    return-object v3

    .line 3191
    :cond_1
    sget-object v8, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock2:Ljava/lang/Object;

    monitor-enter v8

    .line 3194
    const/4 v5, 0x0

    .line 3195
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_start_0
    const-string v3, ""

    .line 3196
    .local v3, componentName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 3197
    .local v6, urlDataLowerCase:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3200
    .local v1, category:I
    const-string v7, "//market.android.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eq v7, v9, :cond_2

    const-string v7, "//play.google.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-ne v7, v9, :cond_4

    .line 3202
    :cond_2
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;-><init>()V

    .line 3204
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 3205
    const v1, 0x90001

    .line 3232
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForMarket;
    :cond_3
    :goto_1
    if-eqz v5, :cond_9

    .line 3234
    new-instance v2, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 3240
    invoke-static {p0, v1, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3246
    :try_start_1
    monitor-exit v8

    goto :goto_0

    .line 3264
    .end local v1           #category:I
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componentName:Ljava/lang/String;
    .end local v6           #urlDataLowerCase:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 3207
    .restart local v1       #category:I
    .restart local v3       #componentName:Ljava/lang/String;
    .restart local v6       #urlDataLowerCase:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v7, "vzw:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v9, :cond_5

    .line 3208
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;-><init>()V

    .line 3210
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 3211
    const v1, 0x90003

    .line 3212
    goto :goto_1

    .line 3213
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVzwScheme;
    :cond_5
    const-string v7, "http:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v9, :cond_6

    const-string v7, "https:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v9, :cond_7

    :cond_6
    if-eqz p2, :cond_7

    const-string v7, "application/sdp"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_7

    .line 3216
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;-><init>()V

    .line 3218
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 3219
    const v1, 0x90004

    .line 3220
    goto :goto_1

    .line 3221
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForApplicationSDP;
    :cond_7
    const-string v7, "http:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eq v7, v9, :cond_8

    const-string v7, "https:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v9, :cond_3

    :cond_8
    if-eqz p2, :cond_3

    const-string v7, "application/vnd.apple.mpegurl"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_3

    .line 3224
    new-instance v0, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;

    invoke-direct {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;-><init>()V

    .line 3227
    .local v0, appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;
    invoke-virtual {v0, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;->getSpecificActivity(Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 3228
    const v1, 0x90005

    goto :goto_1

    .line 3254
    .end local v0           #appAssoc:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForVndAppleMpegurl;
    :cond_9
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3           #componentName:Ljava/lang/String;
    :try_start_3
    monitor-exit v8

    goto/16 :goto_0

    .line 3256
    .end local v1           #category:I
    .end local v6           #urlDataLowerCase:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 3257
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "HtcAppAssociationsUtils (Settings)"

    const-string v9, " @@@@@  ERROR: getPreferredXXXXXBySpecialCase(): failed!!!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    const-string v7, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 3261
    const-string v3, ""

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public static getStreamingLinkPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1185
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1195
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebPreferredActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 1160
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAboutPhoneEnabled()Z
    .locals 1

    .prologue
    .line 2715
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isAboutPhoneEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAboutPhoneEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 2720
    const/4 v0, 0x0

    .line 2722
    .local v0, bResult:Z
    invoke-static {}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isEnabledBySIE()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->mEnableAppAssociation:Z

    .line 2724
    sget-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->mEnableAppAssociation:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2725
    const/4 v0, 0x1

    .line 2732
    :goto_0
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@@@@ check about phone enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    return v0

    .line 2728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 2684
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 2690
    const/4 v0, 0x0

    .line 2692
    .local v0, bResult:Z
    invoke-static {}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->isEnabledBySIE()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->mEnableAppAssociation:Z

    .line 2694
    sget-boolean v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->mEnableAppAssociation:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2695
    sget v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->mEnableMethod:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2696
    const/4 v0, 0x0

    .line 2707
    :goto_0
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@@@@ check enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    return v0

    .line 2699
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2703
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnabledBySIE()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2905
    :try_start_0
    const-string v3, "ro.da1.enable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2908
    .local v0, da1:Z
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " @@@@@ enable by 2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2918
    .end local v0           #da1:Z
    :goto_0
    return v0

    .line 2913
    .restart local v0       #da1:Z
    :catch_0
    move-exception v1

    .line 2914
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    const-string v4, " @@@@@  ERROR: isEnabledBySIE() failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const-string v3, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 2918
    goto :goto_0
.end method

.method public static queryActivities(Landroid/content/Context;I)Ljava/util/List;
    .locals 16
    .parameter "context"
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " @@@@@ queryActivities(): category: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 220
    const/4 v11, 0x0

    .line 221
    .local v11, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v3, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 224
    .local v10, pm:Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentList(Ljava/util/List;I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 225
    const/4 v7, 0x0

    .line 371
    :goto_0
    return-object v7

    .line 228
    :cond_0
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 238
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v7, outputList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .line 241
    .local v13, size:I
    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 242
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    :cond_1
    const/4 v2, 0x1

    .line 246
    .local v2, i:I
    :goto_1
    if-ge v2, v13, :cond_6

    .line 249
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const v15, 0x10040

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 259
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 260
    .local v9, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 261
    .local v8, outputPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 263
    .local v1, bFind:Z
    const/4 v4, 0x0

    .line 264
    .local v4, j:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_4

    .line 267
    const/4 v1, 0x0

    .line 268
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 270
    const/4 v5, 0x0

    .line 271
    .local v5, k:I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_2

    .line 274
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 276
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 294
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 272
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 301
    .end local v5           #k:I
    :cond_4
    add-int/lit8 v14, v13, -0x1

    if-ge v2, v14, :cond_5

    .line 303
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 304
    invoke-interface {v11, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 305
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 247
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    .end local v1           #bFind:Z
    .end local v4           #j:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #outputPackageName:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_6
    new-instance v12, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 361
    .local v12, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method public static queryActivities(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 184
    const-string v7, " @@@@@ queryActivities()...2: "

    invoke-static {v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 188
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x10040

    invoke-virtual {v2, v7, v8, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 190
    .local v3, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move-object v3, v6

    .line 212
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    return-object v3

    .line 194
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    .restart local v3       #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    new-instance v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;

    invoke-direct {v5, p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;-><init>(Landroid/content/Context;)V

    .line 195
    .local v5, riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 198
    const-string v7, "HtcAppAssociationsUtils (Settings)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@ after query activities....2: size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 201
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    const-string v7, "HtcAppAssociationsUtils (Settings)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@@@@               package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    .end local v5           #riComparator:Lcom/android/settings/framework/util/HtcAppAssociationsUtils$ResolveInfoComparator;
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "HtcAppAssociationsUtils (Settings)"

    const-string v8, " @@@@@ ERROR: query activities....2 Failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v7, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v6

    .line 212
    goto :goto_0
.end method

.method public static queryAudioActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryLocationActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryMailActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryMapActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryPhoneActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryStreamingLinkActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryVideoActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static queryWebActivities(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static readSieClassName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 2025
    packed-switch p1, :pswitch_data_0

    .line 2051
    const-string v0, " @@@@@ readSieClassName(): Category not found!!!"

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 2055
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2027
    :pswitch_0
    const-string v0, "CATEGORY_WEB_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2030
    :pswitch_1
    const-string v0, "CATEGORY_MAIL_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2033
    :pswitch_2
    const-string v0, "CATEGORY_PHONE_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2036
    :pswitch_3
    const-string v0, "CATEGORY_MAP_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2039
    :pswitch_4
    const-string v0, "CATEGORY_LOCATION_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2042
    :pswitch_5
    const-string v0, "CATEGORY_STREAM_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2045
    :pswitch_6
    const-string v0, "CATEGORY_AUDIO_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2048
    :pswitch_7
    const-string v0, "CATEGORY_VIDEO_CLASS_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "key"

    .prologue
    const/4 v12, 0x0

    .line 2060
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @@@@@ readSieData() Enter. - key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 2062
    const/4 v9, 0x0

    .line 2065
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2067
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://customization_settings/SettingTable/application_PrimePreferredApp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2068
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2070
    if-nez v9, :cond_0

    move-object v2, v12

    .line 2122
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 2074
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 2075
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v2, v12

    .line 2076
    goto :goto_0

    .line 2080
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2082
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2083
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v2, v12

    .line 2084
    goto :goto_0

    .line 2087
    :cond_2
    const-string v2, "value"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2089
    .local v8, columnIndex:I
    const/4 v2, -0x1

    if-ne v8, v2, :cond_3

    .line 2090
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v2, v12

    .line 2091
    goto :goto_0

    .line 2095
    :cond_3
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 2097
    .local v6, blob:[B
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 2103
    .local v11, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    array-length v3, v6

    invoke-virtual {v11, v6, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2106
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2108
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2109
    .local v7, bundle:Landroid/os/Bundle;
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 2111
    const-string v2, "ActivitySelection"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2112
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #blob:[B
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v8           #columnIndex:I
    .end local v11           #parcel:Landroid/os/Parcel;
    :catch_0
    move-exception v10

    .line 2113
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    const-string v3, " @@@@@  ERROR: readSieData(): read data failed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2117
    if-eqz v9, :cond_4

    .line 2118
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2119
    const/4 v9, 0x0

    :cond_4
    move-object v2, v12

    .line 2122
    goto :goto_0
.end method

.method public static readSiePackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "category"

    .prologue
    .line 1990
    packed-switch p1, :pswitch_data_0

    .line 2016
    const-string v0, " @@@@@ readSiePackageName(): Category not found!!!"

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 2020
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1992
    :pswitch_0
    const-string v0, "CATEGORY_WEB_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1995
    :pswitch_1
    const-string v0, "CATEGORY_MAIL_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1998
    :pswitch_2
    const-string v0, "CATEGORY_PHONE_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2001
    :pswitch_3
    const-string v0, "CATEGORY_MAP_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2004
    :pswitch_4
    const-string v0, "CATEGORY_LOCATION_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2007
    :pswitch_5
    const-string v0, "CATEGORY_STREAM_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2010
    :pswitch_6
    const-string v0, "CATEGORY_AUDIO_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2013
    :pswitch_7
    const-string v0, "CATEGORY_VIDEO_PACKAGE_NAME"

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->readSieData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static refreshCache(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1761
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1762
    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1765
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1766
    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "reAdd"

    .prologue
    .line 1769
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1770
    return-void
.end method

.method public static refreshCache(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "reAdd"
    .parameter "action"

    .prologue
    .line 1783
    const/4 v1, 0x0

    .line 1784
    .local v1, category:I
    const/4 v0, 0x0

    .line 1786
    .local v0, bHavePackageName:Z
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1787
    :cond_0
    const/4 v0, 0x0

    .line 1793
    :goto_0
    const/16 v1, 0x8

    .line 1794
    :goto_1
    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 1797
    if-nez v0, :cond_2

    .line 1799
    sget-object v3, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1800
    :try_start_0
    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1801
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p0, v1, v2, p3, v3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1795
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1790
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1801
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1809
    :cond_2
    invoke-static {p0, v1, p2, p3, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1916
    :cond_3
    return-void
.end method

.method public static resetPackagePreferredActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1919
    const/4 v0, 0x0

    .line 1921
    .local v0, bHavePackageName:Z
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1922
    :cond_0
    const/4 v0, 0x0

    .line 1928
    :goto_0
    if-nez v0, :cond_3

    .line 1930
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->refreshCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1964
    :cond_1
    return-void

    .line 1925
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1934
    :cond_3
    const/4 v1, 0x0

    .line 1936
    .local v1, category:I
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    .line 1938
    const/16 v1, 0x8

    .line 1939
    :goto_1
    const/4 v4, 0x1

    if-lt v1, v4, :cond_1

    .line 1942
    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1944
    sget-object v4, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1946
    .local v3, componmentName:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1948
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1951
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1952
    sget-object v5, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1953
    :try_start_0
    const-string v4, ""

    invoke-static {p0, v1, v4}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1954
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    invoke-static {p0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    .line 1940
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #componmentName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1954
    .restart local v2       #component:Landroid/content/ComponentName;
    .restart local v3       #componmentName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1533
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1534
    return-void
.end method

.method public static setAudioPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1540
    const/4 v0, 0x7

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1542
    return-void
.end method

.method public static setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1507
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1508
    return-void
.end method

.method public static setLocationPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1514
    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1516
    return-void
.end method

.method public static setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1468
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1469
    return-void
.end method

.method public static setMailPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1475
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1477
    return-void
.end method

.method public static setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1494
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1495
    return-void
.end method

.method public static setMapPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1501
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1503
    return-void
.end method

.method public static setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1481
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1482
    return-void
.end method

.method public static setPhonePreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1488
    const/4 v0, 0x3

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1490
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "category"

    .prologue
    .line 1201
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1202
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "category"
    .parameter "flag"

    .prologue
    .line 1210
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V

    .line 1211
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZ)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "component"
    .parameter "category"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 1218
    .local p1, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method public static setPreferredActivity(Landroid/content/Context;Ljava/util/List;Landroid/content/ComponentName;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 24
    .parameter "context"
    .parameter
    .parameter "component"
    .parameter "category"
    .parameter "flag"
    .parameter "action"
    .parameter "actionPackageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1236
    .local p1, queryActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    sget-object v23, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sLock:Ljava/lang/Object;

    monitor-enter v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    const/16 v17, 0x0

    .line 1239
    .local v17, preferredComponent:Landroid/content/ComponentName;
    :try_start_1
    const-string v3, ""

    .line 1240
    .local v3, packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1242
    .local v9, bClear:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredComponentNameByDatabase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 1245
    .local v18, preferredComponentName:Ljava/lang/String;
    if-eqz v18, :cond_0

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1247
    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    .line 1250
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1261
    :cond_0
    if-eqz p4, :cond_1

    .line 1263
    if-eqz v18, :cond_7

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1264
    const-string v2, ""

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1265
    const/4 v9, 0x1

    .line 1278
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->clearPackagePreferredActivities(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v22

    .line 1288
    .local v22, tempComponentName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1291
    .local v21, tempComponent:Landroid/content/ComponentName;
    if-nez p1, :cond_8

    .line 1292
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->queryActivities(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v15

    .line 1298
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    if-eqz p6, :cond_2

    const-string v2, ""

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1299
    :cond_2
    move-object/from16 v21, p2

    .line 1316
    :cond_3
    :goto_2
    if-eqz v17, :cond_b

    .line 1317
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-ne v9, v2, :cond_5

    .line 1319
    :cond_4
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1326
    :cond_5
    :goto_3
    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v0, v2, :cond_c

    .line 1359
    new-instance v16, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;

    invoke-direct/range {v16 .. v16}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;-><init>()V

    .line 1362
    .local v16, phoneUtils:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;->setPreferredActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 1439
    .end local v16           #phoneUtils:Lcom/android/settings/framework/util/HtcAppAssociationsUtilsForPhone;
    :cond_6
    monitor-exit v23

    .line 1451
    .end local v3           #packageName:Ljava/lang/String;
    .end local v9           #bClear:Z
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17           #preferredComponent:Landroid/content/ComponentName;
    .end local v18           #preferredComponentName:Ljava/lang/String;
    .end local v21           #tempComponent:Landroid/content/ComponentName;
    .end local v22           #tempComponentName:Ljava/lang/String;
    :goto_4
    return-void

    .line 1268
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v9       #bClear:Z
    .restart local v17       #preferredComponent:Landroid/content/ComponentName;
    .restart local v18       #preferredComponentName:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto :goto_0

    .line 1295
    .restart local v21       #tempComponent:Landroid/content/ComponentName;
    .restart local v22       #tempComponentName:Ljava/lang/String;
    :cond_8
    move-object/from16 v15, p1

    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1

    .line 1302
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_a

    .line 1304
    move-object/from16 v0, p6

    invoke-static {v15, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getNewComponentByPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    .line 1306
    if-nez v21, :cond_3

    .line 1307
    move-object/from16 v21, p2

    goto :goto_2

    .line 1312
    :cond_a
    move-object/from16 v21, p2

    goto :goto_2

    .line 1323
    :cond_b
    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z

    goto :goto_3

    .line 1439
    .end local v3           #packageName:Ljava/lang/String;
    .end local v9           #bClear:Z
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18           #preferredComponentName:Ljava/lang/String;
    .end local v21           #tempComponent:Landroid/content/ComponentName;
    .end local v22           #tempComponentName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1441
    .end local v17           #preferredComponent:Landroid/content/ComponentName;
    :catch_0
    move-exception v11

    .line 1442
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    const-string v4, " @@@@@  setPreferredActivity(): FAIL!!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const-string v2, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1371
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v9       #bClear:Z
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17       #preferredComponent:Landroid/content/ComponentName;
    .restart local v18       #preferredComponentName:Ljava/lang/String;
    .restart local v21       #tempComponent:Landroid/content/ComponentName;
    .restart local v22       #tempComponentName:Ljava/lang/String;
    :cond_c
    if-eqz v15, :cond_d

    :try_start_3
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1373
    :cond_d
    if-nez v17, :cond_f

    .line 1374
    const/4 v2, 0x1

    new-array v10, v2, [Landroid/content/ComponentName;

    .line 1375
    .local v10, components:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    aput-object v21, v10, v2

    .line 1421
    :cond_e
    :goto_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1422
    .local v13, intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    move/from16 v0, p3

    invoke-static {v13, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getIntentFilterList(Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1423
    monitor-exit v23

    goto :goto_4

    .line 1379
    .end local v10           #components:[Landroid/content/ComponentName;
    .end local v13           #intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1380
    const/4 v2, 0x2

    new-array v10, v2, [Landroid/content/ComponentName;

    .line 1381
    .restart local v10       #components:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    aput-object v17, v10, v2

    .line 1382
    const/4 v2, 0x1

    aput-object v21, v10, v2

    goto :goto_5

    .line 1385
    .end local v10           #components:[Landroid/content/ComponentName;
    :cond_10
    const/4 v2, 0x1

    new-array v10, v2, [Landroid/content/ComponentName;

    .line 1386
    .restart local v10       #components:[Landroid/content/ComponentName;
    const/4 v2, 0x0

    aput-object v21, v10, v2

    goto :goto_5

    .line 1391
    .end local v10           #components:[Landroid/content/ComponentName;
    :cond_11
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    .line 1393
    .local v20, size:I
    move/from16 v0, v20

    new-array v10, v0, [Landroid/content/ComponentName;

    .line 1395
    .restart local v10       #components:[Landroid/content/ComponentName;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    move/from16 v0, v20

    if-ge v12, v0, :cond_e

    .line 1396
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1398
    .local v8, ai:Landroid/content/pm/ActivityInfo;
    new-instance v19, Landroid/content/ComponentName;

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .local v19, queryComponentName:Landroid/content/ComponentName;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " @@@@@  setPreferredActivity(): package="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->Log(Ljava/lang/String;)V

    .line 1407
    aput-object v19, v10, v12

    .line 1395
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1426
    .end local v8           #ai:Landroid/content/pm/ActivityInfo;
    .end local v12           #i:I
    .end local v19           #queryComponentName:Landroid/content/ComponentName;
    .end local v20           #size:I
    .restart local v13       #intentFilterList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    :cond_12
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 1428
    .local v14, intentFilterSize:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_7
    if-ge v12, v14, :cond_6

    .line 1429
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    const/high16 v5, 0x20

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v5, v10, v0}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1428
    add-int/lit8 v12, v12, 0x1

    goto :goto_7
.end method

.method public static setPreferredActivityWhenBootCompleted(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1969
    const/4 v0, 0x0

    .line 1971
    .local v0, category:I
    invoke-static {p0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getAllPreferredComponentNameByDatabase(Landroid/content/Context;)V

    .line 1973
    const/16 v0, 0x8

    .line 1974
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 1977
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->sAllPreferredAppMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1981
    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->getPreferredActivity(Landroid/content/Context;I)Ljava/lang/String;

    .line 1975
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1986
    :cond_2
    return-void
.end method

.method private static setPreferredComponentNameByDatabase(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 18
    .parameter "context"
    .parameter "category"
    .parameter "componentName"

    .prologue
    .line 3088
    if-nez p2, :cond_2

    .line 3089
    const-string v12, ""

    .line 3095
    .local v12, tempComponentName:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 3096
    .local v6, bResult:Z
    const/4 v7, 0x0

    .line 3099
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3100
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->CATEGORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "category=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v14, "%d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const-string v5, "id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3106
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3

    .line 3112
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v10, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3114
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "category"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3115
    const-string v1, "component_name"

    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3117
    sget-object v1, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3154
    :goto_1
    const/4 v6, 0x1

    .line 3165
    if-eqz v7, :cond_1

    .line 3166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3167
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v10           #cv:Landroid/content/ContentValues;
    :goto_2
    const/4 v7, 0x0

    .line 3175
    :cond_1
    return v6

    .line 3092
    .end local v6           #bResult:Z
    .end local v7           #c:Landroid/database/Cursor;
    .end local v12           #tempComponentName:Ljava/lang/String;
    :cond_2
    move-object/from16 v12, p2

    .restart local v12       #tempComponentName:Ljava/lang/String;
    goto :goto_0

    .line 3130
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #bResult:Z
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3136
    new-instance v10, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3139
    .restart local v10       #cv:Landroid/content/ContentValues;
    const-string v1, "component_name"

    invoke-virtual {v10, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    const-string v1, "id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 3142
    .local v9, columnIdIndex:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3143
    .local v8, columnId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/framework/util/HtcAppAssociationsUtils$IfColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 3146
    .local v13, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3156
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v8           #columnId:I
    .end local v9           #columnIdIndex:I
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v13           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 3157
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    const-string v2, " @@@@@  ERROR: setPreferredXXXXXByDB(): failed!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    const-string v1, "HtcAppAssociationsUtils (Settings)"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3161
    const/4 v6, 0x0

    .line 3165
    if-eqz v7, :cond_1

    .line 3166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 3165
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 3166
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3167
    const/4 v7, 0x0

    .line 3165
    :cond_4
    throw v1
.end method

.method public static setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1520
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1521
    return-void
.end method

.method public static setStreamingLinkPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1527
    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1529
    return-void
.end method

.method public static setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1546
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1547
    return-void
.end method

.method public static setVideoPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1553
    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1555
    return-void
.end method

.method public static setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "component"

    .prologue
    .line 1455
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 1456
    return-void
.end method

.method public static setWebPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "context"
    .parameter "component"
    .parameter "flag"

    .prologue
    .line 1462
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/framework/util/HtcAppAssociationsUtils;->setPreferredActivity(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    .line 1464
    return-void
.end method
