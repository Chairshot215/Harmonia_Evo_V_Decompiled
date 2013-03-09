.class Lcom/google/android/talk/FeatureManager$SetFeaturesTask;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFeaturesTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;
    }
.end annotation


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mDoneRunnable:Ljava/lang/Runnable;

.field private final mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "doneRunnable"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;-><init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    .line 219
    iput-object p1, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    .line 220
    iput-object p4, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;

    .line 221
    iput-wide p2, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "context"
    .parameter "doneRunnable"

    .prologue
    .line 215
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;-><init>(Landroid/content/Context;JLjava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mDoneRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected doInBackground()V
    .locals 17

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    #calls: Lcom/google/android/talk/FeatureManager;->determineDeviceCapabilities(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$200(Landroid/content/Context;)Lcom/google/android/talk/FeatureManager$DeviceCapabilities;

    move-result-object v3

    .line 242
    .local v3, deviceCaps:Lcom/google/android/talk/FeatureManager$DeviceCapabilities;
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    :goto_0
    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$302(Z)Z

    .line 243
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$402(Z)Z

    .line 248
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_enable_video"

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$302(Z)Z

    .line 251
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-nez v13, :cond_0

    .line 252
    const-string v13, "talk"

    const-string v14, "GServices override - disabling video chat"

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_enable_audio"

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$402(Z)Z

    .line 259
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v13

    if-nez v13, :cond_1

    .line 260
    const-string v13, "talk"

    const-string v14, "GServices override - disabling voice chat"

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_1
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v6

    .line 271
    .local v6, maxIncomingVideoSpec:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v7

    .line 272
    .local v7, maxOutgoingSpecNoEffects:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v8

    .line 274
    .local v8, maxOutgoingSpecWithEffects:Lcom/google/android/videochat/VideoSpecification;
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_go_hvga"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, hvgaSetting:Ljava/lang/String;
    const/4 v10, 0x1

    .line 278
    .local v10, readOverrides:Z
    const/4 v12, 0x0

    .line 279
    .local v12, useHVGA:Z
    const-string v13, "true"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 280
    const/4 v12, 0x1

    .line 281
    const/4 v10, 0x0

    .line 288
    :cond_2
    :goto_1
    if-eqz v12, :cond_b

    .line 289
    const-string v13, "off"

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$700()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v6

    .line 291
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$700()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v7

    .line 292
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$500()Lcom/google/android/videochat/VideoSpecification;

    move-result-object v8

    .line 328
    :cond_3
    :goto_2
    iget v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mEffectsEnabledMask:I

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$802(I)I

    .line 331
    const/4 v9, 0x0

    .line 334
    .local v9, policyDisableMask:I
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mMulticore:Z

    if-nez v13, :cond_4

    .line 335
    const v9, 0x7fffffff

    .line 339
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 340
    or-int/lit8 v9, v9, 0x2

    .line 344
    :cond_5
    if-eqz v9, :cond_6

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_effects_enabled_mask"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v9, v13

    .line 348
    :cond_6
    xor-int/lit8 v13, v9, -0x1

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$872(I)I

    .line 354
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$800()I

    move-result v13

    if-eqz v13, :cond_7

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_effects_disabled_mask"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    xor-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$872(I)I

    .line 362
    .end local v4           #hvgaSetting:Ljava/lang/String;
    .end local v9           #policyDisableMask:I
    .end local v10           #readOverrides:Z
    .end local v12           #useHVGA:Z
    :cond_7
    invoke-static {v6}, Lcom/google/android/videochat/VideoSpecification;->setMaxIncoming(Lcom/google/android/videochat/VideoSpecification;)V

    .line 363
    invoke-static {v7}, Lcom/google/android/videochat/VideoSpecification;->setMaxOutgoingNoEffects(Lcom/google/android/videochat/VideoSpecification;)V

    .line 364
    invoke-static {v8}, Lcom/google/android/videochat/VideoSpecification;->setMaxOutgoingWithEffects(Lcom/google/android/videochat/VideoSpecification;)V

    .line 366
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "is armv7: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mArmv7:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has NEON: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "supported front camera: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mFrontCamera:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "has opengl2: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-boolean v15, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mGlv2:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v13, "talk"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "effects enabled mask: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$800()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v14, "talk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video chat support is "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$300()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "enabled"

    :goto_3
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v14, "talk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "audio chat support is "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/google/android/talk/FeatureManager;->access$400()Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "enabled"

    :goto_4
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_11

    .line 377
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mAccountId:J

    #calls: Lcom/google/android/talk/FeatureManager;->setAccountFeatures(J)V
    invoke-static {v13, v14}, Lcom/google/android/talk/FeatureManager;->access$900(J)V

    .line 384
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mHandler:Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$myHandler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void

    .line 242
    .end local v6           #maxIncomingVideoSpec:Lcom/google/android/videochat/VideoSpecification;
    .end local v7           #maxOutgoingSpecNoEffects:Lcom/google/android/videochat/VideoSpecification;
    .end local v8           #maxOutgoingSpecWithEffects:Lcom/google/android/videochat/VideoSpecification;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 282
    .restart local v4       #hvgaSetting:Ljava/lang/String;
    .restart local v6       #maxIncomingVideoSpec:Lcom/google/android/videochat/VideoSpecification;
    .restart local v7       #maxOutgoingSpecNoEffects:Lcom/google/android/videochat/VideoSpecification;
    .restart local v8       #maxOutgoingSpecWithEffects:Lcom/google/android/videochat/VideoSpecification;
    .restart local v10       #readOverrides:Z
    .restart local v12       #useHVGA:Z
    :cond_a
    const-string v13, "auto"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 283
    const/4 v10, 0x0

    .line 284
    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mMulticore:Z

    if-eqz v13, :cond_2

    iget-boolean v13, v3, Lcom/google/android/talk/FeatureManager$DeviceCapabilities;->mHasNEON:Z

    if-eqz v13, :cond_2

    .line 285
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 294
    :cond_b
    const-string v13, "low"

    invoke-static {v13}, Lcom/google/android/talk/FeatureManager;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    if-eqz v10, :cond_3

    .line 297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_default_fx"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, s:Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 300
    invoke-static {v11}, Lcom/google/android/talk/FeatureManager;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_max_in_vid"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 304
    if-eqz v11, :cond_d

    .line 305
    invoke-static {v11}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v6

    .line 307
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_max_out_nofx_vid"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 309
    if-eqz v11, :cond_e

    .line 310
    invoke-static {v11}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v7

    .line 312
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "gtalk_vc_max_out_fx_vid"

    invoke-static {v13, v14}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 314
    if-eqz v11, :cond_3

    .line 315
    invoke-static {v11}, Lcom/google/android/videochat/VideoSpecification;->getFromString(Ljava/lang/String;)Lcom/google/android/videochat/VideoSpecification;

    move-result-object v8

    goto/16 :goto_2

    .line 371
    .end local v4           #hvgaSetting:Ljava/lang/String;
    .end local v10           #readOverrides:Z
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #useHVGA:Z
    :cond_f
    const-string v13, "disabled"

    goto/16 :goto_3

    .line 373
    :cond_10
    const-string v13, "disabled"

    goto/16 :goto_4

    .line 379
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/FeatureManager$SetFeaturesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/talk/DatabaseUtils;->getAccountIds(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 380
    .local v1, accountId:J
    #calls: Lcom/google/android/talk/FeatureManager;->setAccountFeatures(J)V
    invoke-static {v1, v2}, Lcom/google/android/talk/FeatureManager;->access$900(J)V

    goto :goto_5
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/FeatureManager$SetFeaturesTask$1;-><init>(Lcom/google/android/talk/FeatureManager$SetFeaturesTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "SetFeaturesTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 234
    return-void
.end method
