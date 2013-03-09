.class public Lcom/android/camera/HTCCameraAdvanceSetting;
.super Landroid/app/Activity;
.source "HTCCameraAdvanceSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCameraAdvanceSetting$Item;
    }
.end annotation


# static fields
.field static final PREF_VERSION_NAME:Ljava/lang/String; = "version"

.field static final PREF_VERSION_NO:I = 0x132b677

.field static final TAG:Ljava/lang/String; = "HTCCameraAdvanceSetting"

.field public static mIsInitZoom:Z

.field private static mIsSetDefault:Z

.field public static mZoomValue:I


# instance fields
.field MaxOfPage:I

.field isFilterListByCategory:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field mBackButton:Landroid/widget/Button;

.field mNextPageButton:Landroid/widget/ImageView;

.field mPageIndex:I

.field mPreferenceManager:Landroid/preference/PreferenceManager;

.field mPrevPageButton:Landroid/widget/ImageView;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z

    sput-boolean v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mBackButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mPrevPageButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mNextPageButton:Landroid/widget/ImageView;

    iput v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->MaxOfPage:I

    iput v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mPageIndex:I

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mAdapter:Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mPreferenceManager:Landroid/preference/PreferenceManager;

    iput-boolean v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting;->isFilterListByCategory:Z

    return-void
.end method

.method public static ContainsKey(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static checkPreferenceVersion(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Lcom/android/camera/CameraController;)Z
    .locals 10

    const v9, 0x132b677

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "checkPreferenceVersion - sp = null or editor = null"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :goto_0
    return v4

    :cond_1
    const-string v6, "version"

    const/4 v7, -0x1

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v9, :cond_2

    const-string v5, "HTCCameraAdvanceSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", not need to update"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "HTCCameraAdvanceSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "HTCCameraAdvanceSetting"

    const-string v7, "new version: 20100727"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v1, "null"

    const/4 v0, 0x0

    sparse-switch v3, :sswitch_data_0

    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "check version: unknown version no., reset to default"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    goto :goto_0

    :sswitch_0
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: no version no."

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_1
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100305"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_2
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100608"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_3
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100609"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_4
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100621"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :sswitch_5
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "update version: 20100726"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HTCCameraAdvanceSetting"

    const-string v6, "older version no., reset to default"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "HTCCameraAdvanceSetting"

    const-string v6, "final version: 20100727"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "version"

    invoke-interface {p1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x132b4d1 -> :sswitch_1
        0x132b600 -> :sswitch_2
        0x132b601 -> :sswitch_3
        0x132b60d -> :sswitch_4
        0x132b676 -> :sswitch_5
        0x132b677 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getFaceNumber(Landroid/app/Activity;)I
    .locals 3

    const-string v2, "pref_camera_face_number"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "1face"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "2faces"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getIsRecordWithAudio(Landroid/app/Activity;)Z
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_camera_record_with_audio"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "null"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HTCCameraAdvanceSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for the key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public static getRecordingLimit(Landroid/app/Activity;)I
    .locals 3

    const-string v2, "pref_camera_recording_limit"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string v2, "null"

    if-eq v1, v2, :cond_0

    const-string v2, "unlimited"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "250kb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "1mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const-string v2, "2mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const-string v2, "10s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    const-string v2, "30s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    const-string v2, "1min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x6

    goto :goto_0

    :cond_8
    const-string v2, "3min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static declared-synchronized initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z
    .locals 20

    const-class v16, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v16

    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const/4 v10, 0x0

    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-boolean v15, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z

    if-nez v15, :cond_2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_0

    move-object/from16 v0, p1

    invoke-static {v12, v3, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->checkPreferenceVersion(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Lcom/android/camera/CameraController;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v15, "HTCCameraAdvanceSetting"

    const-string v17, "not reset to default and preference existed"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x1

    :goto_0
    monitor-exit v16

    return v15

    :cond_0
    :try_start_1
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v17, "not reset to default, but no preference"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-class v17, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_white_balance"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_white_balance_2nd"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_self_timer"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_face_number"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_recording_limit"

    const-string v19, "unlimited"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    sget-short v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x38

    move/from16 v0, v18

    if-eq v15, v0, :cond_3

    const-string v15, "HTCCameraAdvanceSetting"

    const-string v18, "REVIEW_DURATION init - 3s"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_review_duration"

    const-string v19, "3s"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_3D_file_format"

    const-string v19, "mpo"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_video_file_format"

    const-string v19, "3gpp"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_capture_quality"

    const-string v19, "_super"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_capture_format_image"

    const-string v19, "jpeg"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_capture_format_video"

    const-string v19, "mpeg4"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    const-string v13, "sdcard"

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_storage_location"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1, v13}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_effect"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_video_effect"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_effect_2nd"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_flicker_adjustment"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_flash_mode"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_iso"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_scene"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_video_scene"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_brightness"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_contrast"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_saturation"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_shaprness"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "version"

    const v18, 0x132b677

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v11, :cond_5

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    invoke-virtual {v5}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->getItemName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->getItemValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v15, 0x0

    monitor-exit v17

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_2
    :try_start_4
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v17, "reset to default"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    :cond_3
    :try_start_5
    const-string v15, "HTCCameraAdvanceSetting"

    const-string v18, "REVIEW_DURATION init - no review"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_review_duration"

    const-string v19, "no_review"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_effect_manual"

    const-string v19, "none"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_white_balance_manual"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_iso_manual"

    const-string v19, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_brightness_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_contrast_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_saturation_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/camera/HTCCameraAdvanceSetting$Item;

    const-string v18, "pref_camera_sharpness_manual"

    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting$Item;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_5
    const-string v15, "pref_camera_timestamp"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v14

    const-string v15, "pref_camera_image_ratio"

    invoke-interface {v3, v15, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_camera_switch"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_front_camera_mode"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_face_detection"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->EnableGeoTagByDefault()Z

    move-result v15

    if-eqz v15, :cond_7

    const-string v15, "pref_camera_geo_tagging"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    :goto_4
    const-string v15, "pref_post_processing"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_stereo_recording"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_camera_auto_focus"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_play_shutter_sound"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_grid"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_camera_self_portrait"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_camera_record_with_audio"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_camera_3D_status"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_smile_capture"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_blink detection"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v15, "pref_fast_fps"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v15, "camera advance settnigs"

    const-string v18, "commit fail on writePreference"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    monitor-exit v17

    move v15, v10

    goto/16 :goto_0

    :cond_7
    const-string v15, "pref_camera_geo_tagging"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto/16 :goto_4
.end method

.method public static declared-synchronized isSetDefault()Z
    .locals 2

    const-class v0, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefault(Z)V
    .locals 2

    const-class v0, Lcom/android/camera/HTCCameraAdvanceSetting;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsSetDefault:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public static writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 7

    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference E"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    :cond_0
    :goto_1
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference X"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "HTCCameraAdvanceSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writePreference commit fail on setPreference: key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z
    .locals 7

    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference E"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "HTCCameraAdvanceSetting"

    const-string v5, "writePreference X"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception v0

    const-string v4, "HTCCameraAdvanceSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writePreference commit fail on setPreference: key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
