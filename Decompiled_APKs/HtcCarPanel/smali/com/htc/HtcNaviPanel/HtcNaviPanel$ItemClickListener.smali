.class Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;
.super Ljava/lang/Object;
.source "HtcNaviPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/HtcNaviPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;


# direct methods
.method constructor <init>(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/16 v3, 0x5a

    .line 373
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mAppId:[I
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$200(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)[I

    move-result-object v2

    aget v2, v2, p3

    packed-switch v2, :pswitch_data_0

    .line 456
    :goto_0
    return-void

    .line 375
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.footprints.activity.FootprintRouteActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$300(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcNaviPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Not Found, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v3, :cond_0

    .line 387
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #calls: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->launchVZNavigator()V
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$400(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    goto :goto_0

    .line 389
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    :try_start_1
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$300(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 393
    :catch_1
    move-exception v0

    .line 394
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcNaviPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Not Found, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v3, :cond_1

    .line 400
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.microsoft.mobileexperience.bing.VOICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_2
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$300(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 403
    :catch_2
    move-exception v0

    .line 404
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcNaviPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Not Found, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 407
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    :try_start_3
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$300(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 412
    :catch_3
    move-exception v0

    .line 413
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcNaviPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Not Found, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v3, :cond_2

    .line 419
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.microsoft.mobileexperiences.bing.Map"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "fromApp"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v2, "MapShortcut"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$300(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 429
    :catch_4
    move-exception v0

    .line 430
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcNaviPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Not Found, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 423
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.google.android.apps.maps"

    const-string v3, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 434
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_4
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #calls: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->chooseAndLaunchSearch()V
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$500(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)V

    goto/16 :goto_0

    .line 437
    :pswitch_5
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v2, :cond_3

    .line 438
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    invoke-virtual {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->finish()V

    .line 439
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mUiModeManager:Landroid/app/UiModeManager;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$600(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/app/UiModeManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/UiModeManager;->disableCarMode(I)V

    goto/16 :goto_0

    .line 445
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.android.htcdialer"

    const-string v3, "com.android.htcdialer.carhome.carhome"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    :try_start_5
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/HtcNaviPanel$ItemClickListener;->this$0:Lcom/htc/HtcNaviPanel/HtcNaviPanel;

    #getter for: Lcom/htc/HtcNaviPanel/HtcNaviPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/HtcNaviPanel/HtcNaviPanel;->access$300(Lcom/htc/HtcNaviPanel/HtcNaviPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 450
    :catch_5
    move-exception v0

    .line 451
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HtcNaviPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Not Found, : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
