.class public Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SwitchUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/psclient/SwitchUsbSettings;
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

.field final synthetic this$0:Lcom/htc/android/psclient/SwitchUsbSettings;


# direct methods
.method public constructor <init>(Lcom/htc/android/psclient/SwitchUsbSettings;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter "objects"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    .line 338
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$100(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->mContext:Landroid/content/Context;

    .line 339
    iput-object p4, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->listItem:[Ljava/lang/String;

    .line 340
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

    .line 343
    if-nez p2, :cond_0

    .line 344
    iget-object v7, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 345
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030002

    invoke-virtual {v2, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 347
    .end local v2           #mInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v7, 0x7f090011

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 348
    .local v4, text1:Landroid/widget/TextView;
    if-nez v4, :cond_2

    .line 349
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text1 = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v7, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    move-object p2, v6

    .line 422
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 353
    .restart local p2
    :cond_2
    const v7, 0x7f090012

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 354
    .local v5, text2:Landroid/widget/TextView;
    if-nez v5, :cond_3

    .line 355
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text2 = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v7, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    move-object p2, v6

    .line 357
    goto :goto_0

    .line 359
    :cond_3
    const v7, 0x7f09000f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 360
    .local v3, tb:Landroid/widget/ToggleButton;
    if-nez v3, :cond_4

    .line 361
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tb = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v7, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    move-object p2, v6

    .line 363
    goto :goto_0

    .line 365
    :cond_4
    const v7, 0x7f09000e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 366
    .local v0, icon:Landroid/widget/ImageView;
    if-nez v0, :cond_5

    .line 367
    invoke-static {}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "icon = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v7, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v7}, Lcom/htc/android/psclient/SwitchUsbSettings;->finish()V

    move-object p2, v6

    .line 369
    goto :goto_0

    .line 371
    :cond_5
    sget-boolean v6, Lcom/htc/android/psclient/PSCommon;->isChargeOrDiskSelected:Z

    if-eqz v6, :cond_6

    .line 372
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 380
    :goto_1
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->listItem:[Ljava/lang/String;

    aget-object v1, v6, p1

    .line 381
    .local v1, item:Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "HTC Sync"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 383
    const v6, 0x7f020009

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$500(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 385
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$600(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 386
    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 374
    .end local v1           #item:Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->button_id:I
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$1000(Lcom/htc/android/psclient/SwitchUsbSettings;)I

    move-result v6

    if-ne v6, p1, :cond_7

    .line 375
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 377
    :cond_7
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 387
    .restart local v1       #item:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Internet Sharing"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 388
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v6, v6, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v6}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 391
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 398
    :goto_2
    const v6, 0x7f07000d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 395
    :cond_9
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$500(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 396
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$600(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 399
    :cond_a
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Modem link"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 400
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    iget-object v6, v6, Lcom/htc/android/psclient/SwitchUsbSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v6}, Lcom/htc/android/psclient/PSCommon;->isHotspotEnabled(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 403
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 404
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    invoke-virtual {v3, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 410
    :goto_3
    const v6, 0x7f070010

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 407
    :cond_b
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$500(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 408
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$600(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 411
    :cond_c
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Media Sync"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 412
    const v6, 0x7f02000c

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$500(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 414
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$600(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 415
    const v6, 0x7f07000e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 416
    :cond_d
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->map:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$300(Lcom/htc/android/psclient/SwitchUsbSettings;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "Internet Pass Through"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 417
    const v6, 0x7f020008

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->viewColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$500(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 419
    iget-object v6, p0, Lcom/htc/android/psclient/SwitchUsbSettings$UsbListAdapter;->this$0:Lcom/htc/android/psclient/SwitchUsbSettings;

    #getter for: Lcom/htc/android/psclient/SwitchUsbSettings;->noteColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/htc/android/psclient/SwitchUsbSettings;->access$600(Lcom/htc/android/psclient/SwitchUsbSettings;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 420
    const v6, 0x7f070011

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
