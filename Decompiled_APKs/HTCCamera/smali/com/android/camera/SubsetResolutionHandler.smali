.class public abstract Lcom/android/camera/SubsetResolutionHandler;
.super Ljava/lang/Object;
.source "SubsetResolutionHandler.java"

# interfaces
.implements Lcom/android/camera/IResolutionHandler;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private m_DefaultResolution:Lcom/android/camera/Resolution;

.field private m_DefaultResolutionWide:Lcom/android/camera/Resolution;

.field private m_MaxResolution:Lcom/android/camera/Resolution;

.field private m_MaxResolutionWide:Lcom/android/camera/Resolution;

.field private m_MinResolution:Lcom/android/camera/Resolution;

.field private m_MinResolutionWide:Lcom/android/camera/Resolution;

.field private final m_PreferenceKey:Ljava/lang/String;

.field private final m_Resolutions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->TAG:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/SubsetResolutionHandler;->m_PreferenceKey:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/PhotoModeHandler;->getDefaultResolutions(I)[Lcom/android/camera/Resolution;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SubsetResolutionHandler;->getMinimumResolutions()[Lcom/android/camera/Resolution;

    move-result-object v9

    const/4 v15, 0x0

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolution:Lcom/android/camera/Resolution;

    const/4 v15, 0x1

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolutionWide:Lcom/android/camera/Resolution;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SubsetResolutionHandler;->getMaximumResolutions()[Lcom/android/camera/Resolution;

    move-result-object v9

    const/4 v15, 0x0

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolution:Lcom/android/camera/Resolution;

    const/4 v15, 0x1

    aget-object v15, v9, v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolutionWide:Lcom/android/camera/Resolution;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolution:Lcom/android/camera/Resolution;

    if-nez v15, :cond_1

    const v7, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolutionWide:Lcom/android/camera/Resolution;

    if-nez v15, :cond_2

    const v8, 0x7fffffff

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolution:Lcom/android/camera/Resolution;

    if-nez v15, :cond_3

    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolutionWide:Lcom/android/camera/Resolution;

    if-nez v15, :cond_4

    const/4 v11, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v14

    array-length v6, v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_6

    aget-object v13, v2, v5

    invoke-virtual {v13}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v15

    invoke-virtual {v13}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v16

    mul-int v12, v15, v16

    invoke-virtual {v13}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v15

    if-eqz v15, :cond_5

    if-gt v12, v8, :cond_0

    if-lt v12, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v12, v4, :cond_0

    move v4, v12

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/SubsetResolutionHandler;->m_DefaultResolutionWide:Lcom/android/camera/Resolution;

    :cond_0
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolution:Lcom/android/camera/Resolution;

    invoke-virtual {v15}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolution:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v16

    mul-int v7, v15, v16

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolutionWide:Lcom/android/camera/Resolution;

    invoke-virtual {v15}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolutionWide:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v16

    mul-int v8, v15, v16

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolution:Lcom/android/camera/Resolution;

    invoke-virtual {v15}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolution:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v16

    mul-int v10, v15, v16

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolutionWide:Lcom/android/camera/Resolution;

    invoke-virtual {v15}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolutionWide:Lcom/android/camera/Resolution;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v16

    mul-int v11, v15, v16

    goto/16 :goto_3

    :cond_5
    if-gt v12, v7, :cond_0

    if-lt v12, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v12, v3, :cond_0

    move v3, v12

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/SubsetResolutionHandler;->m_DefaultResolution:Lcom/android/camera/Resolution;

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_DefaultResolution:Lcom/android/camera/Resolution;

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->TAG:Ljava/lang/String;

    const-string v16, "No default resolution"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->m_DefaultResolutionWide:Lcom/android/camera/Resolution;

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/SubsetResolutionHandler;->TAG:Ljava/lang/String;

    const-string v16, "No default resolution (wide)"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected getMaximumResolutions()[Lcom/android/camera/Resolution;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/Resolution;

    return-object v0
.end method

.method protected getMinimumResolutions()[Lcom/android/camera/Resolution;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/Resolution;

    return-object v0
.end method

.method public final getResolution(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;
    .locals 5

    iget-object v3, p0, Lcom/android/camera/SubsetResolutionHandler;->m_PreferenceKey:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, v0}, Lcom/android/camera/Resolution;->getResolution(Landroid/content/Context;Ljava/lang/String;)Lcom/android/camera/Resolution;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/camera/SubsetResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :goto_1
    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "pref_camera_image_ratio"

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/SubsetResolutionHandler;->m_DefaultResolutionWide:Lcom/android/camera/Resolution;

    :goto_2
    iget-object v3, p0, Lcom/android/camera/SubsetResolutionHandler;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/camera/SubsetResolutionHandler;->m_DefaultResolution:Lcom/android/camera/Resolution;

    goto :goto_2
.end method

.method public final getResolutionMenuItems(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/android/camera/SubsetResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/SubsetResolutionHandler;->m_Resolutions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/Resolution;

    new-instance v3, Lcom/android/camera/ResolutionMenuItem;

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getResolutionDescription()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/android/camera/ResolutionMenuItem;-><init>(Lcom/android/camera/Resolution;I)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getResolutionPreferenceKey(Lcom/android/camera/HTCCamera;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SubsetResolutionHandler;->m_PreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public final syncFromCurrentResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/Resolution;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    mul-int v3, v4, v5

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolutionWide:Lcom/android/camera/Resolution;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolutionWide:Lcom/android/camera/Resolution;

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_3

    move-object p2, v1

    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/camera/SubsetResolutionHandler;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/SubsetResolutionHandler;->m_MaxResolution:Lcom/android/camera/Resolution;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/SubsetResolutionHandler;->m_MinResolution:Lcom/android/camera/Resolution;

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    move-object p2, v2

    goto :goto_2
.end method
