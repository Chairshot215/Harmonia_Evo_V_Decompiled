.class Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;
.super Ljava/lang/Object;
.source "htcCheckinService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentalControlRunnable"
.end annotation


# instance fields
.field private mCallback:Lcom/android/providers/htcCheckin/IParentalControlCallback;

.field private mRequestingApp:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/htcCheckin/htcCheckinService;


# direct methods
.method public constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/IParentalControlCallback;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "callback"
    .parameter "requestingApp"

    .prologue
    .line 2353
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->mRequestingApp:Ljava/lang/String;

    .line 2354
    iput-object p2, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->mCallback:Lcom/android/providers/htcCheckin/IParentalControlCallback;

    .line 2355
    iput-object p3, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->mRequestingApp:Ljava/lang/String;

    .line 2356
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "parental_control_check_enabled"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2362
    .local v7, checkEnabledStr:Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v6, 0x1

    .line 2364
    .local v6, checkEnabled:Z
    :goto_0
    const/4 v14, 0x0

    .line 2365
    .local v14, parentalControlEnabled:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "parental_control_apps_list"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2369
    .local v4, appsToBlock:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->mRequestingApp:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    if-nez v4, :cond_7

    :cond_0
    const/4 v2, 0x1

    .line 2370
    .local v2, appBlocked:Z
    :goto_1
    if-nez v2, :cond_1

    .line 2371
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2372
    .local v3, apps:[Ljava/lang/String;
    move-object v5, v3

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v12, :cond_1

    aget-object v1, v5, v10

    .line 2373
    .local v1, app:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->mRequestingApp:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 2374
    const/4 v2, 0x1

    .line 2380
    .end local v1           #app:Ljava/lang/String;
    .end local v3           #apps:[Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    :cond_1
    if-eqz v2, :cond_5

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "parental_control_last_update"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2384
    .local v11, lastUpdate:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "parental_control_timeout_in_ms"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$HTCservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2388
    .local v8, duration:Ljava/lang/String;
    if-eqz v11, :cond_2

    if-nez v8, :cond_9

    :cond_2
    const/4 v13, 0x1

    .line 2389
    .local v13, need_update:Z
    :goto_3
    if-nez v13, :cond_3

    .line 2391
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    cmp-long v16, v16, v18

    if-lez v16, :cond_a

    const/4 v13, 0x1

    .line 2400
    :cond_3
    :goto_4
    if-eqz v13, :cond_4

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v16, v0

    #calls: Lcom/android/providers/htcCheckin/htcCheckinService;->updateParentalControlStatus()V
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$700(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    .line 2404
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "parental_control_enabled"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2410
    .end local v2           #appBlocked:Z
    .end local v4           #appsToBlock:Ljava/lang/String;
    .end local v8           #duration:Ljava/lang/String;
    .end local v11           #lastUpdate:Ljava/lang/String;
    .end local v13           #need_update:Z
    :cond_5
    if-nez v14, :cond_b

    .line 2412
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->mCallback:Lcom/android/providers/htcCheckin/IParentalControlCallback;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Lcom/android/providers/htcCheckin/IParentalControlCallback;->onResult(Lcom/google/android/net/ParentalControlState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2431
    :goto_5
    return-void

    .line 2362
    .end local v6           #checkEnabled:Z
    .end local v14           #parentalControlEnabled:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2369
    .restart local v4       #appsToBlock:Ljava/lang/String;
    .restart local v6       #checkEnabled:Z
    .restart local v14       #parentalControlEnabled:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2372
    .restart local v1       #app:Ljava/lang/String;
    .restart local v2       #appBlocked:Z
    .restart local v3       #apps:[Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2388
    .end local v1           #app:Ljava/lang/String;
    .end local v3           #apps:[Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .restart local v8       #duration:Ljava/lang/String;
    .restart local v11       #lastUpdate:Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    goto :goto_3

    .line 2391
    .restart local v13       #need_update:Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_4

    .line 2392
    :catch_0
    move-exception v9

    .line 2396
    .local v9, e:Ljava/lang/NumberFormatException;
    const/4 v13, 0x1

    goto :goto_4

    .line 2419
    .end local v2           #appBlocked:Z
    .end local v4           #appsToBlock:Ljava/lang/String;
    .end local v8           #duration:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v11           #lastUpdate:Ljava/lang/String;
    .end local v13           #need_update:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/htcCheckin/htcCheckinService$ParentalControlRunnable;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v16 .. v16}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "parental_control_redirect_url"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2431
    .local v15, redirectUrl:Ljava/lang/String;
    goto :goto_5

    .line 2413
    .end local v15           #redirectUrl:Ljava/lang/String;
    :catch_1
    move-exception v16

    goto :goto_5
.end method
