.class public Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UsbConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/psclient/UsbConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsbListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field listItem:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/android/psclient/UsbConnectionSettings;


# direct methods
.method public constructor <init>(Lcom/htc/android/psclient/UsbConnectionSettings;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter "objects"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    .line 384
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$100(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->mContext:Landroid/content/Context;

    .line 385
    iput-object p4, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->listItem:[Ljava/lang/String;

    .line 386
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "view"
    .parameter "viewgroup"

    .prologue
    const v11, 0x7f02000b

    const/4 v6, 0x0

    const v10, -0x555556

    const/4 v9, 0x0

    .line 389
    if-nez p2, :cond_0

    .line 390
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 391
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030002

    invoke-virtual {v2, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 393
    .end local v2           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v7, 0x7f090011

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 394
    .local v4, text1:Landroid/widget/TextView;
    if-nez v4, :cond_2

    .line 395
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text1 = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    move-object p2, v6

    .line 470
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 399
    .restart local p2
    :cond_2
    const v7, 0x7f090012

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 400
    .local v5, text2:Landroid/widget/TextView;
    if-nez v5, :cond_3

    .line 401
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text2 = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    move-object p2, v6

    .line 403
    goto :goto_0

    .line 405
    :cond_3
    const v7, 0x7f09000f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 406
    .local v3, tb:Landroid/widget/ToggleButton;
    if-nez v3, :cond_4

    .line 407
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "tb = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    move-object p2, v6

    .line 409
    goto :goto_0

    .line 411
    :cond_4
    const v7, 0x7f09000e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 412
    .local v0, icon:Landroid/widget/ImageView;
    if-nez v0, :cond_5

    .line 413
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "icon = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v7, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/UsbConnectionSettings;->finish()V

    move-object p2, v6

    .line 415
    goto :goto_0

    .line 417
    :cond_5
    sget-boolean v6, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    if-eqz v6, :cond_6

    .line 418
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 428
    :goto_1
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->listItem:[Ljava/lang/String;

    aget-object v1, v6, p1

    .line 429
    .local v1, item:Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "HTC Sync"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 431
    const v6, 0x7f020009

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 433
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 434
    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 420
    .end local v1           #item:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "button_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v8}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1100(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$000(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->button_id:I
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$1100(Lcom/htc/android/psclient/UsbConnectionSettings;)I

    move-result v6

    if-ne v6, p1, :cond_7

    .line 423
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 425
    :cond_7
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 435
    .restart local v1       #item:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Internet Sharing"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 436
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v6, v6, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v6}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 439
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 446
    :goto_2
    const v6, 0x7f07000d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 443
    :cond_9
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 444
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 447
    :cond_a
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Modem link"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 448
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    iget-object v6, v6, Lcom/htc/android/psclient/UsbConnectionSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v6}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 451
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 458
    :goto_3
    const v6, 0x7f070010

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 455
    :cond_b
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 456
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 459
    :cond_c
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Media Sync"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 460
    const v6, 0x7f02000c

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 462
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 463
    const v6, 0x7f07000e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 464
    :cond_d
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$700(Lcom/htc/android/psclient/UsbConnectionSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Internet Pass Through"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 465
    const v6, 0x7f020008

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 466
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$200(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 467
    iget-object v6, p0, Lcom/htc/android/psclient/UsbConnectionSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/UsbConnectionSettings;

    #getter for: Lcom/htc/android/psclient/UsbConnectionSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/UsbConnectionSettings;->access$300(Lcom/htc/android/psclient/UsbConnectionSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 468
    const v6, 0x7f070011

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
