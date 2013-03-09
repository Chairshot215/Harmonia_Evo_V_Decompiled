.class public Lcom/google/android/talk/videochat/CameraTracker;
.super Ljava/lang/Object;
.source "CameraTracker.java"


# instance fields
.field private mCameraIdList:[I

.field private mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

.field private mNumAvailableCameras:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CameraTracker;->inspectCameras(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private inspectCameras(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "gtalk_vc_force_camera_ids"

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, cameraIDOverride:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "gtalk_vc_force_camera_dimensions"

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, cameraSizesOverride:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 66
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, ids:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 68
    const-string v20, "talk"

    const-string v21, "Camera override empty, disabling"

    invoke-static/range {v20 .. v21}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v14           #ids:[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    if-eqz v20, :cond_1

    if-eqz v6, :cond_1

    .line 124
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, dimensions:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_8

    .line 126
    const-string v20, "talk"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Non-multiple of 2 length in gtalk_vc_force_camera_dimensions "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v8           #dimensions:[Ljava/lang/String;
    :cond_1
    return-void

    .line 70
    .restart local v14       #ids:[Ljava/lang/String;
    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    .line 71
    array-length v7, v14

    .line 72
    .local v7, count:I
    new-array v0, v7, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    .line 73
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    aget-object v15, v3, v12

    .line 75
    .local v15, idstring:Ljava/lang/String;
    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 76
    .local v13, id:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_3

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v21, v0

    aput v13, v20, v21

    .line 78
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v13           #id:I
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v9

    .line 81
    .local v9, ex:Ljava/lang/NumberFormatException;
    const-string v20, "talk"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bad id "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " in "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #ex:Ljava/lang/NumberFormatException;
    .end local v12           #i$:I
    .end local v14           #ids:[Ljava/lang/String;
    .end local v15           #idstring:Ljava/lang/String;
    .end local v16           #len$:I
    :cond_4
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 89
    .local v5, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    .line 90
    .restart local v7       #count:I
    new-array v0, v7, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    .line 91
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    .line 93
    const/4 v10, 0x0

    .local v10, facing:I
    :goto_2
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 94
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    if-ge v11, v7, :cond_7

    .line 95
    invoke-static {v11, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 96
    const/16 v17, 0x0

    .line 97
    .local v17, matched:Z
    packed-switch v10, :pswitch_data_0

    .line 109
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 111
    const/16 v17, 0x1

    .line 116
    :cond_5
    :goto_4
    if-eqz v17, :cond_6

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v21, v0

    aput v11, v20, v21

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    .line 94
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 99
    :pswitch_0
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 100
    const/16 v17, 0x1

    goto :goto_4

    .line 104
    :pswitch_1
    iget v0, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 105
    const/16 v17, 0x1

    goto :goto_4

    .line 93
    .end local v17           #matched:Z
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 130
    .end local v5           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    .end local v7           #count:I
    .end local v10           #facing:I
    .end local v11           #i:I
    .restart local v8       #dimensions:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    move/from16 v20, v0

    array-length v0, v8

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 131
    .local v19, usefulOverrides:I
    if-lez v19, :cond_1

    .line 132
    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/videochat/Size;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    .line 133
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    .line 134
    const/16 v18, 0x0

    .line 136
    .local v18, s:Lcom/google/android/videochat/Size;
    :try_start_1
    new-instance v18, Lcom/google/android/videochat/Size;

    .end local v18           #s:Lcom/google/android/videochat/Size;
    mul-int/lit8 v20, v11, 0x2

    aget-object v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    mul-int/lit8 v21, v11, 0x2

    add-int/lit8 v21, v21, 0x1

    aget-object v21, v8, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/videochat/Size;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .restart local v18       #s:Lcom/google/android/videochat/Size;
    :goto_6
    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/videochat/Size;->width:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/android/videochat/Size;->height:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 142
    :cond_9
    const/16 v18, 0x0

    .line 144
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    move-object/from16 v20, v0

    aput-object v18, v20, v11

    .line 133
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 138
    .end local v18           #s:Lcom/google/android/videochat/Size;
    :catch_1
    move-exception v9

    .line 139
    .restart local v9       #ex:Ljava/lang/NumberFormatException;
    const/16 v18, 0x0

    .restart local v18       #s:Lcom/google/android/videochat/Size;
    goto :goto_6

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public firstCamera()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNumAvailableCameras()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    return v0
.end method

.method public getOverrideSizeForCamera(I)Lcom/google/android/videochat/Size;
    .locals 1
    .parameter "id"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraSizeOverrides:[Lcom/google/android/videochat/Size;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public nextCamera(I)I
    .locals 4
    .parameter "id"

    .prologue
    const/4 v2, -0x1

    .line 25
    const/4 v0, -0x1

    .line 26
    .local v0, currIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    if-ge v1, v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 28
    move v0, v1

    .line 32
    :cond_0
    if-ne v0, v2, :cond_2

    .line 40
    :goto_1
    return v2

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 37
    iget v2, p0, Lcom/google/android/talk/videochat/CameraTracker;->mNumAvailableCameras:I

    if-ne v0, v2, :cond_3

    .line 38
    const/4 v0, 0x0

    .line 40
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraTracker;->mCameraIdList:[I

    aget v2, v2, v0

    goto :goto_1
.end method
