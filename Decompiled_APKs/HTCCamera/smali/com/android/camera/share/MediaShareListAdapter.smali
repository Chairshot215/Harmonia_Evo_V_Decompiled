.class public Lcom/android/camera/share/MediaShareListAdapter;
.super Lcom/android/camera/share/MediaShareListAdapterBase;
.source "MediaShareListAdapter.java"


# static fields
.field public static final ACTION_USC_ONLINE_ALBUM:Ljava/lang/String; = "android.intent.action.USCSEND"

.field public static final APP_HTC_MESSAGE:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field public static final APP_ORANGE_PHOTO:Ljava/lang/String; = "com.newbay.pixota.Pixota"

.field public static final APP_TMOBILE_PHONE:Ljava/lang/String; = "com.htc.tmo.mediauploader.ui.TmoMediaUploadDialogActivity"

.field public static final APP_USC_ONLINE_ALBUM:Ljava/lang/String; = "com.htc.mmsmediaproxy.MMSMediaProxy"

.field public static final APP_VODAFONE:Ljava/lang/String; = "com.vodafone.people.engine.contents.photoshare.PhotoShareActivity"

.field public static final CID_ORANGE_ES:Ljava/lang/String; = "ORANG309"

.field public static final CID_ORANGE_PL:Ljava/lang/String; = "ORANGB10"

.field public static final EXPANDABLE_LIST_SIZE:I = 0x5

.field public static final PKG_NAME_HTC_RENREN:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final PKG_NAME_HTC_SINA:Ljava/lang/String; = "com.htc.socialnetwork.chinasns"

.field public static final PKG_NAME_HTC_SINAWEIBO:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field private static final TAG:Ljava/lang/String; = "MediaShareListAdapter"


# instance fields
.field private m_IsExpandable:Z

.field private m_IsExpanded:Z

.field private final m_LastShareAppName:Ljava/lang/String;

.field private final m_MediaInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/MediaInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/share/MediaShareListAdapterBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iput-object p3, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_LastShareAppName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/share/MediaShareListAdapter;->initializeAppInfos()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/share/MediaShareListAdapter;->sortAppInfos()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/share/MediaShareListAdapter;->sortAppInfosForDoubleShot()V

    goto :goto_0
.end method

.method private getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;
    .locals 3

    iget-boolean v1, p2, Lcom/android/camera/share/ExternalAppInfo;->isFake:Z

    if-nez v1, :cond_1

    iget-object v1, p2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAppInfoListSortKeys()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms.ui.ComposeMessageActivity"

    aput-object v1, v0, v2

    const-string v1, "com.htc.tmo.mediauploader.ui.TmoMediaUploadDialogActivity"

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcVF360Flag:Z

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.vodafone.people.engine.contents.photoshare.PhotoShareActivity"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeAppInfos()V
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x1

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/MediaInfo;

    iget-object v6, v9, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_5

    const-string v9, "android.intent.action.SEND"

    :goto_1
    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_6

    const-string v9, "android.intent.action.SEND"

    :goto_2
    invoke-static {v10, v9}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v9, "android.intent.action.USCSEND"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    const-string v10, "android.intent.action.USCSEND"

    invoke-static {v9, v10}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->removeMMS()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.SEND_MSG"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    const-string v10, "android.intent.action.SEND_MSG"

    invoke-static {v9, v10}, Lcom/android/camera/share/ExternalAppInfo;->fromResolveInfos(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v9, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v10, 0xa1

    if-ne v9, v10, :cond_4

    const-string v9, "image/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/share/ExternalAppInfo;

    iget-object v8, v1, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v8}, Landroid/content/pm/ResolveInfo;-><init>()V

    new-instance v9, Landroid/content/pm/ActivityInfo;

    invoke-direct {v9, v0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const v9, 0x7f0200ef

    iput v9, v8, Landroid/content/pm/ResolveInfo;->icon:I

    const v9, 0x7f0a0154

    iput v9, v8, Landroid/content/pm/ResolveInfo;->labelRes:I

    new-instance v9, Lcom/android/camera/share/ExternalAppInfo;

    const-string v10, "android.intent.action.SEND_MSG"

    invoke-direct {v9, v8, v10, v11}, Lcom/android/camera/share/ExternalAppInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Z)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-eqz v9, :cond_0

    iput-boolean v11, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    iput-boolean v13, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    goto/16 :goto_0

    :cond_5
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    goto/16 :goto_1

    :cond_6
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    goto/16 :goto_2

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/share/ExternalAppInfo;

    iget-object v9, v1, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v10, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private sortAppInfos()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoListSortKeys()[Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_LastShareAppName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    :goto_0
    if-ltz v8, :cond_0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/share/ExternalAppInfo;

    iget-object v0, v2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_LastShareAppName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_9

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0x71

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const-string v6, "com.newbay.pixota.Pixota"

    :cond_1
    :goto_1
    if-eqz v6, :cond_3

    const-string v18, "ro.cid"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    :goto_2
    if-ltz v8, :cond_3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/share/ExternalAppInfo;

    iget-object v0, v2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "ORANG309"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "ORANGB10"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    :goto_3
    if-le v8, v7, :cond_d

    add-int/lit8 v10, v8, -0x1

    :goto_4
    if-lt v10, v7, :cond_c

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/share/ExternalAppInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/share/ExternalAppInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-gez v18, :cond_4

    invoke-static {v3, v8, v10}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    :cond_6
    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    sget-short v18, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v19, 0xa1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const-string v6, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0a0154

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_7
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.USCSEND"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/camera/MediaInfo;

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/high16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const-string v6, "com.htc.mmsmediaproxy.MMSMediaProxy"

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2

    :cond_9
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    aget-object v14, v16, v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v10, v18, -0x1

    :goto_6
    if-lt v10, v7, :cond_a

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/share/ExternalAppInfo;

    iget-object v0, v2, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method private sortAppInfosForDoubleShot()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2070011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v4, v5, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_1
    if-le v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    iget-object v6, v0, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final createIntent(I)Landroid/content/Intent;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/share/ExternalAppInfo;

    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v17, 0x300

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/MediaInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v14, 0x0

    sget-boolean v17, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v17, :cond_5

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.socialnetwork.facebook"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "Launch_Service"

    const-string v18, "Facebook"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x1

    const-string v17, "MediaShareListAdapter"

    const-string v18, "Share - action name: htc.intent.action.SEND_MULTIPLE"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xa1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "image/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/android/camera/share/MediaShareListAdapter;->getActivityLabel(Landroid/content/pm/PackageManager;Lcom/android/camera/share/ExternalAppInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f0a0154

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string v17, "address"

    const-string v18, "4444"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_a

    if-nez v10, :cond_a

    const-string v17, "android.intent.extra.STREAM"

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    if-eqz v14, :cond_d

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/MediaInfo;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v17, "com.htc.opensense.upload.URI"

    iget-object v0, v12, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "com.htc.opensense.upload.MIMETYPE"

    iget-object v0, v12, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "com.htc.opensense.upload.TITLE"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "com.htc.opensense.upload.DESCRIPTION"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    sget-boolean v17, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v17, :cond_6

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.socialnetwork.flickr"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "Launch_Service"

    const-string v18, "Flickr"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x1

    const-string v17, "MediaShareListAdapter"

    const-string v18, "Share - action name: htc.intent.action.SEND_MULTIPLE"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-eqz v10, :cond_7

    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHTCMediaUploader()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v14, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_7
    sget-boolean v17, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-eqz v17, :cond_9

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.socialnetwork.chinasns"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v14, 0x1

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v17, "htc.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - isCHSCustomerUploadPkgName package name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    new-instance v17, Landroid/content/ComponentName;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/camera/share/ExternalAppInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - action name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - package name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "MediaShareListAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Share - class name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v11, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/share/MediaShareListAdapter;->m_MediaInfos:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/MediaInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    const-string v17, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_c
    const-string v17, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_f

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "image/jps"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "image/mpo"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_e
    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v17, "com.htc.album.actions.threedconvert"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    iget-object v0, v6, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v17, "SharedAdapter.KEY_CLASS_NAME"

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_f
    const/4 v9, 0x0

    goto :goto_5
.end method

.method public final expand()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final getAppInfo(I)Lcom/android/camera/share/ExternalAppInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/share/ExternalAppInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getAppInfoList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/share/MediaShareListAdapterBase;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/share/MediaShareListAdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/share/MediaShareListAdapterBase;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/share/MediaShareListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x2090071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x202001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x2080345

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x2020010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1040371

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/share/MediaShareListAdapterBase;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final isExpandable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpandable:Z

    return v0
.end method

.method public final isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/share/MediaShareListAdapter;->m_IsExpanded:Z

    return v0
.end method
